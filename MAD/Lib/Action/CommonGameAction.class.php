<?php

class CommonGameAction extends Action{

	public function _initialize(){
		
		if(!isset($_COOKIE['game_id'])){
			$this->error('请先登录','__APP__/Game/Login');
		}
		
		setManualCookie($_COOKIE['game_id'], 'game');
	}

	public function loginout(){
		cookie('game_id', null);
		$this->success('注销成功', '__APP__/Game/Login');
	}
}