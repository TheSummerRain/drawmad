<?php

Class RegistAction extends PublicAction {
	
	public function index(){

		//echo APP_PATH;
		$this->display();
	}

	public function regist(){

		//$_validate 这个是自动验证
		$validate = array(
	        array('username', '6,20', '账号长度必须为6-20位！', 0, 'length', 3),
			array('username','','账号已经存在！',0,'unique',1), // 在新增的时候验证字段是否唯一
		    array('nicheng','require','昵称必须'), //默认情况下用正则进行验证
		    array('nicheng', '2,20', '昵称长度必须为2-20！', 0, 'length', 3),
		    array('nicheng','','昵称已经存在！',0,'unique',1), // 在新增的时候验证字段是否唯一
		    array('email','email','email格式错误'),  //就这!
		    array('email','','邮箱已经存在！',0,'unique',1), // 在新增的时候验证字段是否唯一
		    array('password', '6,20', '密码限制长度为6-20位！', 0, 'length', 3),
		    array('rpassword','require','确认密码必须'), //默认情况下用正则进行验证
		    array('rpassword','password','确认密码不正确',0,'confirm'), // 验证确认密码是否和密码一致
	    );

		$dbUser = M('user_mad');
		if($dbUser->validate($validate)->create($_POST)){
			//$_POST['password'] = md5($_POST['password']);
			$_POST['reg_time'] = time();
			$_POST['last_time'] = time();
			$_POST['reg_ip'] = get_client_ip();
			$_POST['last_ip'] = get_client_ip();
			$_POST['img'] = 'nohead.png';
			$userId = $dbUser->add($_POST);
    		
    		$yzm = md5(rand(1000000,999999999));

			$email_url = "http://".$_SERVER['HTTP_HOST'];//
			$main_url = $email_url."/index.php/Regist/activate?code=".$yzm."&userId=".$userId;
			
			$main= "欢迎成为DrawMAD的一员！请点击下面的链接完成邮箱验证：".$main_url."
			如果验证后仍然不能正常登录，请发邮件至drawmad@163.com说明你的情况（你的账号以及登录时的报错提示）
				这里是为MADer们量身打造的专属平台，虽然我们现在才蹒跚起步，但我们会事事都努力做到最好！
			";

    		$userSendMain = array(
    			'user_id'=>$userId, 
    			'code' => $yzm,
    			'email' => $_POST['email'],
    			'password' => md5($_POST['password']),
    			'add_time' => time(),
    			'main'=> $main);
    		M('user_send_email')->add($userSendMain);

			$uuu = "http://".$_SERVER["HTTP_HOST"];
			SendMail($_POST['email'],$_POST['username']."的激活邮件",$main);

    		echo '  <head><meta charset="utf-8" />';
    		echo '
				<div style="width:500px; margin:0 auto;text-align:center; margin-top:250px;">
					<span style="font-size:36px;color:#333;font-family："微软雅黑";">已发送激活邮件</span>;<br><br><br>
					<span style="font-size:18px;color:#333;font-family："微软雅黑";">激活邮件已发送到您的邮箱，请注意查收，若收件箱没有，请到垃圾箱看看</span>;<br><br><br>
					<span style="font-size:14px;color:#5da903;;font-family："宋体";"><a href="'.$uuu.'">返回首页</a></span>;<br>
				</div>
			';

			
			//<span style="font-size:14px;color:#999;;font-family："宋体";">如果您输入了错误的邮箱，请到登录→找回密码页面修改邮箱</span>;<br><br><br>
			/*session('id', $userId);
			session('logintime', time());
			session('loginip', get_client_ip());
			session('username', $_POST['username']);
			session('nicheng', $_POST['nicheng']);*/
		}else{
			$this->error($dbUser->getError());
		}
	}

	public function activate(){
		$code = $_GET['code'];
		$userId = $_GET['userId']?$_GET['userId']:$_GET[';userId'];
		
		$dbEmail = M('user_send_email');
		$dbUser = M('user_mad');
		if($code && $userId){
			$where = array('code'=> $code, 'user_id'=>$userId, 'is_activate'=>0);
				
			if($dbEmail->where($where)->select()){

				$this->userId = $userId;
				$this->code = $code;
				$this->display();
			}else{
				$this->error('该邮件已经验证或者参数错误,请重新接发邮件或者联系管理员...', "http://".$_SERVER["HTTP_HOST"]."");
			}
		}
	}

	public function activateUpdate(){
		$code = $_POST['code'];
		$userId = $_POST['userId'];
		$username = $_POST['username'];
		$nicheng = $_POST['nicheng'];

		$validate = array(
	        array('username', '6,20', '账号长度必须为6-20位！', 0, 'length', 3),
			array('username','','账号已经存在！',0,'unique',1), // 在新增的时候验证字段是否唯一
		    array('nicheng','require','昵称必须'), //默认情况下用正则进行验证
		    array('nicheng', '2,20', '昵称长度必须为2-20！', 0, 'length', 3),
		    array('nicheng','','昵称已经存在！',0,'unique',1), // 在新增的时候验证字段是否唯一
		    array('email','email','email格式错误'),  //就这!
		    array('email','','邮箱已经存在！',0,'unique',1), // 在新增的时候验证字段是否唯一
		    array('password', '6,20', '密码限制长度为6-20位！', 0, 'length', 3),
		    array('rpassword','require','确认密码必须'), //默认情况下用正则进行验证
		    array('rpassword','password','确认密码不正确',0,'confirm'), // 验证确认密码是否和密码一致
	    );

		$dbEmail = M('user_send_email');
		$dbUser = M('user_mad');
		if($dbUser->validate($validate)->create($_POST)){
			if($code && $userId){
				$where = array('code'=> $code, 'user_id'=>$userId, 'is_activate'=>0);
				
				if($dbEmail->where($where)->select()){
					$date = array(
						'is_activate' => '1',
						'username' => $username,
						'nicheng' => $nicheng,
						'password' => Md5($_POST['password'])
					);


					$dbUser->where(array('id'=>$userId))->setField($date);
					$dbEmail->where($where)->setField('is_activate',1);
					$this->success('激活成功,正在跳转首页...', "http://".$_SERVER["HTTP_HOST"]."");
				}else{
					$this->error('参数错误或者该邮件已经验证,请重新接发邮件或者联系管理员...', "http://".$_SERVER["HTTP_HOST"]."");
				}
			}

		}else{
			$this->error($dbUser->getError());
		}


		/*if($dbUser->where(array('username'=>$username))->count()){
			$this->error('该账号已经存在');
		}
		if($dbUser->where(array('nicheng'=>$nicheng))->count()){
			$this->error('该昵称已经存在');
		}*/

		
	}

	
}