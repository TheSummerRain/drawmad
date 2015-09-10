<?php

class CommonOrganizeAction extends Action{

	public function _initialize(){
		
		if(!isset($_COOKIE['organize_id'])){
			$this->error('请先登录','__APP__/Organize/Login');
		}
		setManualCookie($_COOKIE['organize_id'], 'organize');
	}

	public function loginout(){
		cookie('organize_id', null);
		$this->success('注销成功', '__APP__/Organize/Login');
	}
}