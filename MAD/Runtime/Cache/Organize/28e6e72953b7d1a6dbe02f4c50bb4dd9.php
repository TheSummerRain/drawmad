<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Moewolf后台管理</title>
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
  .am-tabs-bd{
    overflow-x: scroll;
    overflow-y: hidden;
    -webkit-overflow-scrolling: touch;
    -ms-overflow-style: -ms-autohiding-scrollbar;
  }
  
</style>

<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>Moewolf</strong> <small>后台管理</small>
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
          <li><a href="__APP__/Organize/Index/loginout"><span class="am-icon-power-off"></span> 退出</a></li>
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
      <li><a href="__APP__/Organize"><span class="am-icon-home"></span> 首页</a></li>
      <li><a href="__APP__/Organize/Video"><span class="am-icon-table"></span> 视频管理</a></li>
      <li><a href="__APP__/Organize/AdminUser"><span class="am-icon-pencil-square-o"></span> 管理员管理</a></li>
      <li><a href="__APP__/Organize/Index/loginout"><span class="am-icon-sign-out"></span> 注销</a></li>


    </ul>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-bookmark"></span> 公告</p>
        <p>时光静好，与君语；细水流年，与君同。—— Moewolf</p>
      </div>
    </div>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-tag"></span> wiki</p>
        <p>Welcome to the Moewolf!</p>
      </div>
    </div>
  </div>
  <!-- sidebar end -->

  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">发布管理</strong> / <small>addRelease</small></div>
    </div>
  
    <div class="am-tabs-bd">
    <div class="am-g am-margin-top">
      <div class="am-u-md-6 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
            <div class="am-btn-group am-btn-group-xs">
              <a class="am-btn am-btn-default am-a-plus"><span class="am-icon-plus"></span> 新增</a>
              <!-- <button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button> -->
            </div>
            
          </div>
        </div>
      </div>
      

      <div class="am-u-md-3 am-cf">
        <div class="am-fr">
          <div class="am-input-group am-input-group-sm">
            <input type="text" name="title" class="am-form-field" value="<?php echo ($releaseHead["title"]); ?>" style="width: 170px;">
                <span class="am-input-group-btn">
                  <button class="am-btn am-btn-default" type="submit">发布标题</button>
                </span>

            <input type="date" name="datePub" class="am-form-field" value="<?php echo ($releaseHead["date"]); ?>">
                <span class="am-input-group-btn">
                  <button class="am-btn am-btn-default" type="submit">发布时间</button>
                </span>
          </div>
        </div>
      </div>
          
    </div>
  
    <!-- class="am-form" -->
   <!-- <form method="POST" action="__URL__/saveRelease"> -->
    <div class="am-g">
      <div class="am-u-sm-12">
        
          <table class="am-table am-table-normal am-table-striped am-table-hover table-main">
            <thead>
              <tr>
              <!-- <th class="table-check"><input type="checkbox" /></th> -->
                <th class="table-id">作者</th><th class="table-author">视频标题</th><th class="table-author">下载链接</th><th class="table-author">封面链接</th><th class="table-id">提取码</th><th class="table-author">视频代码</th><th class="table-author">操作</th>
              </tr>
          </thead>
          <tbody>
            
            <?php if(is_array($releaseList)): foreach($releaseList as $key=>$release): ?><tr data-id="<?php echo ($release["id"]); ?>" data-videoId="<?php echo ($release["video_id"]); ?>"  >
              <td class="am-release table_id"><input type="text" style="width:60px" name="body_author" value="<?php echo ($release["author"]); ?>"></td>
              <td><input style="width:90px" type="text" name="body_title" value="<?php echo ($release["body_title"]); ?>"></td>
              <td><input class="table_author" type="text" name="body_video_url" value="<?php echo ($release["body_video_url"]); ?>"></td>
              <td><input class="table_author" type="text" name="body_img" value="<?php echo ($release["body_img"]); ?>"></td>
              <td><input style="width:60px;" type="text" name="body_password" value="<?php echo ($release["body_password"]); ?>"></td>
              <td><textarea name="body_video_code" ><?php echo ($release["body_video_code"]); ?></textarea>
              </td>
              <td>
                <div class="am-btn-toolbar">
                  <div class="am-btn-group am-btn-group-xs">
                     
                    <a class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</a>
                  </div>
                </div>
              </td>
            </tr><?php endforeach; endif; ?>
            



          </tbody>
        </table>
  <div class="am-cf">
  <div class="am-fotter-box">
    <div>
      <span>活动介绍</span>
      <textarea name="explain" id="" style="vertical-align:middle;width:350px;height:100px;"><?php echo ($releaseHead["explain"]); ?></textarea>
    </div>
    <div>
      <span>合集原档</span>
      <input type="text" name="video_url" value="<?php echo ($releaseHead["video_url"]); ?>">
    </div>
    <div>
      <span>提取码</span>
      <input type="text" name="password" value="<?php echo ($releaseHead["password"]); ?>">
    </div>
    <div>
      <span>封面链接</span>
      <input type="text" name="img" value="<?php echo ($releaseHead["img"]); ?>">
    </div>
      

  </div>
</div>

          <hr/>
          <p></p>

             <div class="am-margin am-padding-bottom">
              <input type="submit" name="" value="保存" onclick="return submitReturn()" class="am-btn am-btn-primary am-btn-sm am-fl">
            </div>
      </div>

    </div>
    <!-- </form> -->
  </div>
</div>

<!-- content end -->
<input type="hidden" name="head_id" value="<?php echo ($releaseId); ?>">

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
<script src="__PUBLIC__/js/lib/jquery-2.1.1.min.js"></script>
<!-- <script src="__PUBLIC__/js/jquery.min.js"></script> -->
<script src="__PUBLIC__/js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="__PUBLIC__/js/app.js"></script>
</body>
</html>


<style type="text/css">
  .am-fotter-box{
    margin-top: 20px;
  }
  .am-fotter-box span{
    width:80px;
    display:inline-block;
    text-align: right;
    padding-right: 10px;
    vertical-align:middle;
  }
  .am-fotter-box>div{
    margin-top:10px;
  }
  .am-fotter-box>div:first-child{
    margin-top:10px;
  }
  table.am-table tbody td{
    vertical-align:middle;
  }
</style>
<script type="text/javascript" >
  $(function(){

    deleteTr();
    addBindTr();
  });


function deleteTr(){

    $('table.am-table tbody').on('click', '.am-text-danger', function(){
      $(this).parent().parent().parent().parent().remove();
    });
}

function addBindTr(){
    $('.am-a-plus').bind('click', function(){
      addTr();
    });
}

function addTr(){
  if(arguments.length == 0){
    $('table.am-table-normal tbody').append('<tr>'
        +'<td class="am-release table-id"><input style="width:60px" type="text" value="" name="body_author"></td>'
        +'<td class="table-author"><input type="text" value="" name="body_title"></td>'
        +'<td class="table-author"><input type="text" value="" name="body_video_url"></td>'
        +'<td class="table-author"><input type="text" value="" name="body_img"></td>'
        +'<td class="table-id"><input style="width:60px" type="text" name="body_password"></td>'
        +'<td class="table-author"><textarea name="body_video_code" ></textarea></td>'
        +'<td>'
          +'<div class="am-btn-toolbar">'
            +'<div class="am-btn-group am-btn-group-xs">'
               
              +'<a class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</a>'
            +'</div>'
          +'</div>'
        +'</td>'
      +'</tr>');
  }else{

    $('table.am-table-normal tbody').append('<tr data-id='+arguments[0]+' data-videoid='+arguments[4]+' data-gameMadUserId = '+ arguments[5] +'>'
        +'<td class="am-release"><input type="text" value="'+arguments[1]+'" disabled="disabled"></td>'
        +'<td>'+arguments[2]+'</td>'
        +'<td>'+arguments[3]+'</td>'
        +'<td>'
          +'<div class="am-btn-toolbar">'
            +'<div class="am-btn-group am-btn-group-xs">'
               
              +'<a class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</a>'
            +'</div>'
          +'</div>'
        +'</td>'
      +'</tr>');
  }
}

function submitReturn(){
  var data = new Array();
  var dataAll = new Array();
  var relValue;
  var dataTr = $('table.am-table-normal tbody tr');
  if(dataTr.length <= 0){
    alert('请至少增加一个视频进行发布。');
    return;
  }
  dataTr.each(function(index, element){
    data[index] = {};
    console.log(index);
    $(this).children('td').each(function(index2, elements2){

      //relValue = $(elements2).children().val().replace(/</gm,'&lt;').replace(/>/gm, '&gt;');
       relValue = $(elements2).children().val().replace(/&lt;/gm,'<').replace(/&gt;/gm, '>');
      data[index][$(elements2).children().attr('name')] = relValue;
    });
    //data[index] = dataChild;
    //dataChild = new Array();
    //data[0]['body_author'] = 'qqqqqqqqqqqqqq';
  });


  var head_id = $('input[name="head_id"]').val();
  var date = $('input[name="datePub"]').val();
  var title = $('input[name="title"]').val();
  var explain = $('textarea[name="explain"]').val();
  var video_url = $('input[name="video_url"]').val();
  var password = $('input[name="password"]').val();
  var img = $('input[name="img"]').val();
  if(date == ""){
    alert('请填写日期');
    return;
  }
  if(title == ""){
    alert('请填写标题');
    return;
  }
  if(img == ""){
    alert('请填写封面链接');
    return;
  }
  dataAll[0] = head_id;
  dataAll[1] = date;
  dataAll[2] = title;
  dataAll[3] = explain;
  dataAll[4] = video_url;
  dataAll[5] = password;
  dataAll[6] = img;
  //dataAll['mydata'] = data;

  var url = "http://"+window.location.host+"/index.php/Organize/Video/saveRelease";

  jQuery.ajax({
    type: "post",
    url: url,
    dataType : 'json',
    data : {'mydata':data, 'datahead':dataAll},
    success: function(res,textStatus){
        alert(res.info);
        if(res.status == 1){
          window.location.href=res.data;
        }
    },
    error: function(xhr,status,errMsg){
        //alert("操作失败!");
    }
  });

}

</script>