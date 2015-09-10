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

  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">人员管理</strong> / <small>User</small></div>
    </div>
  
<div class="am-tabs am-margin" data-am-tabs>
  <ul class="am-nav am-nav-tabs"><!-- am-tabs-nav   class="am-active"-->
      <li id="tabli1"><a href="__URL__?state=0">未审核</a></li>
      <?php if(is_array($madGroup)): foreach($madGroup as $key=>$group): ?><li id="tabli<?php echo ($group["id"]); ?>" data-id='<?php echo ($group["id"]); ?>'><a href="__URL__?state=1&madGroup=<?php echo ($group["id"]); ?>"><?php echo ($group["name"]); ?></a></li><?php endforeach; endif; ?>
    </ul>


    <div class="am-tabs-bd">
    <div class="am-g am-margin-top">
      <div class="am-u-md-3 am-cf">
        <div class="am-fl am-cf">
          <div class="am-input-group am-input-group-sm">
            <span>UID</span><input type="text" class="am-form-field self-form-field" style="  display: inline-block;width: 70%;float:none;">
            <span class="am-input-group-btn">
              <button class="am-btn am-btn-default self-btn-add" ><span class="am-icon-plus"></span>新增</button>
            </span>
          </div>
        </div>
      </div>
    
      <div class="am-u-md-3 am-cf">
        <form  method="POST" action="__URL__/index">
          <div class="am-input-group am-input-group-sm">
            <input type="text" class="am-form-field">
            <span class="am-input-group-btn">
              <button class="am-btn am-btn-default" type="submit">搜索</button>
            </span>
          </div>
        </form>
      </div>
    </div>

    <div class="am-g">
      <div class="am-u-sm-12">
        
        <!-- <form class="am-form" method="POST" action="__URL__/check"> -->
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th class="table-id">UID</th><th class="table-title">昵称</th><th class="table-author">组</th><th class="table-author">操作</th>
              </tr>
          </thead>
          <tbody>
            
            <?php if(is_array($userList)): foreach($userList as $key=>$game): ?><tr>
              <td>UID<?php echo ($game["user_id"]); ?></td>
              <td><a href="#"><?php echo ($game["nicheng"]); ?></a></td>
              <td><?php echo ($game["group_name"]); ?></td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                    <?php if($_REQUEST[state] == 0): ?><a href="__URL__/passUser?id=<?php echo ($game["game_mad_user_id"]); ?>&state=1" class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 通过</a>
                      <a href="__URL__/passUser?id=<?php echo ($game["game_mad_user_id"]); ?>&state=2" class="am-btn am-btn-default am-btn-xs"><span class="am-icon-trash-o"></span> 拒绝</a>
                      
                      <?php else: ?>
                      
                      <a href="__URL__/modifyGroup?id=<?php echo ($game["game_mad_user_id"]); ?>" class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 修改组</a><?php endif; ?>
                  </div>
                </div>
              </td>
            </tr><?php endforeach; endif; ?>
            
          </tbody>
        </table>
        <div class="am-cf">
          <div class="am-fr">
          <?php echo ($page); ?>
          </div>
        </div>
        <hr />
        <p></p>
        <!-- </form> -->
      </div>

    </div>
  </div>
</div>
</div>
  <!-- content end -->
<input type="hidden" id="state" value="<?php echo ($_REQUEST[state]); ?>">
<input type="hidden" id="madGroup" value="<?php echo ($_REQUEST[madGroup]); ?>">

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

<script type="text/javascript">
  $(function(){
    initGroup();
    addUser();

  });

  function initGroup(){
    if($('#state').val() == 0){
      $('#tabli1').addClass('am-active');
    }else{
      $('#tabli'+$('#madGroup').val()).addClass('am-active');
    }
  }

  function addUser(){
    $('.self-btn-add').bind('click', function(){
            
      if($('.self-form-field').val() == '') return;
      var url = 'http://'+window.location.host+'/Game/User/addUser';
      var uid = $('.self-form-field').val();
      var madGroup = $('#madGroup').val();
      var state = $('#state').val() == '' ? 0 : $('#state').val();
      var data = {'uid':uid, 'mad_group':madGroup, 'state':state};
      
      $.ajax({
        type:'POST',
        url : url ,
        dataType : 'json',
        data : data,
        success:function(res){
          if(res.status == 0){
            alert(res.data);
          }else if (res.status == 1){
            alert(res.data);
            window.location.reload();
          }
        }

      })
    })
  }



</script>