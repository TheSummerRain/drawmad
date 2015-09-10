<?php

class NoticeAction extends CommonGameAction{

	public function index(){
		import('ORG.Util.Page');

		$where = 'game_mad_id = '.$_COOKIE['user_admin_type'].' and type='.C('NOTICE_TYPE_NOTICE');

		$count = M('notice')->where($where)->count();
		$page = new Page(($count), 10);
		$limit = $page->firstRow.','.$page->listRows;

		$this->noticeList = M('notice')->where($where)->limit($limit)->select();
		$this->page = $page->show();
		$this->display();
	}

	public function modelNotice(){
		import('ORG.Util.Page');
		$where = 'game_mad_id='.$_COOKIE['user_admin_type'];
		$count = M('notice_model')->where($where)->count();
		$page = new Page(($count), 10);
		$limit = $page->firstRow.','.$page->listRows;

		$this->noticeList = M('notice_model')->where($where)->limit($limit)->select();
		$this->page = $page->show();
		$this->display();
	}

	public function addModelNotice(){

		if($_GET['id']){
			$this->noticeId = $_GET['id'];
			$this->noticeId2 = $_GET['id'];
			$this->noticeMessage = M('notice_model')->where('id='.$_GET['id'])->getField('message');
		}else{
			$id = M('notice_model')->order('id desc')->getField('id', 1) + 1;
			$this->noticeId = $id;
		}

		$this->display();
	}


	public function addNotice(){

		if($_GET['id']){
			$this->noticeId = $_GET['id'];
			$this->noticeId2 = $_GET['id'];
			$this->noticeMessage = M('notice')->where('id='.$_GET['id'])->getField('message');
		}else{
			$id = M('notice')->order('id desc')->getField('id', 1) + 1;
			$this->noticeId = $id;
		}

		$this->display();
	}

	public function addlocateNotice(){

		if($_GET){
			$this->noticeId = $_GET['id'];
			$this->noticeId2 = $_GET['id'];
			$this->noticeMessage = M('notice')->where('id='.$_GET['id'])->getField('message');
		}else{
			$id = M('notice')->order('id desc')->getField('id', 1) + 1;
			$this->noticeId = $id;
		}

		p($this->noticeMessage);
		$this->display();
	}

	public function saveModelNotice(){

		if($_POST){
			$data = array(
				'name' => $_POST['name'],
				'content' => $_POST['content'],
				'game_mad_id' => $_COOKIE['user_admin_type']
			);

			if($_POST['noticeId2']){
				$data['id'] = $_POST['noticeId2'];

				if(M('notice_model')->save($data)){
					$this->success('修改成功!', __APP__.'/Game/Notice/modelNotice');
				}else{
					$this->error('修改失败!');
				}

			}else{
				if(M('notice_model')->add($data)){
					$this->success('保存成功!', __APP__.'/Game/Notice/modelNotice');
				}else{
					$this->error('保存失败!');
				}
			}

			
		}else{
			$this->error('不允许非法访问!');
		}
	}

	public function savelocateNotice(){

		if($_POST){
			$data = array(
				'message' => $_POST['message'],
				'date' => date('Y-m-d H:i:s', time()),
				'type' => 4
			);

			if($_POST['noticeId2']){
				$data['id'] = $_POST['noticeId2'];

				if(M('notice')->save($data)){
					$this->success('修改成功!', __APP__.'/Game/Notice/locateNotice');
				}else{
					$this->error('修改失败!');
				}

			}else{
				if(M('notice')->add($data)){
					$this->success('保存成功!', __APP__.'/Game/Notice/locateNotice');
				}else{
					$this->error('保存失败!');
				}
			}
			
		}else{
			$this->error('不允许非法访问!');
		}
	}

	public function saveNotice(){

		if($_POST){
			$data = array(
				'message' => $_POST['message'],
				'date' => date('Y-m-d H:i:s', time()),
				'game_mad_id' => $_COOKIE['user_admin_type'],
				'type' => C('NOTICE_TYPE_NOTICE')
			);

			if($_POST['noticeId2']){
				$data['id'] = $_POST['noticeId2'];

				if(M('notice')->save($data)){
					$this->success('修改成功!', __APP__.'/Game/Notice');
				}else{
					$this->error('修改失败!');
				}

			}else{
				if(M('notice')->add($data)){
					$this->success('保存成功!', __APP__.'/Game/Notice');
				}else{
					$this->error('保存失败!');
				}
			}

			
		}else{
			$this->error('不允许非法访问!');
		}
	}

	public function delNotice(){
		if($_GET){
			$id = $_GET['id'];

			if(M('notice')->where('id='.$id)->delete()){
				$this->success('删除成功!', __URL__);
			}else{
				$this->error('删除失败!');
			}

		}else{
			$this->error('不允许非法访问!');
		}
	}


	public function delModelNotice(){
		if($_GET){
			$id = $_GET['id'];

			if(M('notice_model')->where('id='.$id)->delete()){
				$this->error('删除成功!', __URL__);
			}else{
				$this->error('删除失败!');
			}

		}else{
			$this->error('不允许非法访问!');
		}
	}

	public function locateNotice(){
		import('ORG.Util.Page');
		$where = 'game_mad_id = '.$_COOKIE['user_admin_type'].' and type='.C('NOTICE_TYPE_DEFINE');
		$count = M('notice')->where($where)->count();
		$page = new Page(($count), 10);
		$limit = $page->firstRow.','.$page->listRows;
		
		$where = 'a.game_mad_id = '.$_COOKIE['user_admin_type'].' and a.type='.C('NOTICE_TYPE_DEFINE');

		$sql = 
       	<<<SQL
select a.*, b.nicheng, b.username, b.email from notice a
LEFT JOIN user_mad b on a.user_id = b.id
where $where
limit $limit
SQL;
		
		//M('notice')->where('type=4')->limit($limit)->select();
		$this->noticeList = M()->query($sql);
		$this->page = $page->show();
		$this->display();
	}
}