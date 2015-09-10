<?php if (!defined('THINK_PATH')) exit();?>﻿

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
		
		<div class="content">
			<div class="map">
				<div class="map-rotate">
					
					<ul class="map-rotate-ul">
						<?php if(is_array($homePage)): foreach($homePage as $key=>$home): if($key == 0): ?><li class="playing">
								<?php else: ?>
								<li><?php endif; ?>
								<a  class="map-img" href="<?php echo ($home["url"]); ?>" target="__blank">
									<img src="__PUBLIC__/images/HomePage/<?php echo ($home["img"]); ?>">
								</a>
								<div class="map-mask">
									<span><?php echo ($home["explain"]); ?></span>
									<div></div>
								</div>
							</li><?php endforeach; endif; ?>
						<!-- <li class="playing">
							<a  class="map-img" href="__APP__/Events/eventsRelease?date=New" target="__blank">
								<img src="__PUBLIC__/images/banner1.jpg">
							</a>
						
							<div class="map-mask">
								<span>新人战2015即将开战</span>
								<div></div>
							</div>
						</li>
						<li>
							<a  class="map-img" href="__APP__/VideoDetail?vid=MAD10140" target="__blank">
								<img src="__PUBLIC__/images/banner2.jpg">
							</a>							
						                            <div class="map-mask">
								<span>东方合作PV——遥不可及</span>
								<div></div>
							</div>
						</li>
						<li>
							<a  class="map-img" href="__APP__/VideoDetail?vid=MAD10143" target="__blank">
								<img src="__PUBLIC__/images/banner3.jpg">
							</a>							
							<div class="map-mask">
								<span>Re.T新作MEP</span>
								<div></div>
							</div>
						</li> -->
					</ul>
					
					<div class="map-mask-arrow">
						<span id="arrow-left"></span>
						<span id="arrow-right"></span>
					</div>
				</div>
				
				
			</div>

			<div class="main">
				<div class="main-left">
					<div class="main-left-title">
						<div></div>
						<h3>推荐作品</h3>
						<span>当前首页推荐条件为7分以上、评分人数大于3人</span>
						<a href="__APP__/Video">更多</a>
					</div>

					<div class="main-left-video main-video">
						<ul>

							<?php if(is_array($videoList)): $i = 0; $__LIST__ = $videoList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i; if(($key+1) % 4): ?><li class="video-detail video-common">
									<?php else: ?> 
									<li class="video-detail video-common-other"><?php endif; ?>
									<a href="__APP__/VideoDetail?vid=MAD<?php echo ($v["id"]); ?>" target="_blank"><img src="__PUBLIC__/videos/<?php echo ($v["fengmian"]); ?>" alt="封面未找到" class="video_pic"></a>
									<a class="video-title" href="__APP__/VideoDetail?vid=MAD<?php echo ($v["id"]); ?>" target="_blank" class="video-distance" ><h4 class=""><?php echo ($v["title"]); ?></h4></a>
									<p  class="video-distance video-distance-p"><?php echo ($v["biaoqian"]); ?></p>
									<div class="video-distance">
										<div class="score"><?php echo ($v["score"]); ?></div>
										<div class="msg">
											<a href="__APP__/MyZone?userid=<?php echo ($v["user_id"]); ?>" style="text-align:right"><p>By&nbsp;<?php echo ($v["zuozhe"]); ?></p></a>
											<p><?php echo ($v["comments"]); ?>&nbsp;评论&nbsp;/&nbsp;<?php echo ($v["collect"]); ?>&nbsp;收藏</p>
										</div>
									</div>
          						</li><?php endforeach; endif; else: echo "" ;endif; ?>

						</ul>
					</div>
				</div>
				
				<div class="main-left">
					<div class="main-left-title">
						<div></div>
						<h3>最新投稿</h3>
						<a href="__APP__/Video">更多</a>
					</div>

					<div class="main-left-video main-video">
						<ul>

							<?php if(is_array($videoNew)): $i = 0; $__LIST__ = $videoNew;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i; if(($key+1) % 4): ?><li class="video-detail video-common">
									<?php else: ?> 
									<li class="video-detail video-common-other"><?php endif; ?>
									<a href="__APP__/VideoDetail?vid=MAD<?php echo ($v["id"]); ?>" target="_blank"><img src="__PUBLIC__/videos/<?php echo ($v["fengmian"]); ?>" alt="封面未找到" class="video_pic"></a>
									<a class="video-title" href="__APP__/VideoDetail?vid=MAD<?php echo ($v["id"]); ?>" target="_blank" class="video-distance" ><h4 class=""><?php echo ($v["title"]); ?></h4></a>
									<p  class="video-distance video-distance-p"><?php echo ($v["biaoqian"]); ?></p>
									<div class="video-distance">
										<div class="score"><?php echo ($v["score"]); ?></div>
										<div class="msg">
											<a href="__APP__/MyZone?userid=<?php echo ($v["user_id"]); ?>" style="text-align:right"><p>By&nbsp;<?php echo ($v["zuozhe"]); ?></p></a>
											<p><?php echo ($v["comments"]); ?>&nbsp;评论&nbsp;/&nbsp;<?php echo ($v["collect"]); ?>&nbsp;收藏</p>
										</div>
									</div>
          						</li><?php endforeach; endif; else: echo "" ;endif; ?>
							
						</ul>
					</div>
				</div>

				<!-- <div class="main-right">
					<div class="main-right-other">
						<a href="__URL__/Index/help" target="_blank" class="main-right-help">
					    <div></div>
						注册遇到问题？请戳这里
						</a>
					    <a href="http://7xifjg.com1.z0.glb.clouddn.com/DrawmadTool(X64) V1.0.rar" class="main-right-help2">
					    </a>
					</div>
				
				
					<div class="main-right-new">
						<div class="main-right-title">
							<div></div>
							<h3>最新投稿</h3>
							<a href="__APP__/Video">更多</a>
						</div>
						<div class="main-right-video">
							<ul>
								<?php if(is_array($videoNew)): $i = 0; $__LIST__ = $videoNew;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><li>
										<a href="__APP__/VideoDetail?vid=MAD<?php echo ($v["id"]); ?>" target="_blank" class="main-right-video-img">	<img src="__PUBLIC__/videos/<?php echo ($v["fengmian"]); ?>" alt="封面未找到" >
										</a>
										<div class="main-right-video-content">
											<p><?php echo ($v["title"]); ?></p>
											<span><?php echo ($v["videoTypeBigName"]); ?></span>　
					                	    <a href="__APP__/MyZone?userid=<?php echo ($v["user_id"]); ?>" target="_blank">
											<span style="">By&nbsp;<?php echo ($v["zuozhe"]); ?></span>
											</a>
										</div>
									</li><?php endforeach; endif; else: echo "" ;endif; ?>
								
							</ul>
						</div>
					</div>
				</div> -->

			</div>
			
		</div>

		<div class="message">
			<div>
				<label>想要加入MADer大家族吗？ 成功投稿即可成为</label><span>正式会员</span>
				
				<div>
					<a href="__APP__/UpVideo"><input class="input-submit" type="submit" value="投稿" name="" id=""></a>
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