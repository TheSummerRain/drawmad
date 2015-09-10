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
            <input type="text" name="title" class="am-form-field" value="<?php echo ($releaseTitle); ?>" style="width: 170px;">
                <span class="am-input-group-btn">
                  <button class="am-btn am-btn-default" type="submit">发布标题</button>
                </span>

            <input type="date" name="datePub" class="am-form-field" value="<?php echo ($releaseDate); ?>">
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
                <th class="table-author">参赛人昵称</th><th class="table-author">参赛人视频</th><th class="table-author">所属组别</th><th class="table-author">操作</th>
              </tr>
          </thead>
          <tbody>
            

            <?php if(is_array($releaseList)): foreach($releaseList as $key=>$release): ?><tr data-id="<?php echo ($release["id"]); ?>" data-videoId="<?php echo ($release["video_id"]); ?>" data-gameMadUserId="<?php echo ($release["game_mad_user_id"]); ?>" >
              <td class="am-release"><input type="text" name="nicheng" value="<?php echo ($release["nicheng"]); ?>" disabled="disabled"></td>
              <td><?php echo ($release["title"]); ?></td>
              <td><?php echo ($release["group_name"]); ?></td>
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


<!--双击弹出选择-->
<div class="mark-bg"></div>
<div class="mark-content">


<div class="mark-am-tabs-bd"><!--am-tabs-bd -->
  <div class="am-g am-margin-top">
      <div class="am-u-md-6 am-cf">
        <div class="am-fl am-cf">
          
        </div>
      </div>

      <div class="am-u-md-3 am-cf">
        <div class="am-fr">
          <div class="am-input-group am-input-group-sm">
            <input type="text" class="am-form-field am-input-search" >
                <span class="am-input-group-btn">
                  <button class="am-btn am-btn-search am-btn-default" type="submit">搜索</button>
                </span>
          </div>
        </div>
      </div>
          
    </div>

    <div class="am-g">
      <div class="am-u-sm-12">
        
          <table class="mark-am-table am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th width="30"></th>
                <th class="table-author">参赛人昵称</th><th class="table-author">参赛人视频</th><th class="table-author">所属组别</th>
              </tr>
          </thead>
          <tbody>

            
          </tbody>
        </table>

<div class="am-cf">
</div>
      <hr/>
        <div class="am-padding-bottom am-float-right">
          <input type="submit" name="" value="确定" class="am-btn am-btn-primary am-btn-sm am-fl mark-am-btn-confirm">

          <input type="submit" name="" value="取消" class="am-btn am-btn-default am-btn-sm am-fl mark-am-btn-cancel">
        </div>

      </div>
  </div>
</div>

<div class="mark-loading"></div>
<div class="ui-close mark-ui-close"></div>
</div>
<style type="text/css">
  .mark-bg{
    background: #000;
    opacity:0.5;
    width: 900px;
    height: 900px;
    position: absolute;
    z-index: 100;
    top: 0;
    left: 0;
    display: none;
  }
  .mark-am-tabs-bd{
    display:none;
  }
  .am-float-right{
    float:right;
  }
  .mark-loading{
    width: 96px;
    height: 32px;
    text-align: left;
    text-indent: -9999em;
    overflow: hidden;
    background: transparent url("__PUBLIC__/images/loading.gif") no-repeat scroll center center;
    position: relative;
    left: 50%;
    bottom: 250px;
    margin-left: -48px;
    margin-top: -16px;
  }
  .mark-content{
    display: none;
    background:#fff;
    width:800px;
    min-height: 500px;
    position: absolute;
    z-index: 101;
    top:0;
    left:0;
    padding: 5px;
  }
  .mark-ui-close{
    position: absolute;
    right: 5px;
    top:5px;
    cursor:pointer;
  }
  .ui-close:hover{
    background-position: -87px -18px;
  }
  .ui-close {
      background-position: -87px 0px;
      font-size: 0px;
      line-height: 0;
      overflow: hidden;
      width: 18px;
  }
  .ui-min, .ui-max, .ui-close, .ui-res {
      background-image: url("__PUBLIC__/images/minIcon.gif");
      background-repeat: no-repeat;
      color: #FFF;
      width: 18px;
      height: 18px;
      line-height: 18px;
  }

</style>
<script type="text/javascript" >
  $(function(){

    animateMark();
    addBindTr();
  });

function clickInputTr(){
  $('table.mark-am-table tbody').on('click', 'tr', function(){

    if ($(this).children('td').children('input').is(":checked")) {
      $(this).children('td').children('input').prop('checked', false);
    }else{
      $(this).children('td').children('input').prop('checked', true);
    }
        
  })

  $('table.mark-am-table tbody').on('click', 'tr input', function(){
    if ($(this).is(":checked")) {
      $(this).prop('checked', false);
    }else{
      $(this).prop('checked', true);
    }
        
  })
}

function animateMark(){
  searchRelease();
  getData();
  closeMark();
  btnMatk();
  deleteTr();
  clickInputTr();
}

function btnMatk(){
  $('.mark-am-btn-confirm').bind('click', function(){
    var length = $('table.mark-am-table tbody input:checked').length;
    if(length>0){
      $('.mark-ui-close').click();

      $('table.mark-am-table tbody input:checked').each(function(index, element){
        var thisTr = $(this).parent().parent();

        addTr('0000', thisTr.data('nicheng'),thisTr.data('title'),thisTr.data('group_name'),thisTr.data('video_id'),thisTr.data('id'));
      });

    }else{
      alert('请至少选择一个视频进行发布。');
    }
  })

  $('.mark-am-btn-cancel').bind('click', function(){
    $('.mark-ui-close').click();
  })
}

function getData(){

    $('table.am-table').on('dblclick', 'td.am-release input', function(){

        $('.mark-bg').css({
          'display':'block',
          'width':$(document).width(),
          'height':$(document).height()
        });
        $('.mark-content').css({
          'display': 'block',
          'left':$(window).width()/2 - $('.mark-content').width()/2,
          'top':$(window).height()/2 - $('.mark-content').height()/2 + $(document).scrollTop()
        });

        $('.am-btn-search').click();
        

    });
}

function getDataSource(){
  
}

function closeMark(){
  $('.mark-ui-close').bind('click', function(){
      $('.mark-bg').css('display', 'none');
      $('.mark-content').css('display', 'none');
    });
}

function addBindTr(){
    $('.am-a-plus').bind('click', function(){
      addTr();
    });
}

//id, nicheng, title, group_name, video_id
function addTr(){
  if(arguments.length == 0){
    $('table.am-table-normal tbody').append('<tr>'
        +'<td class="am-release"><input type="text" value="" disabled="disabled"></td>'
        +'<td></td>'
        +'<td></td>'
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

function deleteTr(){

    $('table.am-table tbody').on('click', '.am-text-danger', function(){
      $(this).parent().parent().parent().parent().remove();
    });
}

function submitReturn(){
  var data = new Array();
  var dataTr = $('table.am-table-normal tbody tr');
  if(dataTr.length <= 0){
    alert('请至少选择一个视频进行发布。');
    return;
  }
  dataTr.each(function(index, element){
    //data[index]['id'] =$(this).data('id');
    //data[index]['videoid'] =$(this).data('videoid');
    data[index] =$(this).data('gamemaduserid');

  });


  var head_id = $('input[name="head_id"]').val();
  var date = $('input[name="datePub"]').val();
  var title = $('input[name="title"]').val();
  if(date == ""){
    alert('请填写日期');
    return;
  }
  if(title == ""){
    alert('请填写标题');
    return;
  }

  var url = "http://"+window.location.host+"/index.php/Game/Release/saveRelease";

  jQuery.ajax({
    type: "post",
    url: url,
    dataType : 'json',
    data : {'mydata':data, 'head_id':head_id, 'date':date, 'title':title},
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

function searchRelease(){
  $('.am-btn-search').bind('click', function(){
    /*if($('.am-input-search').val() != ""){*/

      $('.mark-loading').css('display', 'block');
      var searchVal = $('.am-input-search').val();
      var url = "http://"+window.location.host+"/Game/Release/searchRelease";

      $.ajax({
        type:"post",
        url:url,
        dataType:'json',
        data:{'searchVal':searchVal},
        success:function(res, textStatus){
          if(res.status == 1){

            $('.mark-loading').css('display', 'none');
            $('.mark-am-tabs-bd').css('display', 'block');
            
            if($('table.mark-am-table tbody tr').length > 0){
              $('table.mark-am-table tbody').html('');
            }
            
            $(res.data).each(function(index, element){
              
              $('table.mark-am-table tbody').append('<tr data-id='+this.game_mad_user_id+' data-nicheng='+this.nicheng+' data-title="'+this.title+'" data-group_name='+this.group_name+' data-videoid='+this.video_id+' data-videoid='+this.video_id+'>'
                +'<td><input type="checkbox"/></td>'
                +'<td class="am-release">'+this.nicheng+'</td>'
                +'<td>'+this.title+'</td>'
                +'<td>'+this.group_name+'</td>'
                
              +'</tr>');

            })

          }else{
            alert('获取出错');
          }

        },
        error:function(xhr, status, errMsg){
          alert('网络错误,搜索失败！');
        }
      });

  })
}

</script>