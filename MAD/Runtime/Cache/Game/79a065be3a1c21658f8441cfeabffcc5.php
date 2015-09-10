<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>比赛通用后台管理</title>
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
</head>
<body>
<style type="text/css">
  /* .am-tabs-bd{
    overflow-x: scroll;
    overflow-y: hidden;
    -webkit-overflow-scrolling: touch;
    -ms-overflow-style: -ms-autohiding-scrollbar;
  } */
  
</style>

<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong><?php echo ($_COOKIE['user_admin_type_name']); ?>比赛通用</strong> <small>后台管理</small>
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
          <li><a href="__APP__/Game/Index/loginout"><span class="am-icon-power-off"></span> 退出</a></li>
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
     <!--  <li><a href="__APP__/Game"><span class="am-icon-home"></span> 首页</a></li> -->
      <li><a href="__APP__/Game/Control"><span class="am-icon-table"></span> 全局控制</a></li>
      <li><a href="__APP__/Game/User"><span class="am-icon-pencil-square-o"></span> 人员管理</a></li>
      <li><a href="__APP__/Game/Video"><span class="am-icon-pencil-square-o"></span> 稿件管理</a></li>
      <li><a href="__APP__/Game/Notice"><span class="am-icon-pencil-square-o"></span> 比赛通知</a></li>
      <li><a href="__APP__/Game/Release"><span class="am-icon-pencil-square-o"></span> 作品发布</a></li>
      <li><a href="__APP__/Game/Result"><span class="am-icon-pencil-square-o"></span> 比赛结果</a></li>
      <li><a href="__APP__/Game/Index/loginout"><span class="am-icon-sign-out"></span> 注销</a></li>


    </ul>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-bookmark"></span> 公告</p>
        <p>时光静好，与君语；细水流年，与君同。—— Event</p>
      </div>
    </div>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-tag"></span> wiki</p>
        <p>Welcome to the event!</p>
      </div>
    </div>
  </div>
  <!-- sidebar end -->
<style type="text/css">
  #user-intro{
      resize: none;
  }
  #containerWrap{
    width:85%;
    display: inline-block;
    vertical-align: middle;
    margin-left: 20px;
  }
</style>
  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">比赛结果</strong> / <small>Result</small></div>
    </div>

<div class="am-tabs am-margin" data-am-tabs>
   
        <form class="am-form" method="POST" action="__URL__/saveNotice">
          
          <input type="hidden" value="<?php echo ($noticeId2); ?>" name="noticeId2">
          <div class="am-g am-margin-top am-margin-left">
            <div class="am-u-sm-2 am-text-right">
              
            </div>
            <div id="containerWrap" >

                <script id="container" name="result" type="text/plain">
                <?php echo ($articeNow["content"]); ?>
                </script>

            </div>
            <div class="am-u-sm-6"></div>
            </div>

              <div class="am-u-md-9 am-cf">
                <div class="am-margin">
                  <input type="button" value="保存" class="am-btn am-btn-primary am-btn-sm am-fl">
                </div>
              </div>
              <div class="am-u-md-3 am-cf">
                <div class="am-margin">
                  <input type="button" value="发布" class="am-btn am-btn-primary am-btn-sm">
                  <input type="button" value="隐藏" class="am-btn am-btn-primary am-btn-sm">
                </div>
              </div>
          </div>
        </form>
  </div>

  <!-- content end -->

</div>

<footer>
  <hr>
  <p class="am-padding-left">© 2015 AllMobilize, Inc. Licensed under MIT license. <a href="http://www.drawmad.com/" target="_blank">event</a></p>
</footer>

<!--[if lt IE 9]>
<script src="__PUBLIC__/js/jquery1.11.1.min.js"></script>
<script src="__PUBLIC__/js/modernizr.js"></script>
<script src="__PUBLIC__/js/polyfill/rem.min.js"></script>
<script src="__PUBLIC__/js/polyfill/respond.min.js"></script>
<script src="__PUBLIC__/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="__PUBLIC__/js/lib/jquery-2.1.1.min.js"></script>
<!-- <script src="__PUBLIC__/js/jquery.min.js"></script> -->
<script src="__PUBLIC__/js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="__PUBLIC__/js/app.js"></script>
</body>
</html>

    <script type="text/javascript" src="__COMMON__/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="__COMMON__/ueditor/ueditor.all.js"></script>
    <!-- 实例化编辑器 -->
    <script type="text/javascript">
      //var ueInit = UE.getEditor('container');
      var ueInit = UE.getEditor('container',{
          initialFrameWidth : "100%",
          initialFrameHeight: 400,
          scaleEnabled:true
      });

      

      //var editor = UE.GetEditor();
      /*setTimeout(function () {
        ueInit.execCommand('drafts');//自动保存
      }, 500);*/
      /*function formSubmit(){
        $('input[name=short_content]').val(ueInit.getContentTxt());
      }*/
      /* var ue = UE.getContent();
      //对编辑器的操作最好在编辑器ready之后再做
      ue.ready(function() {
          //设置编辑器的内容
          ue.setContent('hello');
          //获取html内容，返回: <p>hello</p>
          var html = ue.getContent();
          //获取纯文本内容，返回: hello
          var txt = ue.getContentTxt();
      });*/
    </script>