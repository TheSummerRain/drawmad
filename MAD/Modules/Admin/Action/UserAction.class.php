<?php

Class UserAction extends CommonAdminAction {

	public function index(){
		import('ORG.Util.Page');

		$where = '';
		if($_POST){
			$search = $_POST['search'];
			$where = 'and a.id like "%'.$search.'%" or a.nicheng like "%'.$search.'%" or a.email like "%'.$search.'%"' ;
		}

		$sql = 
		<<<SQL
select a.*, count(b.id) as video_num, IFNULL(c.video_collect_num, 0) as video_collect_num,
IFNULL(e.user_friend_count, 0) user_friend_count, d.state as name_state,
IFNULL(f.user_count, 0) user_count
from user_mad a
LEFT JOIN (
select * from video
where is_del = 0
) b on a.id = b.user_id

LEFT JOIN(
select count(id) as video_collect_num, user_id
from video_collect where user_id = '$id'
) c on a.id = c.user_id
LEFT JOIN user_state d on a.user_state = d.id
LEFT JOIN (
select user_friend_id, count(*) as user_friend_count 
from user_friend
GROUP BY user_friend_id
) e on a.id = e.user_friend_id
LEFT JOIN (
select user_id, count(*) as user_count 
from user_friend
GROUP BY user_id
)f on a.id = f.user_id

where 1 = 1 $where
GROUP BY a.id
SQL;
		
		$page = new Page(count(M()->query($sql)), 10);
		$limit = $page->firstRow.','.$page->listRows;
		$sql = 
		<<<SQL
select a.*, count(b.id) as video_num, IFNULL(c.video_collect_num, 0) as video_collect_num,
IFNULL(e.user_friend_count, 0) user_friend_count, d.state as name_state, g.type as name_type,
IFNULL(f.user_count, 0) user_count
from user_mad a
LEFT JOIN (
select * from video
where is_del = 0
) b on a.id = b.user_id

LEFT JOIN(
select count(id) as video_collect_num, user_id
from video_collect where user_id = '$id'
) c on a.id = c.user_id
LEFT JOIN (
select user_friend_id, count(*) as user_friend_count 
from user_friend
GROUP BY user_friend_id
) e on a.id = e.user_friend_id
LEFT JOIN (
select user_id, count(*) as user_count 
from user_friend
GROUP BY user_id
)f on a.id = f.user_id
LEFT JOIN user_state d on a.user_state = d.id
LEFT JOIN user_type g on a.user_type = g.id

where 1 = 1 $where
GROUP BY a.id
ORDER BY a.reg_time desc 
limit $limit
SQL;
		
		$this->userList = M()->query($sql);
		$this->page = $page->show();

		$this->display();
	}

	public function purview(){
		if($_GET){
			$sql=
			<<<SQL
select a.*, b.role_group_id from user_mad a
LEFT JOIN user_role_group b on a.id = b.user_id
where a.id = '$_GET[userId]'
SQL;
			$userInfo = M()->query($sql)[0];
			$this->userInfo = $userInfo;
			$this->roleGroupList = M('role_group')->select();
			$this->userTypeList = M('user_type')->select();

			//$this->assign('waitSecond','0');
			$this->display();
		}else{
			$this->error('访问出错');
		}
	}

	public function updatePurview(){
		//p($_POST);die;
		if($_POST){

			M('user_mad')->where('id='.$_POST['userId'])->setField('user_type', $_POST['userTypeReal']);
			$this->success('修改成功', __URL__);
		}else{
			$this->error('请不要非法访问');
		}
		/*if($_POST['role']){
			$userId = $_POST['userId'];
			$dbUserRole = M('user_role_group');
			$where = array('user_id' => $userId);
			$data['user_id'] = $userId;
			$data['role_group_id'] = implode(',',$_POST['role']);
			$dbUserRole->where($where)->delete();
			//p($dbUserRole->where($where)->select());

			if($dbUserRole->add($data)){
				$this->success('保存成功', __URL__);
			}else{
				$this->error('参数错误');
			}

		}else{
			$this->error('请至少选择一个权限');
		}*/
	}

}