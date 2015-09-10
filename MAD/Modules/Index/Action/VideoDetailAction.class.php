<?php

Class VideoDetailAction extends PublicAction {

	public function commentsCal(){
		$sql = 
		<<<SQL
select video_id from video_comments
group by video_id
SQL;

		$commentsId = M()->query($sql);
		foreach($commentsId as $key => $val){
			$sql2 = 
			<<<SQL
SELECT *,(@i:=@i+1)+0 as num
FROM video_comments ,(select @i:=0) as it
where video_id = $val[video_id]
order by time
SQL;
			$temp = M()->query($sql2);
			foreach ($temp as $key2 => $val2) {
				$sql3 = 
				<<<SQL
update video_comments set num_floor = $val2[num] where id = '$val2[id]'
SQL;
				M()->execute($sql3);
			}

		}
	}

	public function index (){
		//$this->commentsCal();

		if($_GET['vid'] == ""){
			$this->error('请不要非法访问');
		}
		$vid = substr($_GET['vid'], 3);

		$limitCount = C('VOTE_BASE');
		$userid = session('id');
		$sqlUser = 
		<<<SQL
select a.id, c.id as vid, a.username, a.nicheng, a.img, a.text, 
b.state, d.video_count
from user_mad a
LEFT JOIN user_state b on a.user_state = b.id
LEFT JOIN video c on a.id = c.user_id
LEFT JOIN (
	select count(id) as video_count, user_id
	from video where user_id = (
		select user_id from video where id = $vid
	)
) d on a.id = d.user_id
where c.id = $vid
SQL;
		$sqlVideo = 
		<<<SQL
select * from (
select a.id, a.user_id, a.title, a.zuozhe, a.fengmian, a.jieshao, a.state, a.BGM,
a.biaoqian,a.time, a.wg_time, a.remark,a.video_path,a.xiazai, a.xiazaipass,a.down_purview,
count(b.id) as collect, count(c.id) as comments, 
ifnull(d.avg_rel_score, 0.00) as score, d.score_count
from video a
LEFT JOIN video_collect b on a.id = b.video_id
LEFT JOIN video_comments c on a.id = c.video_id
LEFT JOIN (
	
	select *, 
	ROUND(
	(score_count * avg_score) / (score_count + min_score) + 
	(min_score * sum_avg_score) / (min_score + score_count)
	, 2) as avg_rel_score2,
	
	ROUND(
	(18 + sum_score_sing) / (3 + score_count) 
	, 2) as avg_rel_score
	from (
	select sum(num) as score_count, video_id, 
	cast(avg(score) as decimal(10,2)) as avg_score,
	sum(score * num) as sum_score_sing
	from video_score 
	GROUP BY video_id
	) a
	left join (
		select min(score) as min_score from (
		select * from (
		select video_id, count(score) as score
		from video_score 
		group by video_id
		) a
		order by score desc
		limit $limitCount
		) a
	) b on 1 = 1
	left join (
		select sum(sum_count) as sum_count, sum(score) as sum_score, 
		sum(score) / sum(sum_count) as sum_avg_score
		from (
		select count(video_id) as sum_count, video_id, sum(score) as score
		from video_score 
		group by video_id
		) a
	)c on 1 = 1
) 
d on a.id = d.video_id
GROUP BY a.id
ORDER BY time desc 
) a
where a.id = $vid and 
a.id not in (

	select video_id from (
	

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
		$sqlCollect = 
		<<<SQL
select count(video_id) as video_collect_num
from video_collect where user_id = $userid and video_id = $vid
SQL;
	
		$userInfo = M()->query($sqlUser)[0];
		$videoInfo = M()->query($sqlVideo)[0];
		if(!$videoInfo || !$userInfo){
			$this->error('请不要非法访问!');
		}

		if($videoInfo['state'] == 0){
			$this->error('该视频还未审核!');
		}else if($videoInfo['state'] == 2){
			$this->error('该视频已经被封禁!');
		}
		$videoInfo['server_name'] = $_SERVER['SERVER_NAME'];
		$video_suffix = explode('.', $videoInfo['video_path']);
		$videoInfo['video_suffix'] = $video_suffix[count($video_suffix)-1];

		$this->userInfo = $userInfo;
		$this->videoInfo = $videoInfo;
		$this->assign('collect', M()->query($sqlCollect)[0]);
		
		//1游客 2会员但是是自己 3会员已经关注 4会员不是自己未关注;
		if(session('id')){
			$where = array(
				'user_friend_id'=>$userInfo['id'], 
				'user_id'=>session('id'));
			$db = M('user_friend')->where($where)->select();
			
			if(session('id') == $userInfo['id']){
    			$is_friend = '2';
			}else if($db){
				$is_friend = '3';
			}else{
				$is_friend = '4';
			}

		}else{
			$is_friend = '1';

		}

		M('video')->where('id='.$vid)->setInc('click');//点击次数
		$this->assign('is_friend',$is_friend);
		$this->comments($videoInfo['id']);
		$this->display();
	}


	//评分
	public function addScore(){
		
		if(!session('id')){
			$this->ajaxReturn("您需要先登录","Error",2);
    	}
    	
    	$user_type = D('user_mad')->where('id='.$_SESSION['id'])->find();
    	if($user_type['user_type'] == 1){
    		$this->ajaxReturn('您还不是正式会员，无法评分，请投稿原创作品成为正式会员','error',0);
    	}
		
		//评分：
		$point=$_REQUEST['point'];
		$video_id=$_REQUEST['id'];
		//判断是否已经评了：
		$check=D('video_score')->where("video_id='$video_id' and user_id='$_SESSION[id]'")->find();
		if($point <= 10 && $point >= 0){
			
			if(!$check || $user_type['id'] == C('SPECIAL_SCORE')){
				
				//$User->setInc( 'score','id=5',3 ); // 用户的积分加 3
				$limitCount = C('VOTE_BASE');
				/*if($check && $user_type['id'] == C('SPECIAL_SCORE')){
					M('video_score')->where('id='.$check['id'])->setInc('num');
				}else{
					
				}*/
					$data=array(
						'user_id'=>$_SESSION['id'],
						'video_id'=>$_REQUEST['id'],
						'score'=>$point,
						'username'=>$_SESSION['username'],
						'time' =>date('Y-m-d H:i:s', time()),
					);
					$user_type['user_type'] == 3 ? $data['num'] = 5 : $data['num'] = 1;
					$add=D('video_score')->add($data);
				
				
				$sql = 
				<<<SQL

select *, 
	ROUND(
	(score_count * avg_score) / (score_count + min_score) + 
	(min_score * sum_avg_score) / (min_score + score_count)
	, 2) as avg_rel_score2,
	
	ROUND(
	(18 + sum_score_sing) / (3 + score_count) 
	, 2) as avg_rel_score
	from (
	select sum(num) as score_count, video_id, 
	cast(avg(score) as decimal(10,2)) as avg_score,
	sum(score * num) as sum_score_sing
	from video_score 
	GROUP BY video_id
	) a
	left join (
		select min(score) as min_score from (
		select * from (
		select video_id, count(score) as score
		from video_score 
		group by video_id
		) a
		order by score desc
		limit $limitCount
		) a
	) b on 1 = 1
	left join (
		select sum(sum_count) as sum_count, sum(score) as sum_score, 
		sum(score) / sum(sum_count) as sum_avg_score
		from (
		select count(video_id) as sum_count, video_id, sum(score) as score
		from video_score 
		group by video_id
		) a
	)c on 1 = 1
	where video_id = $video_id
SQL;
				//$avgScore = M('video_score')->where(array('video_id' => $_REQUEST['id']))->avg('score');
				//$avgScore = sprintf("%.2f", $avgScore);
				$avgScore = M()->query($sql)[0]['avg_rel_score'];

				$this->ajaxReturn($avgScore,"Ok",1);
				
			}else{
				$this->ajaxReturn("你已经评分过啦！","Error",0);
			}
		}else{
			$this->ajaxReturn("请不要恶意刷评分","Error",0);
		}
		
		$this->display();
	}

	//评论
	public function sendMsg(){
		if(session('id')){
			$content = $_POST['content'];
			$video_id = $_POST['video_id'];
			$parent_id = $_POST['parent_id'];
			
			$sql = 
			<<<SQL
			select ifnull(max(num_floor) + 1, 1) as num_floor 
			from video_comments
			where video_id =  $video_id
SQL;
			$num_floor = M()->query($sql)[0]['num_floor'];
			
			$data = array(
				'time' => date('Y-m-d H:i:s', time()),
				'video_id' => $video_id,
				'content' => $content,
				'parent_id' => $parent_id,
				'user_id' => session('id'),
				'username' => session('username'),
				'nick_name' => session('nicheng'),
				'user_img' => session('img'),
				'num_floor' => $num_floor
			);
			if(($id = M('video_comments')->add($data))){

				$data['id'] = $id;
				

				$this->ajaxReturn($data, 'error', 1);
			}else{
				$this->ajaxReturn('失败', 'error', 2);
			}
		}else{
			$this->ajaxReturn('请先登录', 'error', 0);
		}
	}

	public function getComments(){
		if($_POST){
			import('Class.Page', APP_PATH);
			$user_id = session('id');
			$id = $_POST['id'];
			$pageCurrent = $_POST['pageCurrent'];
			$pageLimit = $_POST['pageLimit'];

			$limit = $pageCurrent*$pageLimit-$pageLimit.','.$pageLimit;

			$sql = 
			<<<SQL
SELECT a.*, b.num, b.purview, c.nick_name as parent_nick_name, 
d.num as parent_num
FROM video_comments a

LEFT JOIN (
SELECT *,(@i:=@i+1)+0 as num,
CASE user_id WHEN '$user_id' THEN '1'
ELSE '0' END as purview
FROM video_comments ,(select @i:=0) as it
where video_id = '$id'
order by time
) b on a.id = b.id

LEFT JOIN video_comments c on a.parent_id = c.id
LEFT JOIN (
SELECT id,(@j:=@j+1)+0 as num,
CASE user_id WHEN '$user_id' THEN '1'
ELSE '0' END as purview
FROM video_comments ,(select @j:=0) as it
where video_id = '$id'
order by time
) d on a.parent_id = d.id

where a.is_del = 0 and a.video_id = '$id'
order by a.time desc
limit $limit
SQL;
			
			
			$data = M()->query($sql);
			$this->ajaxReturn($data, '1111', 1);
		}else{
			$this->ajaxReturn('请不要非法访问', '1111', 0);
		}
		
	}


	//显示评论
	public function comments($id){
		/*if($_GET['video_id'] && session('id')){*/
			import('ORG.Util.Page');
			//import('Class.Page', APP_PATH);
			$user_id = session('id');
			
			$sql = 
			<<<SQL
			SELECT *,(@i:=@i+1) as num 
FROM video_comments ,(select @i:=0) as it
where is_del = 0 and video_id = '$id'
order by time desc
SQL;
			
			$page = new Page(count(M()->query($sql)), 4);
			$limit = $page->firstRow.','.$page->listRows;
			$sql = 
			<<<SQL

SELECT a.*, b.num_floor as num, b.purview, c.nick_name as parent_nick_name, 
d.num_floor as parent_num
FROM video_comments a

LEFT JOIN (
SELECT *,
CASE user_id WHEN '$user_id' THEN '1'
ELSE '0' END as purview
FROM video_comments
where video_id = '$id'
order by time
) b on a.id = b.id

LEFT JOIN video_comments c on a.parent_id = c.id
LEFT JOIN (
SELECT id,num_floor,
CASE user_id WHEN '$user_id' THEN '1'
ELSE '0' END as purview
FROM video_comments
where video_id = '$id'
order by time
) d on a.parent_id = d.id

where a.is_del = 0 and a.video_id = '$id'
order by a.time desc

SQL;
			//limit $limit
			$this->video_comments = M()->query($sql);
			$this->listRows = $page->listRows;
			$page->setConfig('theme',' %totalRow% %header% %first%   %upPage%   %linkPage%     %downPage%    %nowPage%/%totalPage% 页  %end% ');
			$this->page = $page->show();

	}


	//删除评论
	public function del_pl(){
		
		if(session('id')){
			$user_id = session('id');
			$comment_id = $_POST['id'];
			$video_id = $_POST['vid'];


			$where = array(
				'user_id'=> $user_id,
				'id' => $comment_id,
				'$video_id' => $video_id,
			);
			if(M('video_comments')->where($where)->setField('is_del', 1)){
				$this->ajaxReturn('删除成功!', '',1);
			}else{
				$this->ajaxReturn('不能删除别人的评论!', '',2);
			}

		}else{
			$this->ajaxReturn('请先登录!', '', 0);
		}
	}
}