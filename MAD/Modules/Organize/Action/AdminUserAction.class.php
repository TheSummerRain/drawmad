<?php

Class AdminUserAction extends CommonOrganizeAction{

	public function index(){
		import('ORG.Util.Page');
		$count = M('user_admin')->count();
		$page = new Page(($count), 10);
		$limit = $page->firstRow.','.$page->listRows;

		$this->userList = M('user_admin')->where('user_admin_type='.C('MOEWOLF_ADMIN_TYPE'))->limit($limit)->select();
		$this->page = $page->show();
		$this->display();
	}

	public function updatePassword(){
		if($_GET){
			$this->adminId = $_GET['id'];
			$this->display();

		}else{
			$this->error('参数错误');
		}
	}

	public function updatePwd(){
		//p($_POST);
		$validate = array(
		    array('oldPassword', '6,20', '密码限制长度为6-20位！', 0, 'length', 3),
		    array('password', '6,20', '新密码限制长度为6-20位！', 0, 'length', 3),
		    //array('rpassword','require','确认密码必须'), //默认情况下用正则进行验证
		    array('newPassword','password','确认密码不相同',0,'confirm'), // 验证确认密码是否和密码一致
	    );
	  	
		$dbUser = M('user_admin');
		if($dbUser->validate($validate)->create($_POST)){
			$password = md5($_POST['oldPassword']);

			$where = array(
				'id'=>$_POST['adminId'],
				'password'=>$password
			);
			$data = array('password'=>md5($_POST['password']));

			if(M('user_admin')->where($where)->count()){
				if(M('user_admin')->where('id='.$_POST['adminId'])->save($data)){
					$this->success('修改密码成功', __URL__);
				}
			}else{
				$this->error('旧密码输入错误！');
			}
		}else{
			$this->error($dbUser->getError());
		}

	}

}