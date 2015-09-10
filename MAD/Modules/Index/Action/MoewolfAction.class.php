<?php

class MoewolfAction extends CommonAction{

	public function index(){
		
//$dateNow = date('Y-m-d', time());
		$date = $_GET['date'];
		
		if(!$date){
			$sqlhead = 
			<<<SQL
select * from organize_release_mad_1 
order by date desc 
limit 0, 2
SQL;
			$eventsHead = M()->query($sqlhead);
			$this->dateLeft = $eventsHead[1]['id'];
		}else{
			$sqlhead = 
			<<<SQL
select * from (
select (@i:=@i+1)	as i,organize_release_mad_1.* 
from organize_release_mad_1,(select @i:=0) as it
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
select (@i:=@i+1)	as i,organize_release_mad_1.* 
from organize_release_mad_1,(select @i:=0) as it
ORDER BY date desc 
) a 
where i = $nunmber2
SQL;
			
			$sqlhead3 = 
			<<<SQL
select * from (
select (@i:=@i+1)	as i,organize_release_mad_1.* 
from organize_release_mad_1,(select @i:=0) as it
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
			$this->error('您好,本期的萌狼视频还没有发布。');
		}
		$head_id = $eventsHead[0]['id'];

		$sqlBody = 
		<<<SQL
select *,right(video_code, 3) as video_suffix
from organize_release_mad_2

where head_id = $head_id
SQL;
		
		$eventsBody = M()->query($sqlBody);

		$this->dateNow = $date;
		$this->eventsBody = $eventsBody;
		$this->eventsHead = $eventsHead[0];

		$this->display();
	}

}