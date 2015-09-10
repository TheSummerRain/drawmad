<?php

class VideoAction extends CommonGameAction{

	public function index(){
		import('ORG.Util.Page');

		$where = 'where state_user = 1 and b.game_id = '.$_COOKIE['user_admin_type'];
		
		if($_REQUEST['search']){
			$search = $_REQUEST['search'];
			$where = $where.' and a.id like "%'.$search.'%" or a.nicheng like "%'.$search.'%" or a.email like "%'.$search.'%"' ;
		}
		if($_REQUEST['state']){
			$where = $where.' and b.state_video = '.$_REQUEST['state'];
		}else{
			$where = $where.' and b.state_video = 0';
		}

		$sqlInit = 
		<<<SQL
select b.id as game_mad_user_id, b.date_turn, c.nicheng, b.video_id, b.comment, 
b.user_id, ifnull(d.title, '无') as title,bb.name as group_name
from game_mad_user b 
LEFT JOIN game_mad_group bb on b.mad_group = bb.id
LEFT JOIN user_mad c on b.user_id = c.id
LEFT JOIN video d on b.video_id = d.id
[where]

[limit]
SQL;

		$sql = returnSql($sqlInit,$where);
		
		$page = new Page(count(M()->query($sql)), 10);
		$limit = $page->firstRow.','.$page->listRows;
		$sql = returnSql($sqlInit,$where, $limit);

		$this->videoList = M()->query($sql);
		$this->page = $page->show();
		

		$this->display();
	}

	public function delRelease(){
		if($_GET['id']){
			if(M('organize_release_mad_1')->where('id='.$_GET['id'])->delete()){
				M('organize_release_mad_2')->where('head_id='.$_GET['id'])->delete();
				$this->success('删除成功!');
			}
		}else{
			$this->error('切勿非法访问！');
		}
	}

	public function addRelease(){

		$id = $_REQUEST['id'];
		if($id){
			$sqlBody=
			<<<SQL
select b.*, a.head_id, a.author, a.img as body_img, a.`password` as body_password, 
a.video_url as body_video_url, a.title as body_title, 
REPLACE(REPLACE(a.video_code, '<', '&lt;'), '>', '&gt;') as body_video_code
from organize_release_mad_2 a
LEFT JOIN organize_release_mad_1 b on a.head_id = b.id
where a.head_id = $id
SQL;
			
			$sqlHead = 
			<<<SQL
select * from organize_release_mad_1
where id = $id
SQL;
			$releaseList = M()->query($sqlBody);
			$releaseHead = M()->query($sqlHead)[0];

			$this->releaseId = $id;
			$this->releaseList = $releaseList;
			$this->releaseHead = $releaseHead;
		}

		$this->display();
	}

	public function saveRelease(){


		if($_POST){
			$head_id = $_POST['datahead'][0];
			$data = array(
				'title' => $_POST['datahead'][2],
				'date' => $_POST['datahead'][1],
				'explain' => $_POST['datahead'][3],
				'video_url' => $_POST['datahead'][4],
				'password' => $_POST['datahead'][5],
				//'img' => $_POST['datahead'][6],
			);
			if($head_id){
				$id = $head_id;
				$data['id'] = $id;
				M('organize_release_mad_1')->save($data);

				$data = array();
				M('organize_release_mad_2')->where('head_id='.$id)->delete();
				foreach($_POST['mydata'] as $key => $val){
					$data[$key]['head_id'] = $id;
					$data[$key]['date'] = date('Y-m-d H-i-s', time());
					$data[$key]['author'] = $val['body_author'];
					$data[$key]['title'] = $val['body_title'];
					$data[$key]['video_url'] = $val['body_video_url'];
					$data[$key]['img'] = $val['body_img'];
					$data[$key]['password'] = $val['body_password'];
					$data[$key]['video_code'] = $val['body_video_code'];
				}
				M('organize_release_mad_2')->addAll($data);
				$this->ajaxReturn(__APP__.'/Organize/Video', '修改成功', 1);
				//$this->success('保存成功!', __APP__.'/Admin/XRZVideo');
			}else{
				$data['date_create'] = date('Y-m-d H-i-s', time());
				$data['organize_type'] = '1';

				if($id = M('organize_release_mad_1')->add($data)){
					$data = array();

					foreach($_POST['mydata'] as $key => $val){
						$data[$key]['head_id'] = $id;
						$data[$key]['date'] = date('Y-m-d H-i-s', time());
						$data[$key]['author'] = $val['body_author'];
						$data[$key]['title'] = $val['body_title'];
						$data[$key]['video_url'] = $val['body_video_url'];
						$data[$key]['img'] = $val['body_img'];
						$data[$key]['password'] = $val['body_password'];
						$data[$key]['video_code'] = $val['body_video_code'];
					}
					M('organize_release_mad_2')->addAll($data);
					$this->ajaxReturn(__APP__.'/Organize/Video', '保存成功', 1);

				}else{
					$this->error('保存错误,请重新添加。');
				}
			}
			
		}else{

		}
		
	}

	public function check(){
    	$type = $_REQUEST['type'];
        if($type !=1 && $type!=2){
            $this->error('请不要非法操作');
        }


        if(M('video')->where(array('id'=> $_REQUEST['id']))->setField('state', $type)){
            
            if($type==1){
		        $user_id = M('video')->field('user_id')->where(array('id'=>$_REQUEST['id']))->find();
                $type = M('user_mad')->field('user_type')->where(array('id'=>$user_id['user_id']))->find();
                
                if($type['user_type'] == 1){
                    $data = array(
                        'user_type' => 2
                    );
                    M('user_mad')->where(array('id'=>$user_id['user_id']))->setField($data);
                }
                
                $this->success('审核成功', __URL__);
            }else if($type==2){
                $msg = M('notice_model')->where('id='.$_REQUEST['select'])->select()[0];
                $video = M('video')->where(array('id'=>$_REQUEST['id']))->find();
                
                $msg = str_replace('aaaa', '【'.$video['title'].'】', $msg['content']);
                
                
                $data = array(
                    'message'=> $msg,
                    'date' => date('Y-m-d H:i:s', time()),
                    'type'=>'4',
                    'user_id'=>$video['user_id'],
                    'game_mad_id'=>$_COOKIE['user_admin_type']
                );
                M('notice')->add($data);
                $this->success('封禁成功', __URL__);
            }
        }else{
            $this->error('操作失败');
        }
    }


    public function checkVideo(){

        $vid = substr($_REQUEST['vid'], 3);
        if(empty($vid)) $this->error('请不要非法操作');
        $sqlUser = 
        <<<SQL
select a.id, c.id as vid, a.username, a.nicheng, a.img, a.text, 
b.state, d.video_count
from user_mad a
LEFT JOIN user_state b on a.user_state = b.id
LEFT JOIN video c on a.id = c.user_id
LEFT JOIN (
    select count(id) as video_count, user_id
    from video where user_id = (
        select user_id from video where id = $vid
    )
) d on a.id = d.user_id
where c.id = $vid
SQL;
        $sqlVideo = 
        <<<SQL
select * from (
select a.id, a.user_id, a.title, a.zuozhe, a.fengmian, a.jieshao, 
a.biaoqian,a.time, a.wg_time, a.remark,a.video_path,a.xiazai, a.xiazaipass,
count(b.id) as collect, count(c.id) as comments, 
cast(avg(d.score) as decimal(10,2)) as score, count(d.score) score_count,
CASE a.state WHEN 0 THEN '未审核'
WHEN 2 THEN '已封禁' 
ELSE '已审核' END as state_name
from video a
LEFT JOIN video_collect b on a.id = b.video_id
LEFT JOIN video_comments c on a.id = c.video_id
LEFT JOIN video_score d on a.id = d.video_id
GROUP BY a.id
ORDER BY time desc 
) a
where a.id = $vid
SQL;
        

        $userInfo = M()->query($sqlUser)[0];
        $this->userInfo = $userInfo;
        $this->videoInfo = M()->query($sqlVideo)[0];
        $this->noticeModel = M('notice_model')->select();
        $this->assign('collect', M()->query($sqlCollect)[0]);
        

        $videoBigType = M('video_big_type')->select();
        $videoTypeList = array();
        foreach ($videoBigType as $key => $value) {
            $where = array('video_big_type_id'=> $value['id']);
            $videoType = M('video_type')->where($where)->order('video_big_type_id')->select();
            if($key == 0){
                $videoBigType[$key]['class'] = 'active';
            }else{
                $videoBigType[$key]['class'] = '';
            }
            $videoBigType[$key]['videoType'] = $videoType;
            $videoTypeList[] = $videoBigType[$key];

        }
        
        $this->videoBigTypeList =$videoTypeList;

        //p(urlencode($create['fengmian']));die; 去除BOM头
        $this->display();
    }
    
    public function updateTag(){
        
        if($_POST){
            $bq = $_POST['biaoqian1'];
            $bq2 = $_POST['biaoqian2'];
            $bq3 = $_POST['biaoqian3'];
            $data = array();

            if(!$bq && !$bq2){
                $data['biaoqian'] = "MV / ".implode(' / ',$_POST['biaoqian3']);
            }else if(!$bq && !$bq3){
                $data['biaoqian'] = "M@D / ".implode(' / ',$_POST['biaoqian2']);
            }else {
                $data['biaoqian'] = "AMV / ".implode(' / ',$_POST['biaoqian1']);
            }

            if(M('video')->where(array('id'=> $_POST['videoId']))->save($data)){
                $this->success('修改成功', __URL__.'/checkVideo?vid=MAD'.$_POST['videoId']);
            }else{
                $this->error('修改失败');
            }
        }else{
            $this->error('请不要非法操作！');
        }
    }

}