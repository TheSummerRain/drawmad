<?php

function p($array){
	echo '<pre>' . print_r($array, true) .'</pre>';
}

function SendMail($address,$title,$message)
{
	
   	//import('Class.PHPMailer.class#phpmailer', APP_PATH);//用vendor导入第三方邮件类
    vendor('PHPMailer.class#phpmailer');//用vendor导入第三方邮件类
    $mail=new PHPMailer();
    // 设置PHPMailer使用SMTP服务器发送Email
    $mail->IsSMTP();
    // 设置邮件的字符编码，若不指定，则为'UTF-8'
    $mail->CharSet='UTF-8';
    // 添加收件人地址，可以多次使用来添加多个收件人
    $mail->AddAddress($address);
    // 设置邮件正文
    $mail->Body=$message;
    // 设置邮件头的From字段。
    $mail->From=C('MAIL_ADDRESS');
    // 设置发件人名字
    //$mail->FromName='MAD';
    $mail->FromName=C('MAIL_SENDER');
    // 设置邮件标题
    $mail->Subject=$title;
    // 设置SMTP服务器。
    $mail->Host=C('MAIL_SMTP');
    // 设置为“需要验证”
    $mail->SMTPAuth=true;
    // 设置用户名和密码。
    $mail->Username=C('MAIL_LOGINNAME');
    $mail->Password=C('MAIL_PASSWORD');
    // 发送邮件。
    return($mail->Send());
}

function videoBigType(){
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
    return $videoTypeList;
}

//新增通知
function addNotice(){

    $id = session('id');
    $sql = 
        <<<SQL
select * from notice
where id not in (
select notice_id from user_notice
where user_id = $id
) and type = '3'

UNION ALL

select * from notice 
where id not in (
select notice_id from user_notice
where user_id = $id
) and type = '4' and user_id = $id

SQL;
    $addNotice = M()->query($sql);

    if($addNotice){

        $data = array();
        foreach ($addNotice as $key => $value) {
            $data2;
            $data2['notice_id'] = $value['id'];
            $data2['user_id'] = session('id');
            $data2['type'] = $value['type'];
            $data2['date'] = date('Y-m-d H:i:s', time());
            
            $data[] = $data2;
        }
        M('user_notice')->addAll($data);
    }
    
}

//获取系统通知
function getNotice($type, $state = 'aaaaa'){
    
    $id = session('id');

    if($state == 'aaaaa'){
        $sql = 
        <<<SQL
select a.*, b.message, b.date as notice_date
from user_notice a
LEFT JOIN notice b on a.notice_id = b.id
where a.user_id = $id and a.type in ($type) and a.is_del = 0

ORDER BY b.date desc
SQL;

    }else{
        $sql = 
        <<<SQL
select a.*, b.message, b.date as notice_date
from user_notice a
LEFT JOIN notice b on a.notice_id = b.id
where a.user_id = $id and a.type in ($type) and a.is_del = 0
and a.state = $state

ORDER BY b.date desc
SQL;

    }
    return M()->query($sql);
}

function setManualCookie($userId, $name, $time = 3600){

    //$user = M('user_admin')->where('id='.$userId)->find();
    $sql = 
    <<<SQL
select a.*, b.`name` as  user_admin_type_name
from user_admin a 
LEFT JOIN game_mad b on a.user_admin_type = b.id
where a.id = '$userId'
ORDER BY id  
SQL;
    $user = M()->query($sql)[0];
    
    cookie($name.'_id', $user['id'], $time);
    cookie($name.'_logintime', time(), $time);
    cookie($name.'_loginip', get_client_ip(), $time);
    cookie($name.'_username', $user['username'], $time);
    cookie($name.'_nickname', $user['nickname'], $time);
    cookie($name.'_purview', $user['purview'], $time);
    cookie('user_admin_type', $user['user_admin_type'], $time);
    cookie('user_admin_type_name', $user['user_admin_type_name'], $time);

}

function setManualSession($userId){

    //$user = M('user_mad')->where('id='.$userId)->find();
    $sql = 
    <<<SQL
select * from (
select *, md5(id) as index_id from user_mad
) a
where index_id = '$userId'
SQL;

    $user = M()->query($sql)[0];
    session('id', $user['id']);
    session('index_id', md5($user['id']));
    session('logintime', time());
    session('loginip', get_client_ip());
    session('username', $user['username']);
    session('nicheng', $user['nicheng']);
    session('img', $user['img']);
    session('user_type', $user['user_type']);

    
}

function checkSession(){
    
    if($_SESSION['ispassword']){

        cookie(C('INDEX_ID'), $_COOKIE[C('INDEX_ID')], 60*60*24*30);
        return true;
    }else{
        if($_COOKIE[C('INDEX_ID')]){

            setManualSession($_COOKIE[C('INDEX_ID')]);
            session('ispassword', 'on');
            return true;
        }else{

            return false;
        }
    }
}


function returnSql($sql,$where, $limit = ''){
    $limitShow = $limit == ''? '': 'limit '.$limit;
    $table_change = array(
        '[where]' => $where,
        '[limit]' => $limitShow
    );
    
    $sql = strtr($sql, $table_change);
    return $sql;
}
?>