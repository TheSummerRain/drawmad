<?php

Class UserAction extends CommonGameAction {

	public function _initialize(){
		parent::_initialize();
		$this->madGroup = M('game_mad_group')->where('game_mad='.$_COOKIE['user_admin_type'])->select();
	}

	public function index(){
		import('ORG.Util.Page');

		$where = 'where b.game_id = '.$_COOKIE['user_admin_type'];
		
		if($_REQUEST['search']){
			$search = $_REQUEST['search'];
			$where = $where.' and a.id like "%'.$search.'%" or a.nicheng like "%'.$search.'%" or a.email like "%'.$search.'%"' ;
		}
		if($_REQUEST['state']){
			$where = $where.' and b.state_user = '.$_REQUEST['state'];
		}else{
			$where = $where.' and b.state_user = 0';
		}
		if($_REQUEST['madGroup']){
			$where = $where.' and b.mad_group = '.$_REQUEST['madGroup'];
		}

		$sqlInit = 
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
		
		$page = new Page(count(M()->query($sql)), 10);
		$limit = $page->firstRow.','.$page->listRows;
		$sql = returnSql($sqlInit,$where, $limit);

		$this->userList = M()->query($sql);
		$this->page = $page->show();
		

		$this->display();
	}


	public function purview(){
		if($_GET){
			$sql=
			<<<SQL
select a.*, b.role_group_id from user_mad a
LEFT JOIN user_role_group b on a.id = b.user_id
where a.id = '$_GET[userId]'
SQL;
			$userInfo = M()->query($sql)[0];
			$this->userInfo = $userInfo;
			$this->roleGroupList = M('role_group')->select();
			$this->userTypeList = M('user_type')->select();

			//$this->assign('waitSecond','0');
			$this->display();
		}else{
			$this->error('访问出错');
		}
	}

	public function updatePurview(){
		if($_POST){

			M('user_mad')->where('id='.$_POST['userId'])->setField('user_type', $_POST['userTypeReal']);
			$this->success('修改成功', __URL__);
		}else{
			$this->error('请不要非法访问');
		}
	}

	public function addUser(){
		if($_POST){
			$mad_group = $_POST['mad_group'];
			$game_id = $_COOKIE['user_admin_type'];
			if(empty($mad_group)){
				$mad_group = M('game_mad_group')->where('game_mad='.$game_id)->getField('id');
			}
			$data = array(
				'user_id' => $_POST['uid'],
				'state_user' => $_POST['state'],
				'mad_group' => $mad_group,
				'game_id' => $game_id,
				'date_turn' => date('Y-m-d H-i-s', time())
			);
			$where = array(
				'game_id' => $game_id,
				'user_id' => $_POST['uid'],
			);
			$state = M('game_mad_user')->where($where)->find();
			$state2 = M('user_mad')->where('id='.$_POST['uid'])->find();
			if(!$state2)$this->ajaxReturn('用户不存在', 'error', 0);
			if($state)$this->ajaxReturn('您已经添加过该用户', 'error', 0);

			if(M('game_mad_user')->add($data)){
				$this->ajaxReturn('增加成功', 'success', 1);
			}else{
				$this->ajaxReturn('增加失败', 'error', 0);
			}

		}else{
			$this->ajaxReturn('请不要非法访问', 'error', 0);
		}
	}

	public function passUser(){
		if($_REQUEST){
			$id = $_REQUEST['id'];
			$state = $_REQUEST['state'];

			if(M('game_mad_user')->where('id='.$id)->setField('state_user', $state)){
				$this->success('操作成功!');
			}else{
				$this->error('操作失败!');
			}
		}
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
			$madGroup = M('game_mad_group')->where('game_mad='.$_COOKIE['user_admin_type'])->select();

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
				$this->success('更新成功', __URL__.'');
			}else{
				$this->success('更新失败');
			}
		}else{
			$this->error('切勿非法访问。');
		}
	}



}