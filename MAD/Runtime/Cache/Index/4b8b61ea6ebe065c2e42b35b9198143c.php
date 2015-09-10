<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Drawmad</title>

  <meta name="keywords" content="MAD,AMV,MV,M@D,MADER,视频,分享">
  <meta name="description" content="drawmad为MADER们量身打造的网站">
  <link rel="stylesheet" href="__PUBLIC__/css/resert.css"/>
  <link rel="stylesheet" href="__PUBLIC__/css/main.css"/>
  <script src="__PUBLIC__/js/jquery-2.1.1.min.js" type="text/javascript"></script>
  <style type="text/css">
  .noticeNew{
    width:8px;
    height: 8px;
    background-image: url(__PUBLIC__/images/noticeNew.png);
    position:absolute;
    top: 8px;
    right: 10px;
  }
  </style>
</head>
<body>
  <div class="wrap">
    <div class="topbar">
      <div class="topbar-wrap">
      <div class="topbar-left">
        <a href="http://<?php echo ($_SERVER['SERVER_NAME']); ?>"></a>
        <ul>
          <li><a href="http://<?php echo ($_SERVER['SERVER_NAME']); ?>">首页</a></li>
          <li><a href="__APP__/Video">视频</a></li>
          <li><a href="#">教程</a></li>
          <li><a href="http://www.madsck.com" target="_blank">资源</a></li>
          <li class="huodong">
            <a href="#">活动赛事</a>
            <ul>
              <li><a href="__APP__/Events">新人战</a></li>
              <li><a href="">HARU祭</a></li>
              
            </ul>
          </li>
          <li><a href="__APP__/Moewolf" target="_blank">Moewolf</a></li>
        </ul>
      </div>
      <div class="topbar-right">
        <ul>
          <li class="topbar-right-user">
          <?php if($_SESSION['id'] == null): ?><a href="__APP__/Login">
              <img src="__PUBLIC__/images/noLogin.png" alt="" style="width:36px; height:36px">
            </a>
          <?php else: ?>
            <a href="__APP__/MyZone" target="_blank">
              <img src="__PUBLIC__/user_head/<?php echo ($_SESSION['img']); ?>" alt="" style="width:36px; height:36px">
              <?php if($noticeNum != 0): ?><div class="noticeNew">
                  
                </div><?php endif; ?>
            </a>
            <ul class="topbar-right-user-ul">
              <li class="topbar-right-user-one">
                <a href="__APP__/MyZone" target="_blank"><h3><?php echo ($_SESSION[nicheng]); ?></h3></a>
              </li>
              <li>
                <a href="__APP__/MyZone?cid=105&userid=<?php echo ($userid); ?>&msgType=notice">
                  <span>通知</span>
                  <?php if($noticeNum != 0): ?><label><?php echo ($noticeNum); ?></label><?php endif; ?>
                </a>
              </li>
              <li>
                <a href="#">
                  <span>回复</span>
                  <!-- <label>26</label> -->
                </a>
              </li>
              <li>
                <a href="#">
                  <span>私信</span>
                  <!-- <label>11</label> -->
                </a>
              </li>

              <li class="topbar-right-user-center">
                <a href="__APP__/MyZone" target="_blank">
                  <span>个人中心</span>
                </a>
              </li>
              
              <li>
                <a href="__APP__/Login/loginout">
                  <span>退出登录</span>
                </a>
              </li>
            </ul><?php endif; ?>
            
          </li>
          <li>
            <a href="__APP__/UpVideo" target="_blank">
              <img src="__PUBLIC__/images/upvideo.png" alt="">
            </a>
          </li>
          <li>
            <a href="__APP__/MyZone" target="_blank">
            <img src="__PUBLIC__/images/collect.png" alt="">
            </a>
          </li>
          <li class="topbar-right-search">
            <div>
            <form action="/index.php/Video/" target="_banlk" method=" get">
              <input onclick="select(this.value)" autocomplete="off" type="text" name="content" id="select" placeholder="" title="">
              <button action=""></button>
            </form>
            </div>
            
          </li>
        </ul>
      </div>
      </div>
    </div>
<link rel="stylesheet" href="__PUBLIC__/css/tab.css"/>
<link href="__PUBLIC__/uploadify/uploadify.css" rel="stylesheet">
<script src="__PUBLIC__/uploadify/jquery.uploadify.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="__PUBLIC__/css/upVideo.css"/>
<style type="text/css">
  .content-top{
    height: 390px;
  }
  .content-box{
    height: 1600px;
  }
  .content{
    height: 1820px;
  }
  .content-top .video{
    margin: 0 auto;
    margin-top: 25px;
    width: 550px;
    height: 300px;
  }
</style>

    
    <div class="content">
      <div class="content-box">
        <div class="content-top">

          <label for="">
          请先准备好<span class="span-green">视频文件</span>（480p，码率小于1000kbps）、<span class="span-green">封面图</span>（320×180），并构思好简介写啥以免挠掉头发~ 
          <p>推荐使用<a href="http://7xifjg.com1.z0.glb.clouddn.com/DrawmadTool(X64) V1.0.rar" class="main-right-help2" class="span-blue">drwmad专用压制工具</a></p>
          </label>
          
          <div class="video">
            <script type="text/javascript" src="__PUBLIC__/sewise-player/player/sewise.player.min.js"></script>
              <script type="text/javascript">
                  SewisePlayer.setup({
                      claritybutton:'disable',
                      topbardisplay:'disable',
                      autostart:'false',
                      draggable:'true',
                      server: "vod",
                      videourl: "http://<?php echo ($_SERVER['SERVER_NAME']); ?>/__PUBLIC__/videos/<?php echo ($video_old['video_path']); ?>",
                      
                      skin: "vodWhite",
                      title: "<?php echo ($video_old['title']); ?>",
                      lang: 'zh_CN',
                      logo:'www',
                      poster:"http://<?php echo ($_SERVER['SERVER_NAME']); ?>/__PUBLIC__/videos/<?php echo ($video_old['fengmian']); ?>"
                  });
              </script>


          </div>
        </div>

        <form  method='post' id="upvideoForm" action="__APP__/MyZone/updata_video" enctype="multipart/form-data">
        <input type="hidden"  id="id"  value="<?php echo ($user_id); ?>">
        <input type="hidden"  id="num"  value="<?php echo ($get_video_num); ?>">
        <div class="content-up">

            <input id="file_upload2" name="file_upload2" type="file" multiple="false">
            <div id="image_del"></div>
            <input type="hidden" name="video_path" id="video_path" >   
            <input type="hidden" id="url" value="__URL__">
            <input type="hidden" id="root" value="/">
            <script type="text/javascript">
            $(function() {
              $('#file_upload2').uploadify({
              'formData'  : {
                'timestamp' : '<?php echo ($time); ?>',            //时间
                'token'     : '<?php echo (md5($time )); ?>',    //加密字段
                'url'   : $('#url').val()+'/upload/', //url
                'imageUrl'  : $('#root').val()        //root
              },
                'method':'POST',
                'fileTypeDesc' : 'Video Files',         //类型描述
                'progressData' : 'speed',
                'multi'    : false,
                'queueSizeLimit' : 1, 
                'removeCompleted' : false,    //是否自动消失
                'fileTypeExts' : '*.flv;*.mp4',   //允许类型
                'fileSizeLimit' : '128MB',       //允许上传最大值
                'swf'      : '__PUBLIC__/uploadify/uploadify.swf',  //加载swf
                'uploader' : '__URL__/uploadify?id='+$('#id').val()+'&num='+$('#num').val(), //上传路径
                'buttonText' :'上传视频',         //按钮的文字
                 'width'  : '120',
                 'height'  : '38',
                 'hideButton' : true,        
                 'wmode'  : 'transparent',

                'onUploadSuccess' : function(file, data, response) {   //成功上传返回
              //var n=parseInt(Math.random()*100);                //100以内的随机数
              //alert(data);
              //插入到image标签内，显示图片的缩略图
                document.getElementById("video_path").value=data;
              },
                //当单个文件上传出错时触发
                'onUploadError' : function(file, errorCode, errorMsg, errorString) {
                alert('文件：' + file.name + ' 上传失败: ' + errorString);
              },


              });
            });
            </script>
            <br/>
            
            <input id="file_upload" name="file_upload" type="file" onclick="return" multiple="false">
            <div id="image_del"></div>
            <input type="hidden" name="fengmian" id="image" >
            <script type="text/javascript">
            $(function() {
            $('#file_upload').uploadify({
            'formData'  : {
            'timestamp' : '<?php echo ($time); ?>',            //时间
            'token'     : '<?php echo (md5($time )); ?>',    //加密字段
            'url'   : $('#url').val()+'/upload/', //url
            'imageUrl'  : $('#root').val()        //root
            },

            'method':'POST',
            'fileTypeDesc' : 'Image Files',         //类型描述
            'progressData' : 'speed',
            'multi'    : false,
            'queueSizeLimit' : 1,         //设置最多可以选择多少个文件
            'removeCompleted' : false,    //是否自动消失
            'fileTypeExts' : '*.gif; *.jpg; *.png;',    //允许类型
            'fileSizeLimit' : '5MB',         //允许上传最大值
            'swf'      : '__PUBLIC__/uploadify/uploadify.swf',  //加载swf     
            'uploader' : '__URL__/uploadify?id='+$('#id').val()+'&num='+$('#num').val(),//上传路径
            'buttonText' :'上传封面',                 //按钮的文字
            'onUploadSuccess' : function(file, data, response) {     //成功上传返回
            //var n=parseInt(Math.random()*100);                //100以内的随机数
            //alert(data);
            //插入到image标签内，显示图片的缩略图

            document.getElementById("image").value=data;
            }

            });
            });
            </script>

            <div class="content-input2">
              <!-- <input class="input-normal" type="submit" id="email" name="email" value="上传封面"> -->
            </div>
        </div>
        
        <div class="content-msg">
            <div class="content-input">
              <span>标题</span>
              <input class="input-normal" type="text" id="title" name="title" placeholder="请填写纯粹的标题,不要带【】什么的" value="<?php echo ($video_old["title"]); ?>">
              <script src="__PUBLIC__/js/ajax_title.js"></script>
              <a href="javascript:void(0)" id="jc_title" onclick="re_title()" >检测标题</a>
            </div>
            
            <div class="content-input">
              <span>音乐</span>
              <input class="input-normal " type="text" id="BGM" name="BGM" placeholder="" value="<?php echo ($video_old["BGM"]); ?>" >
            </div>

            <div class="content-input">
              <span>完稿</span>
              <input class="input-normal" type="date" id="wg_time" name="wg_time" placeholder="" value="<?php echo ($video_old["wg_time"]); ?>" >
            </div>

            <div class="content-input">
              <span class="textarea-bottom">简介</span>
              <textarea class="textarea-normal" name="jieshao" id="jieshao"  placeholder="200字以内" ><?php echo ($video_old["jieshao"]); ?></textarea>
            </div>
        </div>

        <div class="content-down">
          <div class="content-input  down">
              <span>高清原档下载链接</span>
              <input class="input-normal" type="text" id="xiazai" name="xiazai" placeholder="原档的下载全链接(http开头)，没有可不填" value="<?php echo ($video_old["xiazai"]); ?>">
            </div>

            <div class="content-input take">
              <span>提取码</span>
              <input class="input-normal" type="text" id="xiazaipass" name="xiazaipass" placeholder="没有可不填" value="<?php echo ($video_old["xiazaipass"]); ?>">
            </div>

            <div class="content-input purview">
              <span>下载权限</span>
              <select name="down_purview">
                <option value="0">所有人可下载</option>
                <option value="1">会员可下载</option>
              </select>
              <!-- <input class="input-normal" type="text" id="email" name="email" placeholder="所有人可下载"> -->
            </div>
        </div>
       
        <div class="content-tab">
          <div class="content-tab-wrap">
            如果您不选择标签，那么标签将不会被更换<br>
            <h3>最后请选择一下标签(最多四个)</h3>
            <ul class="tab_btn">
              <?php if(is_array($videoBigTypeList)): foreach($videoBigTypeList as $key=>$videoTypeList): ?><li data-tab="<?php echo ($videoTypeList["other_name"]); ?>" class="<?php echo ($videoTypeList["class"]); ?>">
                <?php echo ($videoTypeList["name"]); ?>
                </li><?php endforeach; endif; ?>
            </ul>
                 
           <ul class="tab_content">
            <?php if(is_array($videoBigTypeList)): foreach($videoBigTypeList as $key=>$videoTypeList): ?><li data-tab="<?php echo ($videoTypeList["other_name"]); ?>" class="<?php echo ($videoTypeList["class"]); ?>" data-id="<?php echo ($videoTypeList["id"]); ?>">
                <?php if(is_array($videoTypeList["videoType"])): foreach($videoTypeList["videoType"] as $key=>$value): ?><input type="checkbox" id="<?php echo ($videoTypeList["name"]); echo ($value["id"]); ?>" value="<?php echo ($value["name"]); ?>-<?php echo ($value["id"]); ?>" name="biaoqian<?php echo ($videoTypeList["id"]); ?>[]" class="type_checkbox hide" on>
                  <label for="<?php echo ($videoTypeList["name"]); echo ($value["id"]); ?>" class="check"><?php echo ($value["name"]); ?> <?php echo ($value["eng_name"]); ?></label><?php endforeach; endif; ?>
              </li><?php endforeach; endif; ?>
           </ul>
         </div>
        </div>

        <div class="content-last">
          
          <input class="input-normal" type="button" id="submit" name="submit" value="提交" onclick="submitVideo()"><!--document.getElementById('uptx').style.display='block-->
          <div id="uptx" style=" margin:0 auto; width:250px; margin-top:15px;display:none;">视频上传中，可能需要三到五分钟。<img src="__PUBLIC__/images/up_video.gif" style="margin-left:5px;"/>
          </div>
          <span>终于填完了...</span>
        </div>
        

        <input type="hidden" name="biaoqianType" id="biaoqianType">
        <input type="hidden" name="videoid" id="videoid" value="<?php echo ($video_old["id"]); ?>">
        <input type="hidden" name="is_original" value="<?php echo ($video_old["is_original"]); ?>">
        </form>
      </div>
    </div>
    


		<div class="foot">
			<div class="foot-wrap">
				<div class="foot-left">
					<ul>
						<li style="color:#333;font-weight: bold;">本站由Drawmad工作室创办</li>
						<li>联系我们：drawmad@163.com</li>
						<li>合作伙伴：BGM新人战  HARU祭</li>
						<li>免责声明  |  帮助中心  |  建议和bug提交  |  申诉举报</li>
					</ul>
				</div>
				
				<div class="foot-right">
					<div>
						友情链接
					</div>
					<ul>
						<li>
							<ul class="foot-right-ul">
								<li><a href="http://tieba.baidu.com/f?ie=utf-8&kw=mad" target="_blank">百度MAD吧</a></li>
								<li><a href="http://www.madsck.com/" target="_blank">MAD素材库</a></li>
								<li><a href=""></a>TOWIKO论坛</li>
							</ul>
						</li>
						<li>
							<ul class="foot-right-ul foot-right-col">
								<li>雪飘工作室</li>
								<li>TIMMAD论坛</li>
							</ul>
						</li>
						<li>
							<ul class="foot-right-ul foot-right-col">
								<li><a href="http://amvnews.ru/" target="_blank">amvnews.ru</a></li>
								<li><a href="http://akross.ru/" target="_blank">akross.ru</a></li>
							</ul>
						</li>

					</ul>
				</div>
			</div>
		</div>

	</div>
	
  <script src="__PUBLIC__/js/bar.js" type="text/javascript"></script>
</body>
</html>

<script src="__PUBLIC__/js/tab.min2.js" type="text/javascript"></script>
<script src="__PUBLIC__/js/tab.min.js" type="text/javascript"></script>

<script type="text/javascript">
    
    function submitVideo(){
        $.ajax({
            type:'POST',
            url:'/index.php/MyZone/updata_video',
            data:$('#upvideoForm').serialize(),
            cache:false,
            async:true,
            dataType:'json',
            success:function(data){
              if(data.status == 1){
                  alert(data.data);
              }else if(data.status == 2){
                  alert(data.data);
                  var home = "http://"+ window.location.host;
                  window.location.href = home;
              }else{
                  alert('网络错误,请检查网络后重试~');
              }

            }

        });
    }


    $("input.type_checkbox").change(function(){
      var tag = $("input.type_checkbox[type='checkbox']:checked");
      var current = $(this);

      $('#biaoqianType').val(current.parent('li').data('id'));
      
      if(tag.length>0){
        $('.tab_btn li').each(function(){
          if(!($(this).data('tab') == current.parent('li').data('tab'))){

            //$("script[src='__PUBLIC__/js/modules/tab.min.js']").remove();
            //$(this).attr('disabled','disabled');
            //$(this).parent().unbind("click");
            $(this).css({
             "color":"#999",
            });
          }
        });
      }else{
        $('.tab_btn li').each(function(){
           //$(this).parent().bind("click");
           //jQuery.getScript("__PUBLIC__/js/modules/tab.min.js");
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