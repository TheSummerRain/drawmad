<?php

Class AdminUserAction extends CommonAdminAction{

	public function index(){
		import('ORG.Util.Page');
		if($_COOKIE['admin_purview'] == 0){
			$where = array(
				'user_admin_type' => C('DRAWMAD_ADMIN_TYPE'),
				'id' => $_COOKIE['admin_id']
			);
			$this->userList = M('user_admin')->where($where)->select();
			$tableTh = '';
		}else{
			$count = M('user_admin')->count();
			$page = new Page(($count), 10);
			$limit = $page->firstRow.','.$page->listRows;
			$sql = 
			<<<SQL
select a.*, b.`name` as  user_admin_type_name
from user_admin a 
LEFT JOIN game_mad b on a.user_admin_type = b.id
ORDER BY id  
limit $limit
SQL;
			$this->userList = M()->query($sql);
			$this->page = $page->show();
			$tableTh = '<th class="table-set">帐号类型</th>';
		}

		$this->tableTh = $tableTh;
		$this->display();
	}

	public function updatePassword(){
		if($_GET){
			$this->adminId = $_GET['id'];
			$this->display();

		}else{
			$this->error('参数错误');
		}
	}

	public function updatePwd(){
		//p($_POST);
		$validate = array(
		    array('oldPassword', '6,20', '密码限制长度为6-20位！', 0, 'length', 3),
		    array('password', '6,20', '新密码限制长度为6-20位！', 0, 'length', 3),
		    //array('rpassword','require','确认密码必须'), //默认情况下用正则进行验证
		    array('newPassword','password','确认密码不相同',0,'confirm'), // 验证确认密码是否和密码一致
	    );
	  	
		$dbUser = M('user_admin');
		if($dbUser->validate($validate)->create($_POST)){
			$password = md5($_POST['oldPassword']);

			$where = array(
				'id'=>$_POST['adminId'],
				'password'=>$password
			);
			$data = array('password'=>md5($_POST['password']));

			if(M('user_admin')->where($where)->count()){
				if(M('user_admin')->where('id='.$_POST['adminId'])->save($data)){
					$this->success('修改密码成功', __URL__);
				}
			}else{
				$this->error('旧密码输入错误！');
			}
		}else{
			$this->error($dbUser->getError());
		}

	}

	public function restartPassword(){
		if($_COOKIE['admin_purview'] != 1){
			$this->error('不允许非法访问!');
		}
		if($_REQUEST){
			
			if(M('user_admin')->where('id='.$_REQUEST['id'])->setField('password',md5('123456'))){
				$this->success('密码重置成功');
			}else{
				$this->success('请不要输入相同密码');
			}
		}
	}

	public function addAdminUser(){
		$_COOKIE['admin_purview'] == 0 ? $this->error('您没有权限增加管理员') : '';
		if($_GET['id']){
			$this->adminId = $_GET['id'];
			$this->adminId2 = $_GET['id'];
			$this->adminSingle = M('user_admin')->where('id='.$_GET['id'])->find();
		}else{
			$id = M('user_admin')->order('id desc')->getField('id', 1) + 1;
			$this->adminId = $id;
		}
		$this->selectType = M('game_mad')->select();
		$this->display();
	}

	public function saveAdmin(){
		
		if($_POST){
			
			$validate = array(
		        array('username', '5,20', '账号长度必须为6-20位！', 0, 'length', 3),
				array('username','','账号已经存在！',0,'unique',1), // 在新增的时候验证字段是否唯一
			    array('nick','require','昵称必须'), //默认情况下用正则进行验证
			    array('nick', '2,20', '昵称长度必须为2-20！', 0, 'length', 3),
			    array('password', '6,20', '密码限制长度为6-20位！', 0, 'length', 3),
			    array('rpassword','require','确认密码必须'), //默认情况下用正则进行验证
			    array('rpassword','password','确认密码不正确',0,'confirm'), // 验证确认密码是否和密码一致
		    );
			if(M("user_admin")->validate($validate)->create()){
	    		$create = M("user_admin")->create();
	    		$create['password'] = md5($create['password']);
	    		$create['create_time'] = time();

				if($_POST['id']){
					
					if(M('user_admin')->save($create)){
						$this->success('修改成功!', __APP__.'/Admin/AdminUser');
					}else{
						$this->error('修改失败!');
					}

				}else{
					if(M('user_admin')->add($create)){
						$this->success('保存成功!', __APP__.'/Admin/AdminUser');
					}else{
						$this->error('保存失败!');
					}
				}

	    	} else {
	    		$this->error(M('user_admin')->getError());
	    	}
	    	
			
		}else{
			$this->error('不允许非法访问!');
		}
	}

}