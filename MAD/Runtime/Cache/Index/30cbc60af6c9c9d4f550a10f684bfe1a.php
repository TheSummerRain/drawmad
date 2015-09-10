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
<link rel="stylesheet" href="__PUBLIC__/css/page.css">
<link rel="stylesheet" href="__PUBLIC__/css/myZone.css">
<style type="text/css">

</style>
    <div class="content">
      <div class="content-top-wrap">
        <div class="content-top">
          <div class="content-left">
            <div class="user-head">
              <img src="__PUBLIC__/user_head/<?php echo ($userInfo["img"]); ?>" alt="">
            </div>
            
            <form id="upload" method='post' action="__URL__/up_head" enctype="multipart/form-data" class="mt20">
               <input type='file'  id="image1" name='image1' accept=".jpg,.jpeg,.png,.gif" onchange="imageUpload();">
              <!--  <input type="submit"  id="inputImage" value="上传头像(3M)"> -->
            

            <div class="user-head-wrap">
              <div class="user-head-mask">
                
              </div>
              <div class="user-head-content">
                修改头像
              </div>
            </div>
            
            </form> 

            <div class="head-explan">
              <h3><?php echo (mb_substr($userInfo["nicheng"],0,20,'utf-8')); ?></h3>
              <span id="userInfoSpan"><?php echo ($userInfo["text"]); ?></span>
              <textarea name="userInfoTextarea" id="userInfoTextarea" ><?php echo ($userInfo["text"]); ?></textarea>
              <a href="#" class="head-explan-a" id="personal-sign">编辑</a>
            </div>
            
          </div>
          
          <div class="content-right">
            <div class="user-uid">
              <span>作品</span><label><?php echo ($userInfo["video_num"]); ?></label>
              <p>UID:<?php echo ($userInfo["id"]); ?></p>
            </div>
            <div class="user-friend">
              <span>粉丝</span><label for=""><?php echo ($userInfo["user_friend_count"]); ?></label>
              <p>身份:<?php echo ($userInfo["name_type"]); ?></p>
            </div>
            <a class="user-upvideo" href="__APP__/UpVideo" target="_blank">
              投稿
            </a>
          </div>
          
        </div>
      </div>

      <div class="content-bottom">
        <div class="directory-left">
          <ul>
            <li>
              <a class="<?php echo ($lia101); ?>" href="__APP__/MyZone?cid=101&userid=<?php echo ($userid); ?>">视频</a>
            </li>
            <li>
              <a class="<?php echo ($lia102); ?>" href="__APP__/MyZone?cid=102&userid=<?php echo ($userid); ?>">收藏夹</a>
            </li>
            <li>
              <a class="<?php echo ($lia103); ?>" href="__APP__/MyZone?cid=103&userid=<?php echo ($userid); ?>">我关注的</a>
            </li>
            <li>
              <a class="<?php echo ($lia104); ?>" href="__APP__/MyZone?cid=104&userid=<?php echo ($userid); ?>">我的粉丝</a>
            </li>
            <li>
              <a class="<?php echo ($lia105); ?>" href="__APP__/MyZone?cid=105&userid=<?php echo ($userid); ?>">消息</a>
            </li>
            <li>
              <a class="<?php echo ($lia106); ?>" href="__APP__/MyZone?cid=106&userid=<?php echo ($userid); ?>">账号</a>
            </li>
          </ul>
        </div>
        
        <!-- 101视频 102收藏夹 103关注 104粉丝 105消息 106账号 -->
        <?php switch(${cid}): case "101": ?><!--视频-->
            <div class="directory-right">
              <div class="main-left-video main-video">
                <ul>
                    <?php if(is_array($messageList)): $i = 0; $__LIST__ = $messageList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i; if(($key+1) % 3): ?><li class="video-detail video-common">
                        <a class="video-img" href="__APP__/VideoDetail?vid=MAD<?php echo ($v["id"]); ?>" target="_blank"><img src="__PUBLIC__/videos/<?php echo ($v["fengmian"]); ?>" alt="封面未找到" class="video_pic"></a>
                      <div class="delvideo" onclick="delVideo(<?php echo ($v["id"]); ?>,this)"></div>
                    <?php else: ?>
                      <li class="video-detail video-common-other">
                        <a class="video-img" href="__APP__/VideoDetail?vid=MAD<?php echo ($v["id"]); ?>" target="_blank"><img src="__PUBLIC__/videos/<?php echo ($v["fengmian"]); ?>" alt="封面未找到" class="video_pic"></a>
                      <div class="delvideo" style="right:0;" onclick="delVideo(<?php echo ($v["id"]); ?>,this)"></div><?php endif; ?>
                        
                        <a class="video-title" href="__APP__/VideoDetail?vid=MAD<?php echo ($v["id"]); ?>" target="_blank" class="video-distance" >
                        <h4 class="">
                          <?php if($v["state"] == 0): ?>[未审核]
                            <?php elseif($v["state"] == 2): ?>
                          [已被封禁]<?php endif; ?>
                          <?php echo (mb_substr($v["title"],0,18,'utf-8')); ?>
                        </h4>
                        </a>
                        <p  class="video-distance video-distance-p"><?php echo ($v["biaoqian"]); ?></p>
                        <div class="video-distance">
                          <div class="score">评分:<?php echo ($v["score"]); ?></div>
                          <div class="msg">
                            <p><?php echo ($v["comments"]); ?>&nbsp;评论&nbsp;/&nbsp;<?php echo ($v["collect"]); ?>&nbsp;收藏</p>
                          </div>
            
                          <a href="__URL__/edit_video?video_id=MAD<?php echo ($v["id"]); ?>" target="_blank" class="head-explan-avideo head-explan-common">编辑</a>
                        </div>
                      </li><?php endforeach; endif; else: echo "" ;endif; ?>
            
                </ul>
                
              </div>
            
              <div class="manu" >     
                <?php if($messageList != null): echo ($page); ?>
                <?php else: endif; ?>
              </div>
            </div><?php break;?>

          <?php case "102": ?><!--收藏夹-->
            <div class="directory-right">
       
             <div class="main-left-video main-video">
               <ul>
                   <?php if(is_array($messageList)): $i = 0; $__LIST__ = $messageList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i; if(($key+1) % 3): ?><li class="video-detail video-common">
                     <a class="video-img" href="__APP__/VideoDetail?vid=MAD<?php echo ($v["video_id"]); ?>" target="_blank"><img src="__PUBLIC__/videos/<?php echo ($v["fengmian"]); ?>" alt="封面未找到" class="video_pic"></a>
                      <div class="delvideo" onclick="delSc(<?php echo ($v["id"]); ?>,this)"></div>

                     <?php else: ?>
                     <li class="video-detail video-common-other">
                     <a class="video-img" href="__APP__/VideoDetail?vid=MAD<?php echo ($v["video_id"]); ?>" target="_blank"><img src="__PUBLIC__/videos/<?php echo ($v["fengmian"]); ?>" alt="封面未找到" class="video_pic"></a>
                      <div class="delvideo" style="right:0;" onclick="delSc(<?php echo ($v["id"]); ?>,this)"></div><?php endif; ?>
                       
                       <a class="video-title" href="__APP__/VideoDetail?vid=MAD<?php echo ($v["video_id"]); ?>" target="_blank" class="video-distance" ><h4 class=""><?php echo ($v["title"]); ?></h4></a>
                       <p  class="video-distance video-distance-p"><?php echo ($v["biaoqian"]); ?></p>
                       <div class="video-distance">
                         <div class="score">评分:<?php echo ($v["score"]); ?></div>
                         <div class="msg">
                           <p><?php echo ($v["comments"]); ?>&nbsp;评论&nbsp;/&nbsp;<?php echo ($v["collect"]); ?>&nbsp;收藏</p>
                         </div>
                        
                         <a href="#" class="copy head-explan-common video-distance-b" value="<?php echo ($_SERVER['SERVER_NAME']); ?>__APP__/VideoDetail?vid=MAD<?php echo ($v["video_id"]); ?>">复制链接</a>
                       </div>
                     </li><?php endforeach; endif; else: echo "" ;endif; ?>
               </ul>
               
             </div>
           
             <div class="manu" >     
               <?php if($messageList != null): echo ($page); ?>
               <?php else: endif; ?>
             </div>
           </div><?php break;?>

          <?php case "103": ?><!--关注-->
            <div class="directory-right" style="padding:50px 0 0 50px; width:794px;">
            
              <div class="main-left-video main-video">
                <ul>
                  <?php if(is_array($messageList)): $i = 0; $__LIST__ = $messageList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$fans): $mod = ($i % 2 );++$i;?><li class="main-video-li video-common-aa">
                      <div class="user-friend-a">
                        <div class="user-head">
                          <img src="__PUBLIC__/user_head/<?php echo ($fans["img"]); ?>" alt="">
                        </div>

                        <div class="head-explan-div">
                          <h3><?php echo (mb_substr($fans["nicheng"],0,20,'utf-8')); ?></h3>
                          <a href="#" class="head-explan-aa">私信</a>
                          <a href="#" class="head-explan-bb" value="<?php echo ($fans["uid"]); ?>" >删除</a>
                          
                        </div>
                      </div>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                    
            
                </ul>
                
              </div>
            
              <div class="manu" >     
                <?php if($messageList != null): echo ($page); ?>
                <?php else: endif; ?>
              </div>
            </div><?php break;?>

          <?php case "104": ?><!--粉丝-->

            <div class="directory-right" style="padding:50px 0 0 50px; width:794px;">
            
              <div class="main-left-video main-video">
                <ul>
                  <?php if(is_array($messageList)): $i = 0; $__LIST__ = $messageList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$fans): $mod = ($i % 2 );++$i;?><li class="main-video-li video-common-aa">
                      <div class="user-friend-a">
                        <div class="user-head">
                          <img src="__PUBLIC__/user_head/<?php echo ($fans["img"]); ?>" alt="">
                        </div>
                        <div class="head-explan-div">
                          
                          <h3><?php echo (mb_substr($fans["nicheng"],0,20,'utf-8')); ?></h3>
                          <a href="#" class="head-explan-dd">私信</a>
                          <?php if($fans["is_mutual"] == 0): ?><a href="#" class="head-explan-cc" name="addgz">关注</a>
                          <?php else: ?>
                            <a href="#" class="head-explan-cc" style="color:#999" name="addgz">已关注</a><?php endif; ?>
                          <input type="hidden" name="user_friend_id" value="<?php echo ($fans["uid"]); ?>">
                        </div>
                      </div>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
                
              </div>
            
              <div class="manu" >     
                <?php if($messageList != null): echo ($page); ?>
                <?php else: endif; ?>
              </div>
            </div><?php break;?>

          <?php case "105": ?><!--消息-->
             <input type="hidden" value="<?php echo ($listRows); ?>" id="listRows">
             <div class="directory-right" style="padding:50px 50px 0 50px; width:744px; ">
             
             <div class="video-comment-title">
               <ul>
                 <li class="<?php echo ($reply); ?>" data-tab="reply">回复我</li>
                 <li class="<?php echo ($msg); ?>" data-tab="msg">私信</li>
                 <li class="<?php echo ($notice); ?>" data-tab="notice">通知</li>
               </ul>
             </div>

             <div class="video-comment-list video-comment-<?php echo ($reply); ?>" data-tab="reply" data-tabVal="1">

                <!-- <div class="comment">
                 <div class="comment-left">
                   <img src="__PUBLIC__/images/userhead.jpg" alt="">
                 </div>
                 <div class="comment-right">
                   <ul>
                     <li class="comment-title">
                       <div>
                         <span class="comment-title-num">#1243</span><span class="comment-title-name">雨泪飘零</span>
                       </div>
                       
                     </li>
                     <li class="comment-content">
                       倒闭神真是吊
                     </li>
                     <li class="comment-date">
                       <div>2015-04-05 15:23</div>
                     </li>
                   </ul>
                          
                   <div class="comment-control">
                     <a href="" class="comment-control-del">回复</a><a href="" class="comment-control-return">跳转</a>
                   </div>
                 </div>
                </div>  -->

             </div>
              
              <div class="video-comment-list video-comment-<?php echo ($msg); ?>" data-tab="msg" data-tabVal="2">

                <!-- <div class="comment">
                 <div class="comment-left">
                   <img src="__PUBLIC__/images/userhead.jpg" alt="">
                 </div>
                 <div class="comment-right">
                   <ul>
                     <li class="comment-title">
                       <div>
                         <span class="comment-title-num">#1243</span><span class="comment-title-name">雨泪飘零</span>
                       </div>
                       
                     </li>
                     <li class="comment-content">
                       倒闭神真是吊
                     </li>
                     <li class="comment-date">
                       <div>2015-04-05 15:23</div>
                     </li>
                   </ul>
                          
                   <div class="comment-control">
                     <a href="" class="comment-control-del">回复</a><a href="" class="comment-control-return">跳转</a>
                   </div>
                 </div>
                </div>  -->

             </div>

             <div class="video-comment-list video-comment-<?php echo ($notice); ?>" data-tab="notice" data-tabVal="3">
                
              <?php if(is_array($messageList)): foreach($messageList as $key=>$notice): ?><div class="comment">
                   
                   <div class="comment-right comment-right-notice">
                     <ul >
                       <li class="comment-title">
                         <div>

                           <span class="comment-title-num">系统通知</span>
                          <?php if($notice["state"] == 0): ?><span class="comment-title-name">(new)</span>
                             <?php else: endif; ?>

                         </div>
                         
                       </li>
                       <li class="comment-content">
                         <?php echo ($notice["message"]); ?>
                       </li>
                       <li class="comment-date">
                         <div><?php echo ($notice["notice_date"]); ?></div>
                       </li>
                     </ul>
                            
                     <div class="comment-control"><a data-id="<?php echo ($notice["id"]); ?>" class="comment-control-return">删除</a>
                     </div>
                   </div>
                 </div><?php endforeach; endif; ?>

                <div class="manu notice-page" >     
                 <?php if($messageList != null): echo ($page); ?>
                 <?php else: endif; ?>
                </div>

             </div>
                            
               
             </div><?php break;?>

          <?php case "106": ?><!--账号-->
            <div class="directory-right" style="padding:50px 0 0 50px; width:794px;">
            
              <div class="main-account main-video">
                <ul class="main-account-ul">
                    <li>邮箱：<?php echo ($userInfo["email"]); ?></li>
                    <li>昵称：<?php echo ($userInfo["nicheng"]); ?></li>
                    <li>注册时间：<?php echo (date('Y-m-d', $userInfo["reg_time"])); ?></li>
                    
                   <div class="main-split-img">修改密码</div>
                </ul>
                
                <form action="__URL__/updatePwd" method="POST">
                <div class="main-detail">
                  <div class="main-input">
                    <h3>旧密码:</h3>
                    <input class="input-normal" type="password" id="oldpassword" name="oldpassword" onkeyup="checkUser(this.value,this.name)">
                    <label for="oldpassword"></label>
                  </div>

                  <div class="main-input">
                    <h3>新密码:</h3>
                    <input class="input-normal" type="password" id="password" name="password" onkeyup="checkUser(this.value,this.name)" >
                    <label for="password"></label>
                  </div>

                  <div class="main-input">
                    <h3>确认新密码:</h3>
                    <input class="input-normal" type="password" id="rpassword" name="rpassword" onkeyup="checkUser(this.value,this.name)" >
                    <label for="rpassword"></label>
                  </div>
                  
                  <input class="input-normal" type="submit" >
                </div>
                </form>
              </div>
            
                <script type='text/javascript'>
                  var xml;
                  function checkUser(myValue,name){

                    var url="http://"+ window.location.host+"/Regist/check?"+name+"="+myValue;
                    spanname = name;
                    xml=new XMLHttpRequest();
                    xml.onreadystatechange=state_Change;
                    xml.open('post',url,true);
                    xml.send();
                  }
                  function state_Change()
                  {
                    if (xml.readyState==4)
                    {
                      if (xml.status==200)
                      {
                        $('#'+spanname).next('label').text(xml.responseText);
                      }
                      else
                      {
                        //alert("Problem retrieving data:" + xml.statusText);
                      }
                    }
                  }
                </script>

            </div><?php break;?>

          <?php default: endswitch;?>

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

<script type="text/javascript" src="__PUBLIC__/jQuery-zclip/jquery.zclip.js"></script>
<script type="text/javascript" src="__PUBLIC__/js/ajax_MyZone_all.js"></script>
<script type="text/javascript">

$(document).ready(function(){

/* 定义所有class为copy标签，点击后可复制被点击对象的文本 */
    $(".copy").zclip({
        path: "__PUBLIC__/jQuery-zclip/ZeroClipboard.swf",
        copy: function(){
          return $(this).attr('value');
        },
        beforeCopy:function(){/* 按住鼠标时的操作 */
            //$(this).css("color","orange");
        },
        afterCopy:function(){/* 复制成功后的操作 */
            var $copysuc = $("<div class='copy-tips'><div class='copy-tips-wrap'>☺ 复制成功</div></div>");
            $("body").find(".copy-tips").remove().end().append($copysuc);
            $(".copy-tips").fadeOut(3000);
        }
    });
/* 定义所有class为copy-input标签，点击后可复制class为input的文本 */
    $(".copy-input").zclip({
        path: "__PUBLIC__/jQuery-zclip/ZeroClipboard.swf",
        copy: function(){
          return $(this).parent().find(".input").val();
        },
        afterCopy:function(){/* 复制成功后的操作 */
            var $copysuc = $("<div class='copy-tips'><div class='copy-tips-wrap'>☺ 复制成功</div></div>");
            $("body").find(".copy-tips").remove().end().append($copysuc);
            $(".copy-tips").fadeOut(3000);
        }
    });

    $('.video-comment-title li').bind('click', function(){
      if(!$(this).hasClass('activity')){

        $('.video-comment-title li.activity').removeClass('activity');
        $('.video-comment-activity').removeClass('video-comment-activity');

        var thiss = $(this);
        $('.video-comment-list').each(function(index, value){
          if(thiss.data('tab') == $(value).data('tab')){
            thiss.addClass('activity');
            $(value).addClass('video-comment-activity');

            refresh($(value).data('tabval'));
          }

        });


      }
    });

    refresh($('.video-comment-activity').data('tabval'));
    function refresh(tabVal){
      
      var thiss = $(this);
      var ntValue = $('.manu>.current').text();
      var pageLimit = $("#listRows").val();
      
      var url ="http://"+ window.location.host;

      $.post(url+"/index.php/MyZone/refreshNotice",{ntValue:ntValue,tabVal:tabVal,pageLimit:pageLimit},function(res){
        alert(res.data);
        
      },"json");
    }

    $('.comment-control-return').bind('click', function(){

      var id = $(this).data('id');
      var thiss = $(this);
      var url ="http://"+ window.location.host;
      $.post(url+"/index.php/MyZone/delNotice",{id:id},function(res){
        if(res.status == 0){
          alert(res.data);
        }else if(res.status == 1){
          alert(res.data);
          thiss.parent().parent().parent().remove();

        }
        
      },"json");

    })

    userShow();
});

function userShow(){

    $('.content-left .user-head').bind('mouseover', function(){
      $('.content-left .user-head-wrap').css('display','block');
    });
    $('.content-left .user-head').bind('mouseout', function(){
      $('.content-left .user-head-wrap').css('display','none');

    });

    $('.content-left .user-head-wrap').bind('mouseover', function(){
      $('.content-left .user-head-wrap').css('display','block');
    });
    $('.content-left .user-head-wrap').bind('mouseout', function(){
      $('.content-left .user-head-wrap').css('display','none');

    });

    $('.content-left .user-head-wrap').bind('click', function(){
      $('#image1').click();

    })

}

function imageUpload(){
  $('#upload').submit();
}

/*$('input[type="file"]').attr('name');
$('input[type="file"]').val();*/
</script>