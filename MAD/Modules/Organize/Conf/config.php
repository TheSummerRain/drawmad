<?php

return array(
	//自定义路径
	'TMPL_PARSE_STRING' => array(
		'__PUBLIC__' => __ROOT__.'/'.APP_NAME.'/Modules/'.GROUP_NAME.'/Tpl/Public',
		'__PUBLICC__' => __ROOT__.'/'.APP_NAME.'/Modules/Index/Tpl/Public'
	),

/*'__TMPL__'      =>  APP_TMPL_PATH,  // 项目模板目录
'__ROOT__'      =>  __ROOT__,       // 当前网站地址
'__APP__'       =>  __APP__,        // 当前项目地址
'__GROUP__'     =>  defined('GROUP_NAME')?__GROUP__:__APP__,
'__ACTION__'    =>  __ACTION__,     // 当前操作地址
'__SELF__'      =>  __SELF__,       // 当前页面地址
'__URL__'       =>  __URL__,
'../Public'     =>  APP_TMPL_PATH.'Public',// 项目公共模板目录
'__PUBLIC__'    =>  __ROOT__.'/Public',// 站点公共目录*/
);