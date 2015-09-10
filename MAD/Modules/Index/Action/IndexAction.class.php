<?php

Class IndexAction extends PublicAction{

	public function index(){
		
		//标题 作者 评分 评论 收藏
		//$field = array('id', 'user_id', 'title', 'zuozhe', 'fengmian', 'video_type_ids');
		
		//$videoNew = M('video')->field($field)->where(array('state'=>1))->order('time desc')->limit(7)->select();
		/*$sqlNew=
		<<<SQL
select * from video 
where state = 1 and 
id not in (
select video_id from game_mad_user 
where video_id is not null
and TO_DAYS(date_pub) > TO_DAYS(NOW())

UNION ALL

select video_id from game_mad_user 
where video_id is not null and 
date_pub = '0000-00-00 00:00:00'
)
ORDER BY time desc 
LIMIT 8

SQL;
		$videoNew = M()->query($sql);
		$videoType = M('video_type');
		$videoBigType = M('video_big_type');
		foreach ($videoNew as $key => $value) {
			$temp = explode('-',$value['video_type_ids'])[0];
			$bigId = $videoType->where(array('id' => $temp))->find();
			$name = $videoBigType->where(array('id' => $bigId['video_big_type_id']))->find();
			$videoNew[$key]['videoTypeBigName'] = $name['name'];
		}*/
		$limitCount = C('VOTE_BASE');
		$sqlNew = 
		<<<SQL
select * from (
select a.id, a.user_id, a.title, a.zuozhe, a.fengmian, a.jieshao, a.biaoqian,a.time,a.video_type_ids,
IFNULL(b.collect, 0) as collect, ifnull(c.comments, 0) as comments, a.state,
IFNULL(d.avg_rel_score, 0) as score, IFNULL(d.score_count, 0) as score_count
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
ORDER BY time desc 
) a
where state = 1 and 
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
ORDER BY time desc 
limit 8
SQL;

		

		$sql = 
		<<<SQL
select * from (
select a.id, a.user_id, a.title, a.zuozhe, a.fengmian, a.jieshao, a.biaoqian,a.time,a.video_type_ids,
IFNULL(b.collect, 0) as collect, ifnull(c.comments, 0) as comments, a.state,
IFNULL(d.avg_rel_score, 0) as score, IFNULL(d.score_count, 0) as score_count
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
ORDER BY time desc 
) a
where a.state = '1' and a.score > 7 and score_count > 3 
and 
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
limit 8
SQL;
		
		/*$data = mysql_query("call p1(1)");
		$data2 = mysql_fetch_array($data);
		dump($data);
		dump($data2);
		p(M()->query('select * from video_type'));*/
		
		$videoNew = M()->query($sqlNew);
		$videoList = M()->query($sql);
		$this->videoList = $videoList;
		$this->videoNew = $videoNew;
		$this->homePage = M('home_page_mad')->where('is_del=0')->select();
		$this->display();
	}


	//计算分数
	public function init(){
		$sql = 
		<<<SQL
select a.id as vid, cast((a.pingfen / a.score) as DECIMAL(10, 2)) as score from (
select a.id, pingfen, count(b.id) as score from video a
LEFT JOIN video_score b on a.id = b.video_id
GROUP BY a.id
) a
SQL;
				$dbScore = M()->query($sql);
		$dbVideo = M('video_score');
		foreach ($dbScore as $key) {
			$dbVideo->where(array('video_id'=>$key['vid']))->setField('score',$key['score']);
		}
	}

	public function help(){
		$this->display();
	}
	
}