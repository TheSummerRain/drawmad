<?php

Class LoginAction extends Action{

	public function index(){
		//p($_COOKIE);
		if(checkSession($_COOKIE[C('INDEX_ID')])){
			$this->error('您已经登录,不能进行该操作');
		}else{
			
			$this->display();
		}
	}

	public function login(){
		//if(!IS_POST) halt('页面不存在');//halt抛出异常 给程序员看的
		IS_POST?true:$this->error('不要非法访问');
		$db = M('user_mad');
		
		$user = $db->where(array('username'=>$_POST['email']))->select()[0];
		$user2 = $db->where(array('email'=>$_POST['email']))->select()[0];
		$user3 = $db->where(array('nicheng'=>$_POST['email']))->select()[0];
		
		if(!$user && !$user2 && !$user3){
			$this->error('登录失败,用户不存在!');
		}else if($user){

			$this->indexLogin($user, $db);
		}else if($user2){
			
			$this->indexLogin($user2 ,$db);
		}else if($user3){
			
			$this->indexLogin($user3, $db);
		}

	}

	public function indexLogin($user, $db){
		
		if($user['state']){
				$this->error('登录失败，请您先激活账号，若无法解决请联系管理员。');
		}else{

			if($user['password'] == md5($_POST['password'])){

				setManualSession(md5($user['id']));
				if($_POST['ispassword']){
			        cookie(C('INDEX_ID'), md5($user['id']), 60*60*24*30);
			        session('ispassword', $ispassword);
			    }else{
			    	cookie(C('INDEX_ID'), null);
			    }

				$data = array('last_time'=>time(), 'last_ip'=> get_client_ip());
				$db->where('id='.$user['id'])->setField($data);

				//$this->success('__GROUP__', );
				//$this->redirect(GROUP_NAME.'/Login/index');
				//$this->redirect($_SERVER['HTTP_REFERER']);
				redirect($_COOKIE['HTTP_BACK']);
			}else{
				$this->error('登录失败,密码错误!');
			}
		}
	}

	public function loginout(){
		session_unset();
		session_destroy();
		cookie(C('INDEX_ID'), null);
		$this->success('注销成功!', __GROUP__);
	}

	public function verify(){
		//import('ORG.Util.Image');
		//Image::buildImageVerify();
		import('Class.Image',APP_PATH);
		Image::verify();
	}

	
}