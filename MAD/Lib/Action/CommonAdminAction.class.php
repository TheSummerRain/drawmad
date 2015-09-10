<?php

Class CommonAdminAction extends Action {

	public function _initialize(){

		if(!isset($_COOKIE['admin_id'])){
			$this->error('请先登录','__APP__/Admin/Login');
		}
		setManualCookie($_COOKIE['admin_id'], 'admin');
	}

	public function loginout(){
		cookie('admin_id',null);
		//session_unset();
		//session_destroy();
		/*session_unset()
		释放当前在内存中已经创建的所有$_SESSION变量，但不删除session文件以及不释放对应的sessionid
		session_destroy()
		删除当前用户对应的session文件以及释放sessionid，内存中的$_SESSION变量内容依然保留*/
		$this->success('注销成功!', '__APP__/Admin/Login');
	}

	//上传图片
	public function uploadify($expand = ''){
    	$targetFolder = $_POST['url']; // Relative to the root
    	
		//echo $_POST['token'];
		$verifyToken = md5($_POST['timestamp']);

		$name= $expand."home_".$_GET['id'];
		$name = str_replace(urldecode('%EF%BB%BF'), '', $name);
		if (!empty($_FILES) && $_POST['token'] == $verifyToken) {

			import("ORG.Net.UploadFile");
				//设置上传图片的规则
			$upload = new UploadFile();// 实例化上传类

			$upload->maxSize  = 134217728 ;// 设置附件上传大小

			$upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg','flv','mp4');// 设置附件上传类型

			$upload->savePath =  './MAD/Modules/Index/Tpl/Public/images/HomePage/';// 设置附件上传目录

			$upload->saveRule = $name;  //设置上传图片的规则
			
			$upload->uploadReplace = true;
			

			if(!$upload->upload()) {// 上传错误提示错误信息
			//return false;

			echo '<script>alert("'.$upload->getErrorMsg().'")</script>';
			//echo $targetPath;

			}else{// 上传成功 获取上传文件信息

				$info =  $upload->getUploadFileInfo();
				echo $info[0]["savename"];
			}
		}
    }
}