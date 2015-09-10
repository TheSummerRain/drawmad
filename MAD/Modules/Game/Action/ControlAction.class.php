<?php

class ControlAction extends CommonGameAction{

	public function index(){

		$this->controlList = M('game_mad_control')->where('game_id='.$_COOKIE['user_admin_type'])->select();
		$this->display();
	}
	
	public function changeState(){
		if(!empty($_POST['data'])){
			$id = $_POST['data'];

			$val = M('game_mad_control')->field('id')->where('state='.$id)->find()['id'];
			$val = $val == 1 ? 0 : 1;
			
			if(M('game_mad_control')->where('id='.$id)->setField('state', $val)){

				$this->ajaxReturn('更新成功', 'success', 1);
			}else{
				$this->ajaxReturn('参数传递错误', 'error', 0);
			}
			
		}else{
			$this->ajaxReturn('参数传递错误', 'error', 0);
		}
	}
}