<?php

Class UpVideoAction extends PublicAction{

	public function _initialize(){

		parent::_initialize();
		if(!isset($_SESSION['id'])){
			//$this->error('请先登录','__APP__/Login');
			$this->redirect(__APP__.'/Login');
		}
	}

	public function index(){

		
		$this->videoBigTypeList = videoBigType();

		$get_video_num = D('Video')->where('user_id='.session('id'))->order('time desc')->limit(1)->find();
		$get_video_num = explode('_',$get_video_num['video_path']);
		$get_video_num = explode('_',$get_video_num[count($get_video_num)-1]);
		$get_video_num = explode('.',$get_video_num[0])[0] + 1;

    	$this->assign('get_video_num',$get_video_num);
    	$this->assign('get_user_id',session('id'));
		$this->display();
	}


	public function upVideo(){
		parent::up_video2(1, __ROOT__.'/'.APP_NAME.'/Modules/'.GROUP_NAME.'/Tpl/Public');
		
	}
	public function upVideoBy(){
		parent::up_video(2, __ROOT__.'/'.APP_NAME.'/Modules/'.GROUP_NAME.'/Tpl/Public');
	}
}