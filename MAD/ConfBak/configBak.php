<?php
return array(
	//请自行将该配置文件以及文件夹的Bak后缀删除
	'DB_HOST' =>'115.28.9.231',
	'DB_USER' =>'drawmad',
	'DB_PWD' =>'X7amf2cpeTvZKHYy',
	'DB_NAME'=> 'drawmad',
	'DB_PREFIX'=> '',
	//'DB_TYPE' =>'mysql',
	//'DB_PORT' =>3306,


	//使用分组模式
	'APP_GROUP_LIST'=> 'Index,Admin,Organize',
	'DEFAULT_GROUP' =>'Index',
	'APP_GROUP_MODE'=> 1,
	'APP_GROUP_PATH' =>'Modules',
	//自动加载配置文件
	//'LOAD_EXT_CONFIG' => 'verify,water',
	
	'SHOW_PAGE_TRACE' => true,
	
	'URL_MODEL' => 2,
	'URL_ROUTER_ON' => true,
	/* 'URL_ROUTE_RULES' => array(
		//'c/:id' => 'Index/List/index'
		'/^c_(\d+)$/' => 'Index/List/index?id=:1',
		':id\d' =>'Index/Show/index'
	)*/

	'MAIL_ADDRESS'=>'drawmad@163.com', // 邮箱地址
    'MAIL_SMTP'=>'smtp.163.com', // 邮箱SMTP服务器
    'MAIL_LOGINNAME'=>'drawmad@163.com', // 邮箱登录帐号
    'MAIL_PASSWORD'=>'1qaz2wsx', // 邮箱密码

    'VOTE_BASE' => '40',
    'INDEX_ID' => md5('index_id'),
    'SPECIAL_SCORE' => 10000, 
);
?>