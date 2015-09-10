<?php

class HomePageAction extends CommonAdminAction{

	public function index(){
		import('ORG.Util.Page');
		$count = M('home_page_mad')->where('is_del=0')->count();
		$page = new Page($count, 10);
		$limit = $page->firstRow.','.$page->listRows;

		$this->homePageList = M('home_page_mad')->where('is_del=0')->limit($limit)->select();
		$this->page = $page->show();
		$this->display();
	}

	public function addHomePage(){
		if($_GET['id']){
			$this->homeId = $_GET['id'];
			$this->homeId2 = $_GET['id'];
			$this->homePage = M('home_page_mad')->where('id='.$_GET['id'])->find();
		}else{
			$id = M('home_page_mad')->order('id desc')->getField('id', 1) + 1;
			$this->homeId2 = $id;
		}
		$this->display();
	}

	public function saveHomePage(){

		if($_POST){
			$data = array(
				'img' => $_POST['img'],
				'url' => $_POST['url'],
				'explain' => $_POST['explain'],
				'date_create' => date('Y-m-d H:i:s',time())
			);

			if($_POST['homeId']){
				$data['id'] = $_POST['homeId'];

				if(M('home_page_mad')->save($data)){
					$this->success('修改成功!', __APP__.'/Admin/HomePage');
				}else{
					$this->error('修改失败!');
				}

			}else{
				if(M('home_page_mad')->add($data)){
					$this->success('保存成功!', __APP__.'/Admin/HomePage');
				}else{
					$this->error('保存失败!');
				}
			}
			
		}else{
			$this->error('不允许非法访问!');
		}
	}

	public function delHomePage(){
		if($_GET){
			$id = $_GET['id'];

			if(M('home_page_mad')->where('id='.$id)->setField('is_del', 1)){
				$this->success('删除成功!', __URL__);
			}else{
				$this->error('删除失败!');
			}

		}else{
			$this->error('不允许非法访问!');
		}
	}

}