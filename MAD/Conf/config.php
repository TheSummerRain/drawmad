<?php
return array(
	//'配置项'=>'配置值'
	'DB_HOST' =>'127.0.0.1',
	'DB_USER' =>'root',
	'DB_PWD' =>'123456',//qVFAmUe8PjnQAntm
	'DB_NAME'=> 'drawmad',
	'DB_PREFIX'=> '',
	//'DB_TYPE' =>'mysql',
	//'DB_PORT' =>3306,


	//使用分组模式
	'APP_GROUP_LIST'=> 'Index,Admin,Organize,Game',
	'DEFAULT_GROUP' =>'Index',
	'APP_GROUP_MODE'=> 1,
	'APP_GROUP_PATH' =>'Modules',
	//自动加载配置文件
	//'LOAD_EXT_CONFIG' => 'verify,water',

	//启动调试模式
	'SHOW_PAGE_TRACE' => true,

	//配置简单路由
	'URL_MODEL' =>2,
	'URL_ROUTER_ON' => true,
	
	/*'URL_ROUTE_RULES' => array(
		//'c/:id' => 'Index/List/index'
		'/^c_(\d+)$/' => 'Index/List/index?id=:1',
		':id\d' =>'Index/Show/index'
	)*/

	'MAIL_ADDRESS'=>'drawmad@163.com', // 邮箱地址
    'MAIL_SMTP'=>'smtp.163.com', // 邮箱SMTP服务器
    'MAIL_LOGINNAME'=>'drawmad@163.com', // 邮箱登录帐号
    'MAIL_PASSWORD'=>'1qaz2wsx', // 邮箱密码

    //配置投票算法基数
    'VOTE_BASE' => '40',
    'INDEX_ID' => md5('index_id'),
    'SPECIAL_SCORE' => 10000,
    'DRAWMAD_ADMIN_TYPE' => 4,
    'MOEWOLF_ADMIN_TYPE' => 5,
    'NOTICE_TYPE_PRIVATE' => 1,
    'NOTICE_TYPE_REPLY' => 2,
    'NOTICE_TYPE_NOTICE' => 3,
    'NOTICE_TYPE_DEFINE' => 4,

);
?>