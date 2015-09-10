<?php

Class CommonAction extends Action {

	//更新cookie
	public function _initialize(){
		
		if(!$this->isAjax()){
			cookie('HTTP_BACK', 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);
		}

		checkSession();

		addNotice();

		$this->noticeNum = count(getNotice('3,4', '0'));
	}

	/*public function loginout(){
		session_unset();
		session_destroy();
		//echo __APP__;die;
		//redirect (__GROUP__);
		$this->success('注销成功!', __GROUP__);
	}*/

}