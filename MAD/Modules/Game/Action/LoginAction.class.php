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
				'password'=>md5($password)
				);
			$user = M('user_admin')->where($where)->find();

			if($user){
				setManualCookie($user['id'], 'game');
				
				$data = array(
					'last_login_time' => time(),
					'last_login_ip' => get_client_ip()
				);
				M('user_admin')->where($where)->setField($data);

				$this->redirect('../Game');

			}else{
				$this->error('账号或密码错误!');
			}

		}else{
			$this->error('不允许非法访问!');
		}
	}
}