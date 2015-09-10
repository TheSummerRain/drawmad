<?php

Class PurviewAction extends CommonAdminAction{

	public function index(){
		import('ORG.Util.Page');
		$count = M('role_group')->count();
		$page = new Page(($count), 10);
		$limit = $page->firstRow.','.$page->listRows;

		$sql =
		<<<SQL
select a.*, b.role_id from role_group a
LEFT JOIN role_group_role b on a.id = b.role_group_id
order by a.id
limit $limit
SQL;

		$this->roleGroupList = M('role_group')->query($sql);
		$this->roleList = M('role')->select();
		$this->page = $page->show();
		$this->display();
	}

	public function update(){

		if($_POST['role']){
			$rgid = substr($_POST['roleGroupId'], 3);
			$dbUserRole = M('role_group_role');
			$where = array('role_group_id' => $rgid);
			$data['role_group_id'] = $rgid;
			$data['role_id'] = implode(',',$_POST['role']);
			$dbUserRole->where($where)->delete();
			//p($dbUserRole->where($where)->select());

			if($dbUserRole->add($data)){
				$this->success('保存成功', __URL__);
			}else{
				$this->error('参数错误');
			}

		}else{
			$this->error('请至少选择一个权限');
		}

	}

}