<?php

class VideoAction extends CommonOrganizeAction{

	public function index(){
		import('ORG.Util.Page');
		$count = M('organize_release_mad_1')->count();
		$page = new Page($count, 10);
		$limit = $page->firstRow.','.$page->listRows;

		$this->releaseList = M('organize_release_mad_1')->limit($limit)->select();
		$this->page = $page->show();
		
		$this->display();
	}

	public function delRelease(){
		if($_GET['id']){
			if(M('organize_release_mad_1')->where('id='.$_GET['id'])->delete()){
				M('organize_release_mad_2')->where('head_id='.$_GET['id'])->delete();
				$this->success('删除成功!');
			}
		}else{
			$this->error('切勿非法访问！');
		}
	}

	public function addRelease(){

		$id = $_REQUEST['id'];
		if($id){
			$sqlBody=
			<<<SQL
select b.*, a.head_id, a.author, a.img as body_img, a.`password` as body_password, 
a.video_url as body_video_url, a.title as body_title, 
REPLACE(REPLACE(a.video_code, '<', '&lt;'), '>', '&gt;') as body_video_code
from organize_release_mad_2 a
LEFT JOIN organize_release_mad_1 b on a.head_id = b.id
where a.head_id = $id
SQL;
			
			$sqlHead = 
			<<<SQL
select * from organize_release_mad_1
where id = $id
SQL;
			$releaseList = M()->query($sqlBody);
			$releaseHead = M()->query($sqlHead)[0];

			$this->releaseId = $id;
			$this->releaseList = $releaseList;
			$this->releaseHead = $releaseHead;
		}

		$this->display();
	}

	public function saveRelease(){


		if($_POST){
			$head_id = $_POST['datahead'][0];
			$data = array(
				'title' => $_POST['datahead'][2],
				'date' => $_POST['datahead'][1],
				'explain' => $_POST['datahead'][3],
				'video_url' => $_POST['datahead'][4],
				'password' => $_POST['datahead'][5],
				//'img' => $_POST['datahead'][6],
			);
			if($head_id){
				$id = $head_id;
				$data['id'] = $id;
				M('organize_release_mad_1')->save($data);

				$data = array();
				M('organize_release_mad_2')->where('head_id='.$id)->delete();
				foreach($_POST['mydata'] as $key => $val){
					$data[$key]['head_id'] = $id;
					$data[$key]['date'] = date('Y-m-d H-i-s', time());
					$data[$key]['author'] = $val['body_author'];
					$data[$key]['title'] = $val['body_title'];
					$data[$key]['video_url'] = $val['body_video_url'];
					$data[$key]['img'] = $val['body_img'];
					$data[$key]['password'] = $val['body_password'];
					$data[$key]['video_code'] = $val['body_video_code'];
				}
				M('organize_release_mad_2')->addAll($data);
				$this->ajaxReturn(__APP__.'/Organize/Video', '修改成功', 1);
				//$this->success('保存成功!', __APP__.'/Admin/XRZVideo');
			}else{
				$data['date_create'] = date('Y-m-d H-i-s', time());
				$data['organize_type'] = '1';

				if($id = M('organize_release_mad_1')->add($data)){
					$data = array();

					foreach($_POST['mydata'] as $key => $val){
						$data[$key]['head_id'] = $id;
						$data[$key]['date'] = date('Y-m-d H-i-s', time());
						$data[$key]['author'] = $val['body_author'];
						$data[$key]['title'] = $val['body_title'];
						$data[$key]['video_url'] = $val['body_video_url'];
						$data[$key]['img'] = $val['body_img'];
						$data[$key]['password'] = $val['body_password'];
						$data[$key]['video_code'] = $val['body_video_code'];
					}
					M('organize_release_mad_2')->addAll($data);
					$this->ajaxReturn(__APP__.'/Organize/Video', '保存成功', 1);

				}else{
					$this->error('保存错误,请重新添加。');
				}
			}
			
		}else{

		}
		
	}

	public function listModifyGroup(){
		import('ORG.Util.Page');
		$sql=
		<<<SQL
select b.id as game_mad_user_id, b.date_turn, c.nicheng, b.video_id, 
b.user_id, ifnull(d.title, '无') as title,bb.name as group_name
from game_mad_user b 
LEFT JOIN game_mad_group bb on b.mad_group = bb.id
LEFT JOIN user_mad c on b.user_id = c.id
LEFT JOIN video d on b.video_id = d.id

ORDER BY b.id
SQL;
		
		$count = count(M()->query($sql));
		$page = new Page($count, 10);
		$limit = $page->firstRow.','.$page->listRows;

		$sql=
		<<<SQL
select b.id as game_mad_user_id, b.date_turn, c.nicheng, b.video_id, 
b.user_id, ifnull(d.title, '无') as title,bb.name as group_name,
CASE d.state 
WHEN 0 THEN '未审核'
WHEN 2 THEN '已封禁' 
WHEN 1 THEN '已审核' 
ELSE '无' END as state_name

from game_mad_user b 
LEFT JOIN game_mad_group bb on b.mad_group = bb.id
LEFT JOIN user_mad c on b.user_id = c.id
LEFT JOIN video d on b.video_id = d.id

ORDER BY d.id desc
limit $limit
SQL;
		$gameMadList = M()->query($sql);
		$this->gameMadList = $gameMadList;
		$this->page = $page->show();
		$this->display();
	}

	public function modifyGroup(){

		$id = $_GET['id'];
		if($id){
			$sql=
			<<<SQL
select b.id as game_mad_user_id, b.date_turn, c.nicheng, b.video_id, 
b.user_id, ifnull(d.title, '无') as title,bb.name as group_name, b.mad_group
from game_mad_user b 
LEFT JOIN game_mad_group bb on b.mad_group = bb.id
LEFT JOIN user_mad c on b.user_id = c.id
LEFT JOIN video d on b.video_id = d.id

where b.id = $id 
ORDER BY b.id
SQL;
			$gameMad = M()->query($sql)[0];
			$madGroup = M('game_mad_group')->select();

			$this->madGroup = $madGroup;
			$this->gameMad = $gameMad;
			$this->display();
		}else{
			$this->error('切勿非法访问！');
		}
	}

	public function saveGroup(){
		if($_POST){

			$is_flag = M('game_mad_user')->where('id='.$_POST['id'])->setField('mad_group', $_POST['group']);
			if($is_flag){
				$this->success('更新成功', __URL__.'/listModifyGroup');
			}else{
				$this->success('更新失败');
			}
		}else{
			$this->error('切勿非法访问。');
		}
	}

}