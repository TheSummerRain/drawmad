<?php

class EventsAction extends PublicAction{

	public function index(){
		
		$this->display();
	}

	public function sign(){

		$sqlX = 
		<<<SQL
		select a.*, b.username, b.nicheng, b.img 
from game_mad_user a
LEFT JOIN user_mad b on a.user_id = b.id
where a.mad_group = 1
SQL;
		$sqlY = 
		<<<SQL
		select a.*, b.username, b.nicheng, b.img 
from game_mad_user a
LEFT JOIN user_mad b on a.user_id = b.id
where a.mad_group = 2
SQL;
		$gameUserX = M()->query($sqlX);
		$gameUserY = M()->query($sqlY);

		$this->gameUserXNUM = count($gameUserX);
		$this->gameUserX = $gameUserX;
		$this->gameUserY = $gameUserY;
		$this->display();
	}
	
	public function eventsRelease(){

		//$dateNow = date('Y-m-d', time());
		$date = $_GET['date'];
		if($date == ''){
			$this->error('您好,本天比赛视频还没有发布。');
		}
		if($date == 'New'){
			$sqlhead = 
			<<<SQL
select * from game_mad_release_1 
order by date desc 
limit 0, 2
SQL;
			$eventsHead = M()->query($sqlhead);
			$this->dateLeft = $eventsHead[1]['id'];
		}else{
			$sqlhead = 
			<<<SQL
select * from (
select (@i:=@i+1)	as i,game_mad_release_1.* 
from game_mad_release_1,(select @i:=0) as it
ORDER BY date desc 
) a
where a.id = $date
SQL;
			$eventsHead = M()->query($sqlhead);
			$nunmber = $eventsHead[0]['i'];
			$nunmber2 = $nunmber+1;
			$nunmber3 = $nunmber-1;
			$sqlhead2 = 
			<<<SQL
select * from (
select (@i:=@i+1)	as i,game_mad_release_1.* 
from game_mad_release_1,(select @i:=0) as it
ORDER BY date desc 
) a 
where i = $nunmber2
SQL;
			
			$sqlhead3 = 
			<<<SQL
select * from (
select (@i:=@i+1)	as i,game_mad_release_1.* 
from game_mad_release_1,(select @i:=0) as it
ORDER BY date desc 
) a
where i = $nunmber3
SQL;
			$eventsHead2 = M()->query($sqlhead2)[0];
			$eventsHead3 = M()->query($sqlhead3)[0];

			$this->dateLeft = $eventsHead2['id'];
			$this->dateRight = $eventsHead3['id'];
		}
		

		if($eventsHead == null){
			$this->error('您好,本天比赛视频还没有发布。');
		}
		$head_id = $eventsHead[0]['id'];

		$sqlBody = 
		<<<SQL
select a.id,a.game_mad_user_id, a.head_id, aa.title as releaseTitle,
date_format(aa.date ,'%Y-%m-%d') as date, b.date_turn, c.nicheng, 
b.video_id, b.user_id, d.title, d.fengmian, b.mad_group,
bb.name as group_name
from 
game_mad_release_2 a
LEFT JOIN game_mad_release_1 aa on a.head_id = aa.id
LEFT JOIN game_mad_user b on a.game_mad_user_id = b.id
LEFT JOIN game_mad_group bb on b.mad_group = bb.id
LEFT JOIN user_mad c on b.user_id = c.id
LEFT JOIN video d on b.video_id = d.id

where a.head_id = $head_id
SQL;
		
		$sqlTD = 
		<<<SQL
select a.*, IFNULL(b.num, 0) as num
from game_mad_group a
LEFT JOIN (
select bb.name, count(bb.name) as num 
from 
game_mad_release_2 a
LEFT JOIN game_mad_user b on a.game_mad_user_id = b.id
LEFT JOIN game_mad_group bb on b.mad_group = bb.id
where a.head_id = $head_id
GROUP BY bb.name
) b on a.name = b.name
order by name 
SQL;
		
		$sqlVote = 
		<<<SQL
select c.name, b.mad_group, count(b.mad_group) as mad_group_num
from game_mad_user_vote a
LEFT JOIN game_mad_user b on a.game_mad_user_id = b.id
LEFT JOIN game_mad_group c on b.mad_group = c.id
GROUP BY b.mad_group
SQL;
		$eventsBody = M()->query($sqlBody);
		$eventsTD = M()->query($sqlTD);
		$eventVote = M()->query($sqlVote);

		$eventVote[1]['mad_group_num'] *= 1.5;//y组乘以1.5

		$this->dateNow = $date;
		$this->eventVote = $eventVote;
		$this->eventsHYJ = $eventsTD[2];
		$this->eventsTD = $eventsTD[3];
		$this->eventsBody = $eventsBody;
		$this->eventsHead = $eventsHead[0];
		$this->display();
	}

	public function operateDate($date){
		$date = explode('-', $date);
		if(strlen($date[1]) == 1){
			$date[1] = '0'.$date[1];
		}
		if(strlen($date[2]) == 1){
			$date[2] = '0'.$date[2];
		}
		$date = implode('-', $date);
		return $date;
	}

	public function eventsVote(){

		if($_POST['id']){

			/*$dateNow = date('Y-m-d', time());
			$dateFront = $_POST['dateFront'];
			
			$dateFront = $this->operateDate($dateFront);
			if($dateNow != $dateFront){
				$this->ajaxReturn('', '不能对以前/将要发布的作品进行投票！', 2);
			}*/
			
			$ip = get_client_ip();
			$id = $_POST['id'];
			$dateFront = $_POST['dateFront'];
			
			$idNew = M('game_mad_release_1')->order('date desc')->limit(1)->find()['id'];

			if($dateFront != $idNew && $dateFront != 'New'){
				$this->ajaxReturn('', '不能对以前的作品进行投票！', 2);
			}

			$sql = 
			<<<SQL
select ip, date, count(ip) as num 
from game_mad_user_vote
where ip = '$ip' and game_mad_user_id = '$id'
GROUP BY ip, date
SQL;
			
			$data = M()->query($sql)[0];
			if($data['num'] >0){
				$this->ajaxReturn('', '你不能对同一个作品投票两次!', 2);
			}



			$data = array(
				'game_mad_user_id' => $id,
				'ip' => $ip,
				'user_id' => session('id'),
				'date' => $dateNow,
				'session_id' => session_id()
			);


			if(M('game_mad_user_vote')->add($data)){
				$this->ajaxReturn('', '投票成功!', 1);
			}else{
				$this->ajaxReturn('', '投票失败,请检查网络是否断开！', 2);
			}

			//echo '<pre>' . print_r($_POST, true) . '</pre>';
		}else{
			$this->error('切勿非法访问');
		}
	}


	//新人战正规入口
	public function eventsUpVideo(){
		if(!isset($_SESSION['id'])){
			$this->error('请先登录','__APP__/Login');
		}
		$gameUser = M('game_mad_user')->where('user_id='.$_SESSION['id'])->find();
		if(!isset($gameUser['id'])){
			$this->error('您并未参加新人战!');
		}
		if(isset($gameUser['video_id'])){
			$this->error('您已经交稿!');
		}

		$gameUser = M('game_mad_user')->where('user_id='.$_SESSION['id'])->setField('date_sign', date('Y-m-d H:i:s', time()));
		$this->videoBigTypeList = videoBigType();

		$get_video_num = D('Video')->where('user_id='.session('id'))->order('time desc')->limit(1)->find();
		$get_video_num = explode('_',$get_video_num['video_path']);
		$get_video_num = explode('_',$get_video_num[count($get_video_num)-1]);
		$get_video_num = explode('.',$get_video_num[0])[0] + 1;


		$this->assign('get_video_num',$get_video_num);
    	$this->assign('get_user_id',session('id'));
		$this->display();
	}

	//新人战特殊入口
	public function eventsAddUpVideo(){
		if(!isset($_SESSION['id'])){
			$this->error('请先登录','__APP__/Login');
		}
		$where = array(
			'user_id' => $_SESSION['id']
		);
		$gameUser = M('game_mad_user')->where('user_id='.$_SESSION['id'])->find();
		if(!isset($gameUser['id'])){
			$data = array(
				'user_id' => $_SESSION['id'],
				'game_id' => '1',
				'mad_group' => '3',
				'date_sign' => date('Y-m-d H:i:s', time())
			);

			M('game_mad_user')->add($data);
			//$this->error('您并未参加新人战!');
		}
		if(isset($gameUser['video_id'])){
			$this->error('您已经交稿!');
		}

		$this->videoBigTypeList = videoBigType();

		$get_video_num = D('Video')->where('user_id='.session('id'))->order('time desc')->limit(1)->find();
		$get_video_num = explode('_',$get_video_num['video_path']);
		$get_video_num = explode('_',$get_video_num[count($get_video_num)-1]);
		$get_video_num = explode('.',$get_video_num[0])[0] + 1;


		$this->assign('get_video_num',$get_video_num);
    	$this->assign('get_user_id',session('id'));
		$this->display('eventsUpVideo');
	}

	public function upVideo(){
		
		if(!session('id')){
    		$this->error('切勿非法访问');
    	}

    	if(!($_REQUEST['xiazai'])){
			$this->error('原档下载链接必填！');
		}

		$bq = $_REQUEST['biaoqian1'];
		$bq2 = $_REQUEST['biaoqian2'];
		$bq3 = $_REQUEST['biaoqian3'];
		if($bq && $bq2){
			$this->error('只能选择同类标签。');
		}elseif($bq2 && $bq3){
			$this->error('只能选择同类标签。');
		}else if($bq3 && $bq){
			$this->error('只能选择同类标签。');
		}
		
		if(D("video")->create()){
    		$create = D("video")->create();
    	} else {
    		$this->error(D('video')->getError());
    	}

		$create['fengmian'] = str_replace(urldecode('%EF%BB%BF'), '', $create['fengmian']);
		$create['video_path'] = str_replace(urldecode('%EF%BB%BF'), '', $create['video_path']);
		if(stristr($create['fengmian'],'<!DOCTYPE html PUBLIC') || stristr($create['video_path'],'<!DOCTYPE html PUBLIC')){
    		$this->error('视频或者封面上传错误,请检查后重新上传');
    	}
		//p(urlencode($create['fengmian']));die; 去除BOM头
		if($create['fengmian'] == null){
			$this->error('请上传封面~');
		}
		if($create['video_path'] == null){
			$this->error('请上传视频~');
		}
		
    	if($_REQUEST['biaoqianType'] == '1'){
    		$da_biaoqian = "AMV / ";

			$tempbq = array();
			$tempbq2 = array();
			foreach ($bq as $key => $value) {
				$tempbq[$key] = explode('-',$bq[$key])[0];
				$tempbq2[$key] = explode('-',$bq[$key])[1];
			}
			$create['biaoqian'] = $tempbq;

    	}else if($_REQUEST['biaoqianType'] == '2'){
    		$da_biaoqian = "M@D / ";

			$tempbq = array();
			$tempbq2 = array();
			foreach ($bq2 as $key => $value) {
				$tempbq[$key] = explode('-',$bq2[$key])[0];
				$tempbq2[$key] = explode('-',$bq2[$key])[1];
			}
			$create['biaoqian'] = $tempbq;

    	}else{
			$da_biaoqian = "MV / ";

			$tempbq = array();
			$tempbq2 = array();
			foreach ($bq3 as $key => $value) {
				$tempbq[$key] = explode('-',$bq3[$key])[0];
				$tempbq2[$key] = explode('-',$bq3[$key])[1];
			}
			
			$create['biaoqian'] = $tempbq;
    	}
		
		$create['video_type_ids'] = implode(',',$tempbq2);
		
    	//获取标签长度和赋值
    	$count = count($create['biaoqian']);
		$create['zuozhe'] = session('nicheng');
		if($create['wg_time'] == null){
			$this->error('请填写完稿时间~如：2001-01-01');
		}
		$b = $da_biaoqian.$create['biaoqian'][0];

    	if($count <5){
	    	for($i=1;$i<$count;$i++){
	    		$b = $b." / ".$create['biaoqian'][$i];
	    	}
	    	$create['biaoqian'] = $b;
    	}else{
			$this->error('最多只能选择4个标签');
		}
		//赋值剩下的用户信息
		$create['user_id'] = session('id');
		$create['is_original'] = 1;
		$create['time'] = date('Y-m-d H:i:s', time());
		$yesno = D('video')->add($create);
		if($yesno){
			$this->success('上传成功~请等待审核。即将为您跳转到主页','__APP__/');
			
			$where = array(
				'user_id'=>session('id'),
				'game_id'=>1
			);
			M('game_mad_user')->where($where)->setField('video_id',$yesno);
		}else{
			$this->error('上传失败了~若您无法解决请联系管理员');
		}
	}
	
	
	
}