<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Drawmad后台管理</title>
  <meta name="description" content="这是一个 index 页面">
  <meta name="keywords" content="index">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="icon" type="image/png" href="__PUBLIC__/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="__PUBLIC__/i/app-icon72x72@2x.png">
  <link rel="stylesheet" href="__PUBLIC__/css/amazeui.min.css"/>
  <link rel="stylesheet" href="__PUBLIC__/css/admin.css">
  <script src="__PUBLIC__/js/lib/jquery-2.1.1.min.js"></script>
</head>
<body>
<script type="text/javascript">

</script>

<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>Drawmad</strong> <small>后台管理</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="__APP__/Admin/Index/loginout"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="__APP__/Admin"><span class="am-icon-home"></span> 首页</a></li>
      <!-- <li class="admin-parent">
        <a class="am-cf am-collapsed" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-file"></span> 页面模块 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list admin-sidebar-sub am-collapse" id="collapse-nav">
          <li><a href="admin-user.html" class="am-cf"><span class="am-icon-check"></span> 个人资料<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
          <li><a href="admin-help.html"><span class="am-icon-puzzle-piece"></span> 帮助页</a></li>
          <li><a href="admin-gallery.html"><span class="am-icon-th"></span> 相册页面<span class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
          
          <li><a href="admin-404.html"><span class="am-icon-bug"></span> 404</a></li>
        </ul>
      </li> -->
      <li><a href="__APP__/Admin/Video"><span class="am-icon-table"></span> 视频管理</a></li>
      <li><a href="__APP__/Admin/User"><span class="am-icon-pencil-square-o"></span> 用户管理</a></li>
      <li><a href="__APP__/Admin/HomePage"><span class="am-icon-th"></span> 首页推荐</a></li>
      <li><a href="__APP__/Admin/Index/loginout"><span class="am-icon-sign-out"></span> 注销</a></li>

      <li class="admin-parent">
        <a class="am-cf am-collapsed" data-am-collapse="{target: '#collapse-nav2'}"><span class="am-icon-file"></span> 系统管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list admin-sidebar-sub am-collapse" id="collapse-nav2">

          <!-- <if condition="$_COOKIE[admin_purview] eq 1"> -->
          <li><a href="__APP__/Admin/AdminUser"><span class="am-icon-th"></span> 管理员管理<span class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
          <li><a href="__APP__/Admin/Purview"><span class="am-icon-calendar"></span> 权限管理</a></li>
          <li><a href="__APP__/Admin/Notice"><span class="am-icon-calendar"></span> 系统通知</a></li>
          <li><a href="__APP__/Admin/SystemLog"><span class="am-icon-calendar"></span> 系统日志</a></li>
          
        </ul>
      </li>

      <li class="admin-parent">
        <a class="am-cf am-collapsed" data-am-collapse="{target: '#collapse-nav3'}"><span class="am-icon-file"></span> 新人战 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list admin-sidebar-sub am-collapse" id="collapse-nav3">
          
          <li><a href="__APP__/Admin/XRZVideo"><span class="am-icon-th"></span> 视频发布</a></li>
          
        </ul>
      </li>
    </ul>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-bookmark"></span> 公告</p>
        <p>时光静好，与君语；细水流年，与君同。—— drawmad</p>
      </div>
    </div>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-tag"></span> wiki</p>
        <p>Welcome to the drawmad!</p>
      </div>
    </div>
  </div>
  <!-- sidebar end -->
  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small>一些常用模块</small></div>
    </div>

    <ul class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list ">
      <li><a href="#" class="am-text-success"><span class="am-icon-btn am-icon-file-text"></span><br/>操作系统<br/><?php echo ($info["操作系统"]); ?></a></li>
      <li><a href="#" class="am-text-warning"><span class="am-icon-btn am-icon-briefcase"></span><br/>运行环境<br/><?php echo ($info["运行环境"]); ?></a></li>
      <li><a href="#" class="am-text-danger"><span class="am-icon-btn am-icon-recycle"></span><br/>ThinkPHP版本<br/><?php echo ($info["ThinkPHP版本"]); ?></a></li>
      <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>上传附件限制<br/><?php echo ($info["上传附件限制"]); ?></a></li>

      <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>执行时间限制<br/><?php echo ($info["执行时间限制"]); ?></a></li>
      <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>服务器时间<br/><?php echo ($info["服务器时间"]); ?></a></li>
      <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>北京时间<br/><?php echo ($info["北京时间"]); ?></a></li>
      <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>服务器域名/IP<br/><?php echo ($info["服务器域名/IP"]); ?></a></li>
      <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>剩余空间<br/><?php echo ($info["剩余空间"]); ?></a></li>
      <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>register_globals<br/><?php echo ($info["register_globals"]); ?></a></li>
      <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>magic_quotes_gpc<br/><?php echo ($info["magic_quotes_gpc"]); ?></a></li>
      <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>magic_quotes_runtime<br/><?php echo ($info["magic_quotes_runtime"]); ?></a></li>
      
    </ul>

    
  <!-- content end -->


</div>

<footer>
  <hr>
  <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license. <a href="http://www.drawmad.com/" target="_blank">drawmad</a></p>
</footer>

<!--[if lt IE 9]>
<script src="__PUBLIC__/js/jquery1.11.1.min.js"></script>
<script src="__PUBLIC__/js/modernizr.js"></script>
<script src="__PUBLIC__/js/polyfill/rem.min.js"></script>
<script src="__PUBLIC__/js/polyfill/respond.min.js"></script>
<script src="__PUBLIC__/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<!-- <script src="__PUBLIC__/js/jquery.min.js"></script> -->
<script src="__PUBLIC__/js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="__PUBLIC__/js/app.js"></script>
</body>
</html>