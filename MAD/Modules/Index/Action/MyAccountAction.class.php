<?php

Class MyAccountAction extends CommonAction{

	public function _initialize(){
		if(!isset($_SESSION['id'])){
			$this->error('请先登录', '__APP__/Login');
		}	
	}

	public function index(){
		$userInfo = M('user_mad');
		$this->userInfo = $userInfo->where(array('id'=>session('id')))->select();
		$this->display();
	}


	public function text(){

		if($_POST['text']){

			if(M('user_mad')->where(array('id'=>session('id')))->setField('text', $_POST['text'])){
				$this->success('修改成功', __URL__);
			}else{
				$this->error('签名相同');
			}
		}else{
			$this->error('修改成功');
		}

	}

	public function password(){
		$validate = array(
		    array('oldPassword', '6,20', '密码限制长度为6-20位！', 0, 'length', 3),
		    array('password', '6,20', '新密码限制长度为6-20位！', 0, 'length', 3),
		    //array('rpassword','require','确认密码必须'), //默认情况下用正则进行验证
		    array('rpassword','password','确认密码不相同',0,'confirm'), // 验证确认密码是否和密码一致
	    );
	  	
		$dbUser = M('user_mad');
		if($dbUser->validate($validate)->create($_POST)){
			$password = md5($_POST['oldPassword']);

			$where = array(
				'id'=>session('id'),
				'password'=>$password
			);
			$data = array('password'=>md5($_POST['password']));

			if(M('user_mad')->where($where)->count()){
				if(M('user_mad')->where('id='.session('id'))->save($data)){
					$this->success('修改密码成功', __URL__);
				}
			}else{
				$this->error('旧密码输入错误！');
			}
		}else{
			$this->error($dbUser->getError());
		}
	}

	//0隐藏 1显示
	public function is_friend(){
		if($_POST){
      		$uid_user = D('user_mad')->where('id='.session('id'))->find();
      		if($uid_user['is_friend'] == 1){
      			$update['is_friend'] = 0;
      			$uid_user = D('user_mad')->where('id='.session('id'))->save($update);
      			$this->ajaxReturn('已更改为隐藏','隐藏(点击切换)',0);
      		}else if($uid_user['is_friend'] == 0){
      			$update['is_friend'] = 1;
      			$uid_user = D('user_mad')->where('id='.session('id'))->save($update);
      			$this->ajaxReturn('已更改为显示','显示(点击切换)',0);
      		}
      		
      	}
	}

	public function is_uid(){

		if($_POST){
      		$uid_user = D('user_mad')->where('id='.session('id'))->find();
      		if($uid_user['is_uid'] == 1){
      			$update['is_uid'] = 0;
      			$uid_user = D('user_mad')->where('id='.session('id'))->save($update);
      			$this->ajaxReturn('已更改为隐藏','隐藏(点击切换)',0);
      		}else if($uid_user['is_uid'] == 0){
      			$update['is_uid'] = 1;
      			$uid_user = D('user_mad')->where('id='.session('id'))->save($update);
      			$this->ajaxReturn('已更改为显示','显示(点击切换)',0);
      		}
      	}
	}

	//用户上传头像
    public function uphead(){
		if(!session('id')){
			$this->error('请登录,切勿非法访问','__APP__/Login');
		}
	   	import('ORG.Net.UploadFile');//导入上传类文件
	    $upload = new UploadFile();// 实例化上传类
	    $upload->maxSize  = 3145728 ;// 设置附件上传大小
	    $upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
	    $upload->savePath =  './MAD/Modules/Index/Tpl/Public/user_head/';// 设置附件上传目录
		$upload->saveRule =session("username");//自定义保存的文件名
		$upload->thumb = true;			//是否生成缩略图
		$upload->thumbMaxWidth = '150,200';			//最大宽度
		$upload->thumbMaxHeight = '150,200';	//最大高度
		$upload->thumbPrefix = "userHead_";		//缩略图前缀
		$upload->uploadReplace = "true"; //是否覆盖同名文件
		$upload->thumbRemoveOrigin = "true"; //生成缩略图后是否删除原图
		
		if(!$upload->upload()) {// 上传错误提示错误信息
	        $this->error($upload->getErrorMsg());
	    }else{// 上传成功
	    	$head = $upload->getUploadFileInfo();
			$add['img'] = "userHead_".$head[0]['savename'];
			//dump($add);
			D('user_mad')->where('id='.session('id'))->save($add);
	    	 $this->success('上传成功！','__APP__/MyAccount');
	    }
		   // $head = $upload->getUploadFileInfo();
			//$add['img'] = "slt_".$head[0]['savename'];
    }
}