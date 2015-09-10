<?php

class ResultAction extends CommonGameAction {

	public function index(){

		$this->display();
	}

	public function saveResult(){
		p($_POST);
	}
}