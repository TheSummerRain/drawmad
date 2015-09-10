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
.input-msg {
  background: #fff;
  color: black;
  cursor: pointer;
  border: 1px solid #ccc;
  border-radius: 2px;
  width: 80px;
  height: 35px;
}
.input-fllow {
  background: #97D954;
  color: white;
  cursor: pointer;
  border: 0;
  border-radius: 2px;
  width: 80px;
  height: 35px;
  margin-left: 5px;
}
.content-top{
  height: 260px;
}
.head-explan>div{
  margin-top: 20px;
}
.content-bottom{
  width: 980px;
  margin-top: 50px;
  padding:0 10px;
}
.main-video{
  padding-bottom:100px;
}
</style>
    
    <div class="content">
      <div class="content-top-wrap">
        <div class="content-top">
          <div class="content-left">
            <div class="user-head">
              <img src="__PUBLIC__/user_head/<?php echo ($userInfo["img"]); ?>" alt="">
            </div>

            <div class="head-explan">
              <h3><?php echo (mb_substr($userInfo["nicheng"],0,20,'utf-8')); ?></h3>
              <span id="userInfoSpan"><?php echo ($userInfo["text"]); ?></span>
              
              <div>
                <input type="submit" class="input-msg" value="私信">
                <!--      是否显示关注        -->           
                <?php if(($gz_friend == 1)): ?><input type="submit" name="addgzn" class="input-fllow" value="已关注">
                  
                <?php else: ?>
                  <input  type="hidden"  name="user_friend_id" value="<?php echo ($userInfo['id']); ?>">

                  <input type="submit" name="addgz" class="input-fllow" value="关注"><?php endif; ?>
              </div>

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
            
          </div>
          
        </div>
      </div>

      <div class="content-bottom">
        
            <div class="main-left-video main-video">
              <ul>
                  <?php if(is_array($messageList)): $i = 0; $__LIST__ = $messageList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i; if(($key+1) % 4): ?><li class="video-detail video-common">
                  <?php else: ?>
                    <li class="video-detail video-common-other"><?php endif; ?>
                      <a class="video-img" href="__APP__/VideoDetail?vid=MAD<?php echo ($v["id"]); ?>" target="_blank"><img src="__PUBLIC__/videos/<?php echo ($v["fengmian"]); ?>" alt="封面未找到" class="video_pic"></a>

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
          
                        
                      </div>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
          
              </ul>
              
            </div>
          
            <div class="manu" >     
              <?php if($messageList != null): echo ($page); ?>
              <?php else: endif; ?>
            </div>
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


<script type="text/javascript" src="__PUBLIC__/js/ajax_MyZone_all.js"></script>
<script type="text/javascript">


</script>