<?php

Class LoginAction extends Action {

	public function index(){

		$this->display();
	}

	public function login(){
		if($_POST){
			$username = $_POST['username'];
			$password = $_POST['password'];
			$ispassword = $_POST['ispassword'];
			$where = array(
				'username'=> $username, 
				'password'=>md5($password), 
				'user_admin_type' => C('MOEWOLF_ADMIN_TYPE')
				);
			$user = M('user_admin')->where($where)->select()[0];

			if($user){
				//cookie('name','value');
				setManualCookie($user['id'], 'organize');

				$data = array(
					'last_login_time' => time(),
					'last_login_ip' => get_client_ip()
				);
				M('user_admin')->where($where)->setField($data);

				$this->redirect('../Organize');
				//$this->success('登录成功!', __APP__.'/Admin');

			}else{
				$this->error('账号或密码错误!');
			}

		}else{
			$this->error('不允许非法访问!');
		}
	}
}