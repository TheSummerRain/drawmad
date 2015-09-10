<?php

Class VideoAction extends CommonAdminAction {

	public function index(){

		if($_REQUEST['select'] ){

            if($_REQUEST['select'] == '0'){
                $where = 'and a.state = 0';
                $selectOption=
<<<STR
<option value="0" selected = "selected">未审核</option>
<option value="2">已封禁</option>
<option value="1">已审核</option>
<option value="all">所有</option>
STR;

            }else if($_REQUEST['select'] == '1'){
                $where = 'and a.state = 1';
                $selectOption=
<<<STR
<option value="0">未审核</option>
<option value="2">已封禁</option>
<option value="1" selected = "selected">已审核</option>
<option value="all">所有</option>
STR;
            }else if($_REQUEST['select'] == '2'){
                $where = 'and a.state = 2';
                $selectOption=
<<<STR
<option value="0">未审核</option>
<option value="2" selected = "selected">已封禁</option>
<option value="1">已审核</option>
<option value="all">所有</option>
STR;
            }else if($_REQUEST['select'] == 'all'){
$where = 'and 1 = 1';
                $selectOption=
<<<STR
<option value="0">未审核</option>
<option value="2">已封禁</option>
<option value="1">已审核</option>
<option value="all" selected = "selected">所有</option>
STR;
            }

        }else if (!$_GET['p']){
            $where = "and a.state = 0";
            $selectOption=
<<<STR
<option value="0" selected = "selected">未审核</option>
<option value="2" >已封禁</option>
<option value="1" >已审核</option>
<option value="all" >所有</option>
STR;
        }else{
            $selectOption=
<<<STR
<option value="0">未审核</option>
<option value="2">已封禁</option>
<option value="1">已审核</option>
<option value="all" selected = "selected">所有</option>
STR;
        }

		$this->getData($where, $selectOption);
	}

    public function getData($where, $selectOption){
        import('ORG.Util.Page');// 导入分页类
        //import('Class.Page', APP_PATH);
        //import('Class.AdminVideoPage', APP_PATH);
        $sql = 
        <<<SQL
select a.id, a.user_id, a.title, a.zuozhe, a.fengmian, a.jieshao, a.biaoqian,a.time,
IFNULL(b.collect, 0) as collect, ifnull(c.comments, 0) as comments, a.state,
d.score, d.score_count
from video a
LEFT JOIN(
select count(video_id) as collect, video_id
from video_collect 
GROUP BY video_id
)b on a.id = b.video_id

LEFT JOIN(
select count(video_id) as comments, video_id
from video_comments 
GROUP BY video_id
) c on a.id = c.video_id

LEFT JOIN(
select count(video_id) as score_count, video_id, 
cast(avg(score) as decimal(10,2)) as score
from video_score 
GROUP BY video_id
) d on a.id = d.video_id

where a.is_del = '0' $where
GROUP BY a.id
ORDER BY update_time desc 
SQL;
            
        $page = new Page(count(M()->query($sql)), 10);
        $limit = $page->firstRow.','.$page->listRows;

        $sql = 
        <<<SQL
select a.id, a.user_id, a.title, a.zuozhe, a.fengmian, a.jieshao, a.biaoqian,a.time,a.update_time,
IFNULL(b.collect, 0) as collect, ifnull(c.comments, 0) as comments, a.state,d.score, d.score_count,
CASE a.state WHEN 0 THEN '未审核'
WHEN 2 THEN '已封禁' 
ELSE '已审核' END as state_name

from video a
LEFT JOIN(
select count(video_id) as collect, video_id
from video_collect 
GROUP BY video_id
)b on a.id = b.video_id

LEFT JOIN(
select count(video_id) as comments, video_id
from video_comments 
GROUP BY video_id
) c on a.id = c.video_id

LEFT JOIN(
select count(video_id) as score_count, video_id, 
cast(avg(score) as decimal(10,2)) as score
from video_score 
GROUP BY video_id
) d on a.id = d.video_id

where a.is_del = '0' $where
GROUP BY a.id
ORDER BY update_time desc 
limit $limit
SQL;
        
        $videoList = M()->query($sql);
        $this->page = $page->show();
        $this->assign("videoList",$videoList);
        $this->assign("selectOption",$selectOption);
        $this->display();

        /*$count=count($video);//得到数组元素个数
        $Page= new Page($count,8);// 实例化分页类 传入总记录数和每页显示的记录数
        $Page->setConfig('header','条信息');
        $Page->setConfig('prev','上一页'); 
        $Page->setConfig('next','下一页'); 
        $Page->setConfig('first','首页'); 
        $Page->setConfig('last','尾页'); 
        $Page->setConfig('theme',' %totalRow% %header% %first%   %upPage%   %prePage%  %linkPage%     %downPage%    %nowPage%/%totalPage% 页  %nextPage% %end% ');
        $aaaa = array_slice($video,$Page->firstRow,$Page->listRows);
        $this->assign("list",$aaaa);
        $show= $Page->show();// 分页显示输出
        $this->assign('page',$show);// 赋值分页输出*/
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
                
                //$user = M('user_mad')->where(array('id'=>$user_id['user_id']))->find();
                $data = array(
                    'message'=> $msg,
                    'date' => date('Y-m-d H:i:s', time()),
                    'type'=>'4',
                    'user_id'=>$video['user_id']
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