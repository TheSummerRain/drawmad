<?php

Class MyZoneAction extends PublicAction {

	public function index(){
    	//101视频 102收藏夹 103关注 104粉丝 105消息 106账号
    	$cid=$_REQUEST['cid'];
    	$msgType=$_REQUEST['msgType'];
		if($cid == 101 or $cid == null){
			$cid = 101;
			$this->assign('lia101','directory-active');
		}else if($cid == 102){
			$this->assign('lia102','directory-active');
		}else if($cid == 103){
			$this->assign('lia103','directory-active');
		}else if($cid == 104){
			$this->assign('lia104','directory-active');
		}else if($cid == 105){
			$this->assign('lia105','directory-active');
		}else if($cid == 106){
			$this->assign('lia106','directory-active');
		}

		if($msgType == 'reply' || $msgType==null){
			$this->reply = 'activity';
		}else if($msgType == 'msg' ){
			$this->msg = 'activity';
		}else if($msgType == 'notice' ){
			$this->notice = 'activity';
		}

$sql = 
		<<<SQL
select a.*, count(b.id) as video_num, IFNULL(c.video_collect_num, 0) as video_collect_num,
IFNULL(e.user_friend_count, 0) user_friend_count, d.state as name_state, g.type as name_type,
IFNULL(f.user_count, 0) user_count
from user_mad a
LEFT JOIN (
select * from video
where is_del = 0
) b on a.id = b.user_id

LEFT JOIN(
select count(id) as video_collect_num, user_id
from video_collect where user_id = '$id'
) c on a.id = c.user_id
LEFT JOIN (
select user_friend_id, count(*) as user_friend_count 
from user_friend
GROUP BY user_friend_id
) e on a.id = e.user_friend_id
LEFT JOIN (
select user_id, count(*) as user_count 
from user_friend
GROUP BY user_id
)f on a.id = f.user_id
LEFT JOIN user_state d on a.user_state = d.id
LEFT JOIN user_type g on a.user_type = g.id
where a.id = 'aaa'
GROUP BY a.id

SQL;

    	//别人的空间
    	if ($_REQUEST['userid'] && $_REQUEST['userid'] != session('id')){
    		
    		$id = $_REQUEST['userid'];
    		$this->assign('userid',$id);

    		if(session('id')){
    			$where['user_friend_id'] = $id;
				$where['user_id'] = session('id');
	    		$user_friend = D('user_friend')->where($where)->find();

	    		if($user_friend){
	    			$this->assign('gz_friend',1);
	    		}
    		}


    		$is_other = 1;
    	}else{
    		$id = session('id');

    	}
		
    		$sql = str_replace('aaa', $id, $sql);

			$userInfo = M()->query($sql)[0];
			if ($_REQUEST['userid'] && $_REQUEST['userid'] != session('id')){
		    	$this->assign('is_friend',$userInfo['is_friend']);
		    	$this->assign('is_uid',$userInfo['is_uid']);
	    	}else{

		    	$this->assign('is_uid',$userInfo['is_uid']);
		    	$this->assign('is_friend',1);
	    		$this->assign('gz_friend',2);
	    		$this->assign('url',"__APP__/MyAccount");
			}
			
	    	//$gr = D('user_mad')->where('id='.$id)->select();
	    	if($userInfo){
	    		$this->assign('userInfo',$userInfo);
	    	}else{
	    		if($id){
		    		header("HTTP/1.0 404 Not Found");//使HTTP返回404状态码 
					$this->assign('error_remind','该用户已飞出太阳系，我们失去了他的联络~');
					$this->display("Common:404");
	    		}else{
					//$this->error('请先登录','__APP__/Login');
					//$_SERVER['HTTP_REFERER'] = 'http://'.$_SERVER['HTTP_HOST'].'/MyZone';
					$this->redirect(__APP__.'/Login');
	    		}
	    	}
	   		
	    	
	    	import('ORG.Util.Page');// 导入分页类
	    	
	    	$page_num=8;
	    	if($cid == 101 or $cid == null){

	    		if($is_other){
	    			$page_num=12;
	    			$where = 
	    			<<<SQL
and a.state = 1 and 
id not in (

	select video_id from (
	select video_id, date from 
	(
	select a.*, c.date from game_mad_user a
	LEFT JOIN game_mad_release_2 b on a.id = b.game_mad_user_id
	LEFT JOIN game_mad_release_1 c on b.head_id = c.id
	) a
	 
	where video_id is not null
	and unix_timestamp(date) > unix_timestamp(NOW())

	UNION ALL

	select video_id, date from 
	(
	select a.*, c.date from game_mad_user a
	LEFT JOIN game_mad_release_2 b on a.id = b.game_mad_user_id
	LEFT JOIN game_mad_release_1 c on b.head_id = c.id
	) a
	where video_id is not null and date is null

	) a
)
SQL;
				}else{
	    			$page_num=9;
				}

    			$sql = 
				<<<SQL
select a.id, a.user_id, a.title, a.zuozhe, a.fengmian, a.jieshao, a.biaoqian,a.time,
IFNULL(b.collect, 0) as collect, ifnull(c.comments, 0) as comments, a.state,
d.score, d.score_count
from video a
LEFT JOIN(
select count(video_id) as collect, video_id
from video_collect 
GROUP BY video_id
)b on a.id = b.video_id

LEFT JOIN(
select count(video_id) as comments, video_id
from video_comments 
GROUP BY video_id
) c on a.id = c.video_id

LEFT JOIN(
select count(video_id) as score_count, video_id, 
cast(avg(score) as decimal(10,2)) as score
from video_score 
GROUP BY video_id
) d on a.id = d.video_id

where a.is_del = 0 and a.user_id = '$id' $where
GROUP BY a.id
ORDER BY time desc 
SQL;
	    		
				$video = M()->query($sql);
	    	}else if($cid == 102 ){
				//收藏
		    	$sql = 
				<<<SQL
select b.id, b.user_id, b.video_id,  a.title, a.zuozhe, a.fengmian, 
a.jieshao, a.biaoqian,a.time, a.user_id as user_author_id,a.state,
ifnull(c.comments, 0) as comments, d.score, d.score_count, e.collect
from video_collect b
LEFT JOIN video a on a.id = b.video_id

LEFT JOIN(
select count(video_id) as comments, video_id
from video_comments 
GROUP BY video_id
) c on a.id = c.video_id

LEFT JOIN(
select count(video_id) as score_count, video_id, 
cast(avg(score) as decimal(10,2)) as score
from video_score 
GROUP BY video_id
) d on a.id = d.video_id

LEFT JOIN(
select video_id, count(video_id) as collect 
from video_collect 
GROUP BY video_id
)e on b.video_id = e.video_id

where b.user_id = '$id' 
GROUP BY b.id
ORDER BY time desc 
SQL;

				$video = M()->query($sql);
			
    		}else if($cid==103){
	    		//输出关注信息
	    		$user_focus = D('user_friend')->where('user_id='.$id)->order('id desc')->select();
	    		
	    		for($i=0;$i<count($user_focus);$i++){
	    			$img[$i] = D('user_mad')->where('id='.$user_focus[$i]['user_friend_id'])->find();
	    			$fans[$i]['img'] = $img[$i]['img'];
	    			$fans[$i]['nicheng'] = $img[$i]['nicheng'];
	    			$fans[$i]['uid'] = $img[$i]['id'];
	    			$fans[$i]['id'] = $user_focus[$i]['id'];
	    			$videos = D('Video')->where('user_id='.$user_focus[$i]['user_friend_id'])->select();
	    			if(count($videos) == 0){
	    				$fans[$i]['videos'] = 0;
	    			}else{
	    				$fans[$i]['videos'] = count($videos);
	    			}
	    		}
	    		$page_num=15;
	    		$video = $fans;
    		}else if($cid==104){
    		//输出粉丝信息
    		$sql = 
		<<<SQL
select a.*, b.id as uid, b.img, b.nicheng from (
select a.*, '1' as is_mutual
from user_friend a
LEFT JOIN(
select a.*
from user_friend a
) b on a.user_friend_id = b.user_id
where b.id is not null and a.user_id = $id and b.user_friend_id = $id
GROUP BY a.id, a.user_friend_id, a.user_id, a.date

UNION ALL 

select a.id, a.user_id as user_friend_id, a.user_friend_id as user_id, 
a.date, '0' as is_mutual
from user_friend a
where a.user_friend_id = $id
and a.user_id not in (
select a.user_friend_id
from user_friend a
LEFT JOIN(
select a.*
from user_friend a
) b on a.user_friend_id = b.user_id
where b.id is not null and a.user_id = $id
)

) a
LEFT JOIN user_mad b on a.user_friend_id = b.id

SQL;
			
				$video = M()->query($sql);
	    		$page_num=15;
	    	}else if($cid==105){
	    		//消息 addNotice();
	     		
				$video = getNotice('3,4');
				$page_num = 8;
	    	}else if($cid==106){
	    		//账号
	    	}
    	
			$count=count($video);//得到数组元素个数
			$Page= new Page($count,$page_num);// 实例化分页类 传入总记录数和每页显示的记录数
			$Page->setConfig('header','条信息');
			$Page->setConfig('prev','上一页'); 
	    	$Page->setConfig('next','下一页'); 
	   	 	$Page->setConfig('first','首页'); 
	   	 	$Page->setConfig('last','尾页'); 
			$Page->setConfig('theme',' %totalRow% %header% %first%   %upPage%   %linkPage%     %downPage%    %nowPage%/%totalPage% 页  %end% ');
			//%prePage% 上五页 %nextPage% 下五页
			$aaaa = array_slice($video,$Page->firstRow,$Page->listRows);

			$this->listRows = $page_num;
			$this->assign("messageList",$aaaa);
			$show = $Page->show();
			$this->assign('page',$show);
	    	
	        $this->assign('cid',$cid);
	        if($is_other){
				$this->display('otherZone');
	        }else{
				$this->display();
	        }

		
    }


    //删除视频
    public function delVideo(){
    	if(!$_REQUEST['video_id']){
    		$this->ajaxReturn('不允许非法访问','error',0);
    	}
    	$video_id = $_REQUEST['video_id'];
    	$where = array(
    		'id'=>$video_id,
    		'user_id'=> session('id')
    	);
    	$video_xx = D('video')->where('id='.$video_id)->find();
    	M('game_mad_user')->where('video_id='.$video_id)->setField('video_id', null);
    	//如果一个视频都没有 会员权限返回
    	/*$user_videonum = D('video')->where('id='.$yh_id)->where('is_original=1')->select();
		if(count($user_videonum)== 0){
			$save_state['user_state'] = 1;
			D('user_mad')->where('id='.$yh_id)->save($save_state);
		}*/
    	//if(M('video')->where($where)->setField('is_del', '1')){
    	if(M('video')->where($where)->delete()){
			unlink('./MAD/Modules/Index/Tpl/Public/videos/'.$video_xx['fengmian']);
			unlink('./MAD/Modules/Index/Tpl/Public/videos/'.$video_xx['video_path']);
			$this->ajaxReturn('删除成功','error',1);
    	}else{
    		$this->ajaxReturn('删除失败','error',0);
    	}
		
    }

    //刷新已经读取通知
    public function refreshNotice(){
		
    	if(!session('id')){
			$this->ajaxReturn('请先登录','error',1);
		}
		if($_POST){
			if($_POST['ntValue']){

				$limit = $_POST['ntValue']*$_POST['pageLimit']-$_POST['pageLimit'].','.$_POST['pageLimit'];
				//$db = M('user_notice')->where('type='.$_POST['tabVal'])->limit($limit)->setField('state',1);
				$sql = 
       			<<<SQL
update user_notice set state = 1
where id in (
select a.id from (
select id from user_notice
where type = $_POST[tabVal]  
limit $limit
) a

)
SQL;
				M()->execute($sql);
			}else{
				$data = array(
					'state'=>1,
					'read_date' =>date('Y-m-d H:i:s', time())
				);
				if($_POST['tabVal'] == 3){

					M('user_notice')->where('type=4')->setField($data);
				}
				M('user_notice')->where('type='.$_POST['tabVal'])->setField($data);
			}

		}

    }
    //删除通知
    public function delNotice(){
    	if(!session('id')){
			$this->ajaxReturn('请先登录','error',0);
		}
		if($_POST){
			if(M('user_notice')->where('id='.$_POST['id'])->setField('is_del', 1)){
				$this->ajaxReturn('删除成功','error',1);
			}else{
				$this->ajaxReturn('删除失败','error',0);
			}
		}

    }

    //修改密码
    public function updatePwd(){
		$dbuser = M('user_mad');
    	$userid = $_SESSION['id'];
		$password = $_POST['password'];
		$rpassword = $_POST['rpassword'];
		$oldpassword = $_POST['oldpassword'];

		$validate = array(
		    array('password', '6,20', '密码限制长度为6-20位！', 0, 'length', 3),
		    array('rpassword','require','确认密码必须'), //默认情况下用正则进行验证
		    array('rpassword','password','确认密码不正确',0,'confirm'), // 验证确认密码是否和密码一致
	    );

		$dbUser = M('user_mad');

		$where = array(
			'id'=>$_SESSION['id'],
			'password'=> md5($oldpassword)
		);
		if($dbuser->where($where)->find()){
			if($dbUser->validate($validate)->create($_POST)){
				$data = array(
					'password'=> md5($password)
				);
				//>setField('password',md5($password))
				$dbuser->where('id='.session('id'))->setField('password',md5($password));
				$this->success('操作成功');

			}else{
				$this->error($dbUser->getError());
			}

		}else{
			$this->error('密码错误!');
		}
    }

    //修改签名
    public function updateText(){
    	if(!session('id')){
			$this->ajaxReturn('请先登录','error',0);
		}
		if(M('user_mad')->where('id='.session('id'))->setField('text',$_POST['text'])){
			$this->ajaxReturn('修改成功！','error',1);
		}else{
			$this->ajaxReturn('修改失败！','error',0);
		}
    }

    //关注
	public function gz_zone(){
		if(!session('id')){
			$this->ajaxReturn('请先登录','error',1);
		}
		$friend = D('user_friend');
		$where['user_friend_id'] = $_REQUEST['user_friend_id'];
		$where['user_id'] = session('id');
		$yesno = $friend->where($where)->find();
		if($where['user_friend_id'] == session('id')){
			$this->ajaxReturn('请不要自己关注自己','error',2);
		}else if($yesno){
			$this->ajaxReturn('您已经关注过啦。再喜欢也不能关注两次！','error',2);
		}else{
		 	$friend->add($where);
		 	$this->ajaxReturn('关注成功!','error',0);
		}
		
	}
    
	//用户上传头像
    public function up_head(){
   		 if(!session('id')){
    		$this->error('请先登录','__APP__/Login');
    		
    	}
	   	import('ORG.Net.UploadFile');//导入上传类文件
	    $upload = new UploadFile();// 实例化上传类
	    $upload->maxSize  = 3145728 ;// 设置附件上传大小
	    $upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
	    $upload->savePath =  './MAD/Modules/Index/Tpl/Public/user_head/';// 设置附件上传目录
		$upload->saveRule =session("id");//自定义保存的文件名
		$upload->thumb = true;			//是否生成缩略图
		$upload->thumbMaxWidth = '150,200';			//最大宽度
		$upload->thumbMaxHeight = '150,200';	//最大高度
		$upload->thumbPrefix = "hed_";		//缩略图前缀
		$upload->uploadReplace = "true"; //是否覆盖同名文件
		$upload->thumbRemoveOrigin = "true"; //生成缩略图后是否删除原图

		if(!$upload->upload()) {// 上传错误提示错误信息
	        $this->error($upload->getErrorMsg());
	    }else{// 上传成功
	    	$head = $upload->getUploadFileInfo();
			$add['img'] = "hed_".session('id').'.'.$head[0]['extension'];
			session('img', $add['img']);
			//dump($add);
			D('user_mad')->where('id='.session('id'))->save($add);
	    	$this->success('上传成功！','__APP__/MyZone');
	    }
		
    }

    //编辑视频
    public function edit_video(){
    	//获取视频信息
    	$video_id = $_REQUEST['video_id'];
	    if($video_id){

			$video_id = substr($video_id, 3);
	    	$video_old = D('video')->where('id='.$video_id)->find();
	    	$video_num = D('video')->where('user_id='.session('id'))->select();

			$get_video_num = explode('_',$video_old['video_path']);
			$get_video_num = explode('_',$get_video_num[count($get_video_num)-1]);
			$get_video_num = explode('.',$get_video_num[0])[0];

			$this->videoBigTypeList = videoBigType();
		    /* 	if($video_old['state'] ==0 ){
		    		$this->error('您的视频尚未审核通过，请通过后再做修改');
		    	}
		    */
		   
	    	$this->assign('get_video_num',count($video_num));
	    	$this->assign('user_id',session('id'));
	    	$this->assign('video_old',$video_old);
	    	$this->display();
   		}else{
   			$this->error('不允许非法访问!');
   		}
    }
	
    public function uploadify(){
		parent::uploadify('edit_');
	}

	public function updata_video(){
		if(!session('id')){
			$this->ajaxReturn('切勿非法访问', 'error', 1);
		}
		
		$bq = $_REQUEST['biaoqian1'];
		$bq2 = $_REQUEST['biaoqian2'];
		$bq3 = $_REQUEST['biaoqian3'];
		
		$create = $_POST;
		$oldvideo = D('video')->where('id='.$_REQUEST['videoid'])->find();

		if($create['fengmian'] == null){
			$create['fengmian'] = $oldvideo['fengmian'];
		}
		if($create['video_path'] == null){
			$create['video_path'] = $oldvideo['video_path'];
		}

		$create['fengmian'] = str_replace(urldecode('%EF%BB%BF'), '', $create['fengmian']);
		$create['video_path'] = str_replace(urldecode('%EF%BB%BF'), '', $create['video_path']);
		if(stristr($create['fengmian'],'<!DOCTYPE html PUBLIC') || stristr($create['video_path'],'<!DOCTYPE html PUBLIC')){
    		$this->ajaxReturn('视频或者封面上传错误,请检查后重新上传.(ps:换个浏览器试试?)', 'error', 1);
    	}
		
		if($create['fengmian'] == null){
			$this->ajaxReturn('请上传封面~', 'error', 1);
		}
		if($create['video_path'] == null){
			$this->ajaxReturn('请上传视频~', 'error', 1);
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
		$create['biaoqian'] = $da_biaoqian.implode(' / ',$tempbq);
		
		if($create['video_type_ids'] == null){
			$create['biaoqian'] = $oldvideo['biaoqian'];
			$create['video_type_ids'] = $oldvideo['video_type_ids'];
		}

		if(!$create['zuozhe']){
			$create['zuozhe'] = $oldvideo['zuozhe'];
		}
		
		if(!$create['wg_time']){
			$create['wg_time'] = $oldvideo['wg_time'];
		}
		
		$create['id'] = $_REQUEST['videoid'];
		$create['user_id'] = session('id');
		$create['update_time'] = date('Y-m-d H:i:s', time());
		$create['state'] = '0';

		if(D('video')->save($create)){
			$this->ajaxReturn('上传成功~请等待审核。即将为您跳转到主页', 'error', 2);
		}else{
			$this->ajaxReturn('上传失败了~若您无法解决请联系管理员', 'error', 1);
		}
	}

}