<?php

class ReleaseAction extends CommonGameAction{

	public function index(){
		import('ORG.Util.Page');
		$where = 'game_mad_id='.$_COOKIE['user_admin_type'];
		$count = M('game_mad_release_1')->where($where)->count();
		$page = new Page($count, 10);
		$limit = $page->firstRow.','.$page->listRows;

		$this->releaseList = M('game_mad_release_1')->where($where)->limit($limit)->select();
		$this->page = $page->show();
		
		$this->display();
	}

	public function addRelease(){

		$id = $_REQUEST['id'];
		if($id){
			$sql=
			<<<SQL
select a.id,a.game_mad_user_id, a.head_id, aa.title as releaseTitle,
date_format(aa.date ,'%Y-%m-%d') as date, b.date_turn, c.nicheng, 
b.video_id, b.user_id, d.title, d.fengmian,
bb.name as group_name
from 
game_mad_release_2 a
LEFT JOIN game_mad_release_1 aa on a.head_id = aa.id
LEFT JOIN game_mad_user b on a.game_mad_user_id = b.id
LEFT JOIN game_mad_group bb on b.mad_group = bb.id
LEFT JOIN user_mad c on b.user_id = c.id
LEFT JOIN video d on b.video_id = d.id
where a.head_id = $id
SQL;
		
			$releaseList = M()->query($sql);

			$this->releaseId = $id;
			$this->releaseDate = $releaseList[0]['date'];
			$this->releaseTitle = $releaseList[0]['releaseTitle'];
			$this->releaseList = $releaseList;
		}

		$this->display();
	}


	public function searchRelease(){
		if($_POST['searchVal']){
			$val = $_POST['searchVal'];
			$where = "where nicheng like '%".$val."%' or title like '%".$val."%' or b.user_id like '%".$val."%'";
		}

		$sql=
		<<<SQL
select b.id as game_mad_user_id, b.date_turn, c.nicheng, b.video_id, 
b.user_id, ifnull(d.title, '无') as title,bb.name as group_name
from game_mad_user b 
LEFT JOIN game_mad_group bb on b.mad_group = bb.id
LEFT JOIN user_mad c on b.user_id = c.id
LEFT JOIN video d on b.video_id = d.id

$where
ORDER BY b.id
limit 7
SQL;
		//where b.video_id is not null
		$data = M()->query($sql);
		$this->ajaxReturn($data,'获取成功', 1);

	}

	public function saveRelease(){
		if($_POST){
			$data = array(
				'title' => $_POST['title'],
				'date' => $_POST['date'],
				'game_mad_id' => $_COOKIE['user_admin_type']
			);
			if($_POST['head_id']){
				
				$id = $_POST['head_id'];
				$data['id'] = $id;
				M('game_mad_release_1')->save($data);

				$data = array();
				M('game_mad_release_2')->where('head_id='.$id)->delete();
				foreach($_POST['mydata'] as $key => $val){
					$data[$key]['head_id'] = $id;
					$data[$key]['date'] = $_POST['date'];
					$data[$key]['game_mad_user_id'] = $val;

				}
				M('game_mad_release_2')->addAll($data);
				$this->ajaxReturn(__APP__.'/Game/Release', '修改成功', 1);
			}else{
				$data['date_create'] = date('Y-m-d H-i-s', time());
				if($id = M('game_mad_release_1')->add($data)){
					$data = array();
					foreach($_POST['mydata'] as $key => $val){
						$data[$key]['head_id'] = $id;
						$data[$key]['date'] = $_POST['date'];
						$data[$key]['game_mad_user_id'] = $val;

					}
					M('game_mad_release_2')->addAll($data);
					$this->ajaxReturn(__APP__.'/Game/Release', '保存成功', 1);
					
				}else{
					$this->error('保存错误,请重新添加。');
				}
			}

		}else{

		}
		
	}

	public function deleteRelease(){
		if(!empty($_GET['id'])){

			if(M('game_mad_release_1')->where('id='.$_GET['id'])->delete()){
				M('game_mad_release_2')->where('head_id='.$_GET['id'])->delete();
				$this->success('删除成功!');
			}else{
				$this->error('删除失败!');
			}

		}else{
			$this->error('请不要非法访问!');
		}
	}

	public function listModifyGroup(){
		import('ORG.Util.Page');
		$where = 'where b.game_mad_id = '.$_COOKIE['user_admin_type'];
		$sqlInit=
		<<<SQL
select b.id as game_mad_user_id, b.date_turn, c.nicheng, b.video_id, 
b.user_id, ifnull(d.title, '无') as title,bb.name as group_name
from game_mad_user b 
LEFT JOIN game_mad_group bb on b.mad_group = bb.id
LEFT JOIN user_mad c on b.user_id = c.id
LEFT JOIN video d on b.video_id = d.id
[where]
ORDER BY b.id
[limit]
SQL;
		
		$sql = returnSql($sqlInit,$where);
		$count = count(M()->query($sql));
		$page = new Page($count, 10);
		$limit = $page->firstRow.','.$page->listRows;

		$sql = returnSql($sqlInit,$where, $limit);
		$gameMadList = M()->query($sql);
		$this->gameMadList = $gameMadList;
		$this->page = $page->show();
		$this->display();
	}


}