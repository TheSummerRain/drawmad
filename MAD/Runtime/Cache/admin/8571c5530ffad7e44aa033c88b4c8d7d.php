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

          <!-- <?php if($_COOKIE[admin_purview] == 1): ?>-->
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
<link href="__PUBLICC__/css/main.min.css" rel="stylesheet"/>

<style type="text/css">
.tab_btn2:after{clear:none;display:block}
.am-margin a{color: #fff;}
.am-margin input[type="submit"]{display:inline-block}
.am-margin form{display: inline-block;}

</style>

  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">查看视频</strong> / <small>MAD</small></div>
    </div>
    <div class="am-g">
      <div class="am-u-md-6 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
          

      <div class="user_info">
          <a href="__APP__/MyZone?&userid=<?php echo ($userInfo["id"]); ?>">
          <img src="__PUBLICC__/user_head/<?php echo ($userInfo["img"]); ?>" width="120px" height="120px" class="user_img">

          <h4 class="user_name" style="width:190px;word-wrap:break-word; word-break:break-all; "><?php echo ($userInfo['nicheng']); ?></h4></a>
          <p class="user_desc"><?php echo ($userInfo['text']); ?></p>
          <p class="user_desc">身份：<?php echo ($userInfo["state"]); ?></p>
         
          <h4 class="u_history_th">TA的投稿:
            <span class="u_history_cont"><?php echo ($userInfo["video_count"]); ?></span>
          </h4>
          <ul class="u_history_ul">
            <?php if(is_array($befoVideo)): $i = 0; $__LIST__ = $befoVideo;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="./Video?id=MAD<?php echo ($vo["id"]); ?>"><?php echo (mb_substr($vo["title"],0,30,'utf-8')); ?>...</a></li><?php endforeach; endif; else: echo "" ;endif; ?>

          </ul>
         </div>
         </div>

      <div class="r_side r-side_border" >
        <h2 class="vInfo_th">[<?php echo ($videoInfo['state_name']); ?>]<?php echo ($videoInfo['title']); ?><span class="fr vInfo_date">时间：<?php echo ($videoInfo['time']); ?></span><span class="fr vInfo_id">编号：MAD<?php echo ($videoInfo['id']); ?></span></h2>
        <form method="POST" action="__URL__/updateTag">
        <input type="hidden" name="videoId" value="<?php echo ($videoInfo['id']); ?>"> 
        <ul class="dl_desc vInfo_info">
          <li><i class="th">标签:</i><span><?php echo ($videoInfo['biaoqian']); ?></span>
          <button type="submit" class="am-btn am-btn-default am-btn-sm am-fr">修改标签</button>
          
      <!-选择标签->
      <div class="tab_type up_type js_tab_uptype" style="padding-bottom:10px;;margin:0;width:380px;height:auto">
          <ul class="tab_btn tab_btn2" style="">
            <?php if(is_array($videoBigTypeList)): foreach($videoBigTypeList as $key=>$videoTypeList): ?><li data-tab="<?php echo ($videoTypeList["other_name"]); ?>" class="<?php echo ($videoTypeList["class"]); ?>">
                  <?php echo ($videoTypeList["name"]); ?>
              </li><?php endforeach; endif; ?>
          </ul>

          <ul class="tab_content">
            <?php if(is_array($videoBigTypeList)): foreach($videoBigTypeList as $key=>$videoTypeList): ?><li data-tab="<?php echo ($videoTypeList["other_name"]); ?>" class="<?php echo ($videoTypeList["class"]); ?>">
                <?php if(is_array($videoTypeList["videoType"])): foreach($videoTypeList["videoType"] as $key=>$value): ?><input type="checkbox" id="<?php echo ($videoTypeList["name"]); echo ($value["id"]); ?>" value="<?php echo ($value["name"]); ?>" name="biaoqian<?php echo ($videoTypeList["id"]); ?>[]" class="type_checkbox hide" on>
                  <label for="<?php echo ($videoTypeList["name"]); echo ($value["id"]); ?>" class="check"><?php echo ($value["name"]); ?></label><?php endforeach; endif; ?>
              </li><?php endforeach; endif; ?>
          </ul>
        </div>
          
          </li>
          <li><i class="th">作者:</i><span><?php echo ($videoInfo['zuozhe']); ?></span></li>
          <li><i class="th">音乐:</i><span class="bcon"><?php echo (($videoInfo['BGM'])?($videoInfo['BGM']):"无"); ?></span></li>
          <li><i class="th">完稿:</i><span><?php echo ($videoInfo['wg_time']); ?></span></li>
         <li><i class="th"></i><span style="color:#999;font-size:14px;"><br><?php echo (mb_substr(($videoInfo['jieshao'])?($videoInfo['jieshao']):"这家伙很懒，什么也没留下",0,150,'utf-8')); ?>...</span></li>
        </ul> 
        </form>



<script src="__PUBLIC__/jwplayer/jwplayer.js" type="text/javascript"></script>
<div id="myElement">Loading the player ...</div>
<script type="text/javascript">

jwplayer("myElement").setup({
  flashplayer: '__PUBLICC__/jwplayer/jwplayer.flash.swf',  
  file: "__PUBLICC__/videos/<?php echo ($videoInfo['video_path']); ?>",
  image: "__PUBLICC__/videos/<?php echo ($videoInfo['fengmian']); ?>",
  height: 600,
  width: 800,
  dock: false
});

</script>

          <div class="sharebtn" style="margin-top:10px">
            <div class="v_download">
              <if condition="$videoInfo['xiazai'] eq null">
                 <?php if(empty($yd)): ?><span class="v_downCode">
                  这个视频还没有原档呢&nbsp;
                  </span><?php endif; ?>
              <?php else: ?>
                  <?php if(empty($yd)): ?><a href="<?php echo ($videoInfo['xiazai']); ?>" class="v_downLink" target='_bank'>下载原档</a>
                  <span class="v_downCode">密码:&nbsp;<span><?php echo ($videoInfo['xiazaipass']); ?></span></span><?php endif; endif; ?>
              <a href="__PUBLICC__/videos/<?php echo ($videoInfo['video_path']); ?>"><span>网络版</span></a>
          </div>
       </div>


    
    <div class="am-margin" style="text-align:right">
      <form action="__URL__/check" method="POST">
  
      <!-- <a href="__URL__/check?id=<?php echo ($videoInfo["id"]); ?>&type=1" class="am-btn am-btn-primary am-btn-xs">审核</a> -->
      <input type="hidden" name='id' value="<?php echo ($videoInfo["id"]); ?>">
      <input type="hidden" name='type' value="1">

      <input type="submit" value="审核" class="am-btn am-btn-primary am-btn-xs" />

      </form>
      
      <form action="__URL__/check" method="POST">
      <input type="hidden" name='id' value="<?php echo ($videoInfo["id"]); ?>">
      <input type="hidden" name='type' value="2">

      <!-- <a href="__URL__/check?id=<?php echo ($videoInfo["id"]); ?>&type=2" class="am-btn am-btn-primary am-btn-xs">封禁</a> -->
      <input type="submit" value="封禁" class="am-btn am-btn-primary am-btn-xs" />
      


    </div>

    <div class="am-margin" style="text-align:right">
      <span>选择封禁默认通知模版</span>
      <select name='select'>
        <?php if(is_array($noticeModel)): foreach($noticeModel as $key=>$not): ?><option value="<?php echo ($not["id"]); ?>"><?php echo ($not["name"]); ?></option><?php endforeach; endif; ?>        
      </select>
    </div>
</form>
          </div>
        </div>
      </div>

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

<script src="__PUBLIC__/js/tab.min.js"></script>
  <script src="__PUBLIC__/js/tabvideo.min.js"></script>
    </div>
</div>

<script type="text/javascript">

    $("input.type_checkbox").change(function(){
      var tag = $("input.type_checkbox[type='checkbox']:checked");
      var current = $(this);

      if(tag.length>0){
        $('.tab_btn li').each(function(){
          if(!($(this).data('tab') == current.parent('li').data('tab'))){

            $(this).css({
             "color":"#999",
            });
          }
        });
      }else{
        $('.tab_btn li').each(function(){
           $(this).css({
             "color":"#333",
            });
        });
      }

      if(tag.length >=4){
          $("input.type_checkbox").each(function(index){
              //$(this).removeAttr("checked");
              if(!$(this).is(':checked')){
                  $(this).attr('disabled','disabled');
                  $(this).next('label.check').css({
                    "color":"#999",
                  });

              }
          });
      }else{
          $("input.type_checkbox").each(function(index){
              //$(this).removeAttr("checked");
              $(this).removeAttr('disabled');
              $(this).next('label.check').css({
                    "color":"#333",
              });
          });
      }
    });
  </script>
  <!-- content end -->