<?php

Class VideoAction extends CommonAction {

	public function index(){
		import('ORG.Util.Page');
		$score_where = (float)$_GET['score'];
		$recommend_where = $_GET['recommend'];
		$MAD_where = $_GET['score'];
		$MV_where = $_GET['score'];
		$videoInit = array();

		$where = '';
		if($recommend_where){
			$where = 'and a.score > 7 and score_count > 3';
			$videoInit['img'] = 'checked';
			$videoInit['src'] = 0;
		}else{
			$videoInit['img'] = 'false';
			$videoInit['src'] = 1;
		}
		if($score_where){
			$where .= 'and a.score > '.$score_where;
			$videoInit['score'] = $score_where;
		}

		$field = array('id', 'user_id', 'title', 'zuozhe', 'fengmian', 'jieshao', 'biaoqian');
		
		$sql = 
		<<<SQL
select * from (
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
	select sum(num) as score_count, video_id, 
cast(avg(score) as decimal(10,2)) as score
from video_score 
GROUP BY video_id
) d on a.id = d.video_id
GROUP BY a.id
ORDER BY time desc 

) a
where a.state = '1' and 
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

) $where
SQL;
		
		$page = new Page(count(M()->query($sql)), 9);
		
		// $Page->setConfig('header','条信息');
		// $Page->setConfig('prev','上一页'); 
  		//   	$Page->setConfig('next','下一页'); 
 		//  	 	$Page->setConfig('first','首页'); 
  		//  	 	$Page->setConfig('last','尾页'); //%prePage%  
		$page->setConfig('theme',' %totalRow% %header% %first%   %upPage%   %linkPage%     %downPage%    %nowPage%/%totalPage% 页  %end% ');
		

		$limitCount = C('VOTE_BASE');
		$limit = $page->firstRow.','.$page->listRows;
		$sql = 
		<<<SQL
select * from (
select a.id, a.user_id, a.title, a.zuozhe, a.fengmian, a.jieshao, a.biaoqian,a.time,
IFNULL(b.collect, 0) as collect, ifnull(c.comments, 0) as comments, a.state,
ifnull(d.avg_rel_score, 0) as score, ifnull(d.score_count, 0) as score_count
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

) d on a.id = d.video_id
GROUP BY a.id

) a
where a.state = '1' and 
id not in (

select video_id from (
	select video_id, date from 
	(
	select a.*, c.date from game_mad_user a
	LEFT JOIN game_mad_release_2 b on a.id = b.game_mad_user_id
	LEFT JOIN game_mad_release_1 c on b.head_id = c.id
	) a
	 
	where video_id is not null
	and TO_DAYS(date) > TO_DAYS(NOW())

	UNION ALL

	select video_id, ifnull(date, 'bbbb') as date from 
	(
	select a.*, c.date from game_mad_user a
	LEFT JOIN game_mad_release_2 b on a.id = b.game_mad_user_id
	LEFT JOIN game_mad_release_1 c on b.head_id = c.id
	) a
	where video_id is not null and date is null

	) a

) $where
ORDER BY time desc 
limit $limit
SQL;
		
		$videoList = M()->query($sql);

		$videoBigType = M('video_big_type')->select();
		$videoTypeList = array();
		foreach ($videoBigType as $key => $value) {
			$where = array('video_big_type_id'=> $value['id']);
			$videoType = M('video_type')->where($where)->order('video_big_type_id')->select();
			/*if($key == 0){
				$videoBigType[$key]['class'] = 'active';
			}else{
				$videoBigType[$key]['class'] = '';
			}*/
			$videoBigType[$key]['videoType'] = $videoType;
			$videoTypeList[] = $videoBigType[$key];

		}
		$this->videoBigTypeList =$videoTypeList;

		$this->videoInit = $videoInit;
		$this->videoList = $videoList;
		$this->page = $page->show();
		$this->display();
	}


}