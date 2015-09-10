<?php

Class BackEmailAction extends CommonAction{

	public function index(){
		$this->display();
	}


	//找回邮箱
	public function zhyx(){
	
		//赋值条件
		$where['user'] = $_REQUEST['user'];
		$where['pwd'] = Md5($_REQUEST['pwd']);
		$email = $_REQUEST['email'];
		//根据条件查询邮箱
		$user = D('user_mad')->where($where)->select();
		//给发送邮件所需要的赋值。
		$save['user_id'] = $user[0]['id'];
    	$save['email'] = $dizhi = $user[0]['email'];
    	$save['yzm'] = Md5($yzm);
    	$save['add_time'] = time();
    	$save['email'] = $email;
		$uuu = "http://".$_SERVER["HTTP_HOST"];
		$main = "请点击网址进入修改您的邮箱"."".$uuu."/index.php/Backemail/dateyx?yzm=".$save['yzm']."&id=".$user[0]['id'];
		//核对后发送邮件
		if($user[0]['state']!=0){
			if($user){		
				$a = D('user_send_email')->where('user_id='.$save['user_id']) ->save($save);	
				if($a){
				SendMail($email,$where['user'].'的找回邮箱验证',$main);
				$this->success("找回成功，请到邮箱查收","__APP__/");
			}else if(D('user_send_email')->add($save)){
				SendMail($email,$where['user'].'的找回邮箱验证',$main);
				$this->success("找回成功，请到邮箱查收","__APP__/");
			}
			}
			else{
			$this->error('信息有误，请核对后输入');
			}
		}else{
			$this->error('此帐号已验证邮箱,无法更改');
		}
			
	}
	
	
	//更新邮箱
	public function dateyx(){
		//验证条件，如果正确给予激活
		$where['user_id'] = $_REQUEST['id'];
		$where['yzm'] = $_REQUEST['yzm'];
		$user = D('user_send_email')->where($where)->find();
		if($where['yzm'] = $user['yzm']){
			$save['state']=0;
			$save['email']=$user['email'];
			D('user_mad')->where('id='.$user['user_id'])->save($save);
			D('user_send_email')->where($where)->delete();
			$this->success("账号激活成功~邮箱更换成功~","__APP__/",10);
		}else{
			$this->error("非法访问","__APP__/");
		}
		
	
	}
	
	
}