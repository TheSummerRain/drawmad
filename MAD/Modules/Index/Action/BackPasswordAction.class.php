<?php

Class BackPasswordAction extends PublicAction{

	public function index(){
		$this->display();
	}

	//找回密码
	public function back(){
		
		/*if(!D('user_send_email')->create()){
	    	$this->error(D('user_send_email')->getError());	
	    }*/
	    if(!$_POST){
	    	$this->error('请填写用户名密码');
	    }

		
		//$where['user'] = $_REQUEST['user'];
		$where['email'] = $_REQUEST['email'];
		
		$user = D('user_mad')->where($where)->select();
		if(!$user){
	    	$this->error("找回失败,资料填写错误");
	    }

    	$dizhi = $user[0]['email'];
    	$title = $user[0]['user']."的验证码";
    	$yzm = rand(1000000,999999999);
		$id = $user[0]['id'];
    	
    	$save['user_id'] = $user[0]['id'];
    	$save['email'] = $dizhi = $user[0]['email'];
    	$save['code'] = Md5($yzm);
    	$save['add_time'] = time();
    	$save['type'] = '1';//找回密码
    	$email_url = "http://".$_SERVER['HTTP_HOST'];//---------------
    	$main = "请点击网址进入修改您的密码". $email_url."/index.php/BackPassword/date?yzm=".$save['code']."&id=".$id;
    	
    	$save['main'] = $main;

    	$back = D('user_send_email');
	    $where = array(
			'user_id'=>$user[0]['id'],
			'type'=>'1',
			'is_activate'=>'0',
			);

	    if($back->where($where)->save($save)){
	    	SendMail($dizhi,$title,$main);
	    	$this->success("找回成功，请到邮箱查收","http://localhost");
	    }else if($back->add($save)){
	    	SendMail($dizhi,$title,$main);
	    	$this->success("找回成功，请到邮箱查收","__APP__/");
    	}

	}

	//修改密码页的判断
	public function date(){
		$yzm = $_REQUEST['yzm'];
		$id = $_REQUEST['id']?$_REQUEST['id']:$_REQUEST['amp;id'];

		$sql =
		<<<SQL
select * from (
select 
*, 
ifnull(TIMESTAMPDIFF(DAY,FROM_UNIXTIME(add_time, '%Y-%m-%d' ) ,current_date()), 0) as difference
from user_send_email
) a
where a.user_id = '$id' and a.code = '$yzm' and 
a.type = 1 and  a.is_activate = 0 and a.difference = 0
SQL;
		$back = M()->query($sql)[0];
		
		if($back){
			
			$this->userId = $back['user_id'];
			$this->emailId = $back['id'];
			$this->display();
		}else{
			$this->error("参数错误或已超过24小时！","__APP__/");
		}
		
	}
	
	
	//修改密码参数
	public function update(){

		$user = D("user_mad");
		$save['password'] = Md5($_REQUEST['password']);
		
		if($user->where('id='.$_REQUEST['userId'])->save($save)){
			D('user_send_email')->where('id='.$_REQUEST['emailId'])->setField('is_activate', 1);
			$this->success("修改成功","__APP__/");
		}else{
			$this->error("修改失败，资料错误");
		}

	
	}
}