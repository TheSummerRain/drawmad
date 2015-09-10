<?php

Class PublicAction extends CommonAction {

	/*public function _initialize(){
		
		addNotice();

		$this->noticeNum = count(getNotice('3,4', '0'));
	}*/

	public function collect(){
		
		if(!session('id')){
    		$this->ajaxReturn("请先登录","Error",2);
    	}
		
		$all['video_id']=$_REQUEST['video_id'];
		$all['user']=$_SESSION['username'];
		$all['user_id']=$_SESSION['id'];
		
		$coll=D('video_collect');
		
		$result=$coll->where($all)->select();
		$where['id'] = $all['video_id'];
		if($result){
			$this->ajaxReturn("你已经收藏啦","Error",0);
		}else{

			$all['collect_date']=date('Y-m-d H:i:s', time());
			$add=$coll->add($all);
			if($add){
				//D('video')->where($where)->setInc('scnum');
				$this->ajaxReturn("收藏啦","Error",1);
				//echo "<script type='text/javascript'>window.close();</script>";
			}else{
				$this->ajaxReturn("收藏失败！请联系管理员...","Error",0);
			}
		}
		$this->display();
	}

	public function addFans(){
		
		if(isset($_SESSION['id'])){
			if(!($_POST['user_friend_id'] && $_POST['user_friend_id'])){
				$this->ajaxReturn('参数错误','',0);
			}

			$where = array(
				'user_friend_id'=>$_POST['user_friend_id'], 
				'user_id'=>session('id'));
			$db = M('user_friend')->where($where)->select();

			if(session('id') == $_POST['user_friend_id']){
				$this->ajaxReturn('不能自己关注自己','',0);
			}else if($db){
				$this->ajaxReturn('您已经关注过啦。再喜欢也不能关注两次！','',0);
			}else{

				$fans = array(
					'user_friend_id' => $_POST['user_friend_id'],
					'user_id' =>session('id'),
					'date' => date('Y-m-d H:i:s', time())
				);
				
				if(M('user_friend')->add($fans)){
					$this->ajaxReturn('关注成功','',1);
				}else{
					$is_friend = '关注失败';
				}

			}

		}else{
			$this->ajaxReturn('请先登录','',2);
		}
	}

    //取消关注
    public function qxFriend(){
    	
    	if($_POST['friend_id']){
    		$where_focus = array(
    			'user_friend_id'=>$_POST['friend_id'],
    			'user_id'=>session('id')
    		);
    		$limit =D('user_friend')->where($where_focus)->delete();
    		if($limit == 1){
    			$this->ajaxReturn('取消成功~','error',1);
    		}else {
    			$this->ajaxReturn('取消失败~','error',0);
    		}
    	}else{
    		$this->ajaxReturn('没有接收到值','error',0);
    	}
    }
    
    //删除收藏
    public function delSc(){
    	if(!$_REQUEST['collect_id']){
    		$this->ajaxReturn('不允许非法访问','error',0);
    	}

    	$where['id'] = $_REQUEST['collect_id'];
    	$where['user_id'] = session('id');

    	$yesno_sc = D('video_collect')->where($where)->delete();
    	if($yesno_sc){
    		$this->ajaxReturn('删除成功','error',1);
    	}else{
    		$this->ajaxReturn('删除失败','error',0);
    	}
    }
    

	public function up_video($abc, $URL){
    	if(!session('id')){
    		$this->error('切勿非法访问');
    	}
		$bq = $_REQUEST['biaoqian1'];
		$bq2 = $_REQUEST['biaoqian2'];
		$bq3 = $_REQUEST['biaoqian3'];
		if($bq && $bq2){
			$this->error('只能选择同类标签。');
		}elseif($bq2 && $bq3){
			$this->error('只能选择同类标签。');
		}else if($bq3 && $bq){
			$this->error('只能选择同类标签。');
		}
		
		if(D("video")->create()){
    		$create = D("video")->create();
    	} else {
    		$this->error(D('video')->getError());
    	}


		$create['fengmian'] = str_replace(urldecode('%EF%BB%BF'), '', $create['fengmian']);
		$create['video_path'] = str_replace(urldecode('%EF%BB%BF'), '', $create['video_path']);
		if(stristr($create['fengmian'],'<!DOCTYPE html PUBLIC') || stristr($create['video_path'],'<!DOCTYPE html PUBLIC')){
    		$this->error('视频或者封面上传错误,请检查后重新上传');
    	}
		//p(urlencode($create['fengmian']));die; 去除BOM头
		if($create['fengmian'] == null){
			$this->error('请上传封面~');
		}
		if($create['video_path'] == null){
			$this->error('请上传视频~');
		}
		
    	if($_REQUEST['biaoqianType'] == '1'){
    		$da_biaoqian = "AMV / ";

			$tempbq = array();
			$tempbq2 = array();
			foreach ($bq as $key => $value) {
				$tempbq[$key] = explode('-',$bq[$key])[0];
				$tempbq2[$key] = explode('-',$bq[$key])[1];
			}
			$create['biaoqian'] = $tempbq;

    	}else if($_REQUEST['biaoqianType'] == '2'){
    		$da_biaoqian = "M@D / ";

			$tempbq = array();
			$tempbq2 = array();
			foreach ($bq2 as $key => $value) {
				$tempbq[$key] = explode('-',$bq2[$key])[0];
				$tempbq2[$key] = explode('-',$bq2[$key])[1];
			}
			$create['biaoqian'] = $tempbq;

    	}else{
			$da_biaoqian = "MV / ";

			$tempbq = array();
			$tempbq2 = array();
			foreach ($bq3 as $key => $value) {
				$tempbq[$key] = explode('-',$bq3[$key])[0];
				$tempbq2[$key] = explode('-',$bq3[$key])[1];
			}
			
			$create['biaoqian'] = $tempbq;
    	}
    	
		$create['zuozhe'] = session('nicheng');
		if($create['wg_time'] == null){
			$this->error('请填写完稿时间~如：2001-01-01');
		}
		$create['video_type_ids'] = implode(',',$tempbq2);
		$create['biaoqian'] = $da_biaoqian.implode(' / ',$tempbq);
		
		
		//赋值剩下的用户信息
		$create['user_id'] = session('id');
		$create['is_original'] = $abc;
		$create['time'] = date('Y-m-d H:i:s', time());
		$yesno = D('video')->add($create);
		if($yesno){
			$this->success('上传成功~请等待审核。即将为您跳转到主页','__APP__/');
		}else{
			$this->error('上传失败了~若您无法解决请联系管理员');
		}
	}
	public function up_video2($abc, $URL){
    	
    	if(!session('id')){
    		$this->ajaxReturn('切勿非法访问', 'error', 1);
    	}
		$bq = $_REQUEST['biaoqian1'];
		$bq2 = $_REQUEST['biaoqian2'];
		$bq3 = $_REQUEST['biaoqian3'];
		if($bq && $bq2){
    		$this->ajaxReturn('只能选择同类标签。', 'error', 1);
		}elseif($bq2 && $bq3){
    		$this->ajaxReturn('只能选择同类标签。', 'error', 1);
		}else if($bq3 && $bq){
    		$this->ajaxReturn('只能选择同类标签。', 'error', 1);
		}
		if(!$bq && !$bq2 && !$bq3){
    		$this->ajaxReturn('至少请选择一个标签!', 'error', 1);
		}
		$create = $_POST;

		$create['fengmian'] = str_replace(urldecode('%EF%BB%BF'), '', $create['fengmian']);
		$create['video_path'] = str_replace(urldecode('%EF%BB%BF'), '', $create['video_path']);
		
		if(stristr($create['fengmian'],'<!DOCTYPE html PUBLIC') || stristr($create['video_path'],'<!DOCTYPE html PUBLIC')){
    		$this->ajaxReturn('视频或者封面上传错误,请检查后重新上传.(ps:换个浏览器试试?)', 'error', 1);
    	}
		//p(urlencode($create['fengmian']));die; 去除BOM头
		if($create['fengmian'] == null){
    		$this->ajaxReturn('请上传封面~', 'error', 1);
		}
		if($create['video_path'] == null){
    		$this->ajaxReturn('请上传视频~', 'error', 1);
		}
		
    	if($_REQUEST['biaoqianType'] == '1'){
    		$da_biaoqian = "AMV / ";

			$tempbq = array();
			$tempbq2 = array();
			foreach ($bq as $key => $value) {
				$tempbq[$key] = explode('-',$bq[$key])[0];
				$tempbq2[$key] = explode('-',$bq[$key])[1];
			}
			$create['biaoqian'] = $tempbq;

    	}else if($_REQUEST['biaoqianType'] == '2'){
    		$da_biaoqian = "M@D / ";

			$tempbq = array();
			$tempbq2 = array();
			foreach ($bq2 as $key => $value) {
				$tempbq[$key] = explode('-',$bq2[$key])[0];
				$tempbq2[$key] = explode('-',$bq2[$key])[1];
			}
			$create['biaoqian'] = $tempbq;

    	}else if($_REQUEST['biaoqianType'] == '3'){
			$da_biaoqian = "MV / ";

			$tempbq = array();
			$tempbq2 = array();
			foreach ($bq3 as $key => $value) {
				$tempbq[$key] = explode('-',$bq3[$key])[0];
				$tempbq2[$key] = explode('-',$bq3[$key])[1];
			}
			
			$create['biaoqian'] = $tempbq;
    	}else{
    		$this->ajaxReturn('至少请选择一个标签!', 'error', 1);
    	}
    	
		$create['zuozhe'] = session('nicheng');
		if($create['wg_time'] == null){
    		$this->ajaxReturn('请填写完稿时间~如：2001-01-01', 'error', 1);
		}
		$create['video_type_ids'] = implode(',',$tempbq2);
		$create['biaoqian'] = $da_biaoqian.implode(' / ',$tempbq);
		
		
		//赋值剩下的用户信息
		$create['user_id'] = session('id');
		$create['is_original'] = $abc;
		$create['time'] = date('Y-m-d H:i:s', time());
		$create['update_time'] = date('Y-m-d H:i:s', time());
		$yesno = D('video')->add($create);
		if($yesno){
    		$this->ajaxReturn('上传成功~请等待审核。即将为您跳转到主页', 'success', 2);
		}else{
    		$this->ajaxReturn('上传失败了~若您无法解决请联系管理员', 'error', 1);
		}
	}



	function getTime($name){ 
		if(!file_exists($name)){
			//echo "文件不存在";exit;
		}
			$flv_data_length=filesize($name); 
			$fp = @fopen($name, 'rb'); 
			$flv_header = fread($fp, 5); 
			fseek($fp, 5, SEEK_SET); 
			$frame_size_data_length =BigEndian2Int(fread($fp, 4)); 
			$flv_header_frame_length = 9; 
		if ($frame_size_data_length > $flv_header_frame_length) {
			fseek($fp, $frame_size_data_length - $flv_header_frame_length, SEEK_CUR); 
		}
			$duration = 0; 
		while ((ftell($fp) + 1) < $flv_data_length) {
			$this_tag_header = fread($fp, 16); 
			$data_length = BigEndian2Int(substr($this_tag_header, 5, 3)); 
			$timestamp = BigEndian2Int(substr($this_tag_header, 8, 3)); 
			$next_offset = ftell($fp) - 1 + $data_length; 
			if ($timestamp > $duration) {
				$duration = $timestamp; 
			}
			fseek($fp, $next_offset, SEEK_SET); 
		}
			fclose($fp); 
		return $duration; 
	}

	//检测标题
	public function re_title(){
		if($_REQUEST['title'] == null){
			$this->ajaxReturn('请先输入标题','error',0);
		}
		$where0['title']=array('like',$_REQUEST['title']);
		$yesno0 = D('video')->where($where0)->select();
		if($yesno0){
			$this->ajaxReturn('已存在','error',1);
		}
		
		$where['title']=array('like','%'.$_REQUEST['title'].'%');
		$yesno = D('video')->where($where)->select();
		if(count($yesno) >=0){
			$this->ajaxReturn('可用！','error',0);
		}else if(!$yesno){
			$this->ajaxReturn('可用但已有类似！','error',0);
		}

	}

	/** 
	 * 判断字符编码  并输出想要的编码 
	 * Enter description here ... 
	 * @param unknown_type $string 
	 * @param unknown_type $outEncoding 
	 */  
	function safeEncoding($string,$outEncoding ='UTF-8') {  
        $encoding = "UTF-8";  
        for($i=0;$i<strlen($string);$i++){  
            if(ord($string{$i})<128)  
            continue;  
            if((ord($string{$i})&224)==224){  
                //第一个字节判断通过  
                $char = $string{++$i};  
                if((ord($char)&128)==128){  
                    //第二个字节判断通过  
                    $char = $string{++$i};  
                    if((ord($char)&128)==128)  
                    {  
                        $encoding = "UTF-8";  
                        break;  
                    }  
                }  
            }  
            if((ord($string{$i})&192)==192){  
                //第一个字节判断通过  
                $char = $string{++$i};  
                if((ord($char)&128)==128){  
                    // 第二个字节判断通过  
                    $encoding = "GB2312";  
                    break;  
                }
            }
        }
           
        if(strtoupper($encoding) == strtoupper($outEncoding))  
        return $string;  
        else  
        return iconv($encoding,$outEncoding,$string);  
    }

    //上传图片
	public function uploadify($expand = ''){
    	$targetFolder = $_POST['url']; // Relative to the root
    	
		//echo $_POST['token'];
		$verifyToken = md5($_POST['timestamp']);

		$name= $expand."id_".$_GET['id']."_num_".$_GET['num'];
		$name = str_replace(urldecode('%EF%BB%BF'), '', $name);
		if (!empty($_FILES) && $_POST['token'] == $verifyToken) {

			import("ORG.Net.UploadFile");
				//设置上传图片的规则
			$upload = new UploadFile();// 实例化上传类

			$upload->maxSize  = 134217728 ;// 设置附件上传大小

			$upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg','flv','mp4');// 设置附件上传类型

			$upload->savePath =  './MAD/Modules/Index/Tpl/Public/videos/';// 设置附件上传目录

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

    public function check(){
		$dbuser = M('user_mad');
		
		$username = $_GET['username'];
		$nicheng = $_GET['nicheng'];
		$email = $_GET['email'];
		$password = $_GET['password'];
		$rpassword = $_GET['rpassword'];
		$oldpassword = $_GET['oldpassword'];

		if($username){
			if(strlen($username) >=6 && strlen($username)<=20){
				
				if(!$dbuser->where(array('username'=>$username))->count()){
					echo '可用';
				}else{
					echo '该账号已经存在';
				}
				
			}else{
				echo '账号长度必须为6-20位!';
			}
		}
		if($nicheng){
			if(strlen($nicheng) >=2 && strlen($nicheng)<=20){
				if(!$dbuser->where(array('nicheng'=>$nicheng))->count()){
					echo '可用';
				}else{
					echo '该昵称已经存在';
				}
			}else{
				echo '昵称长度必须为2-20！';
			}
		}
		if($email){
			if(eregi("^[_\.0-9a-z-]+@([0-9a-z][0-9a-z-]+\.)+[a-z]{2,3}$",$email) ==1){
				if(!$dbuser->where(array('email'=>$email))->count()){
					echo '可用';
				}else{
					echo '该邮箱已经存在';
				}
			}else{
				echo '邮箱格式不正确!';
			}
		}

		if($password){
			if(strlen($password) >5 && strlen($password) <=20){
				session('password', $password);
				echo '格式正确';
			}else{
				echo '密码长度限制在6-20位！';
			}
		}

		if($rpassword){
			if(strlen($rpassword) >5 && strlen($rpassword) <=20){
				
				if($rpassword == session('password')){
					echo '正确';
				}else{
					echo '两次输入密码不同';
				}
			}else{
				echo '密码长度限制在6-20位！';
			}
		}

		if($oldpassword){
			if(strlen($oldpassword) >5 && strlen($oldpassword) <=20){
				$where = array(
					'id'=>$_SESSION['id'],
					'password'=> md5($oldpassword)
				);
				if($dbuser->where($where)->find()){
					echo '正确';
				}else{
					echo '密码错误';
				}
			}else{
				echo '密码长度限制在6-20位！';
			}
		}
	}


}