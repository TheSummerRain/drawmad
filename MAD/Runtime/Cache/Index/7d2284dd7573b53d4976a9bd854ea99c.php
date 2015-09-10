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
<link rel="stylesheet" href="__PUBLIC__/css/video.css"/>
<link rel="stylesheet" href="__PUBLIC__/css/tab.css"/>
		
		<div class="content">
			<div class="content-left">
				<ul class="tab_btn">
					<li data-tab="ALL" class="active" >全部</li>
					<?php if(is_array($videoBigTypeList)): foreach($videoBigTypeList as $key=>$videoTypeList): ?><li data-tab="<?php echo ($videoTypeList["other_name"]); ?>" class="<?php echo ($videoTypeList["class"]); ?>">
						<?php echo ($videoTypeList["name"]); ?>
						</li><?php endforeach; endif; ?>
				</ul>
				       
				<ul class="tab_content">
					<li data-tab="ALL" class="active">
						<input type="hidden" value="<?php echo ($videoInit['score']); ?>" name="" id="ALLScore">
						<input type="checkbox" id="All5" class="type_checkbox hide">
						<label for="All5" class="check"><a href="<?php echo U('/Video/index/score/9.6');?>/">9.6分以上</a></label>
						<input type="checkbox" id="All4" class="type_checkbox hide">
						<label for="All4" class="check"><a href="<?php echo U('/Video/index/score/9');?>">9分以上</a></label>
						<input type="checkbox" id="All3" class="type_checkbox hide">
						<label for="All3" class="check"><a href="<?php echo U('/Video/index/score/8');?>">8分以上</a></label>
						<input type="checkbox" id="All2" class="type_checkbox hide">
						<label for="All2" class="check"><a href="<?php echo U('/Video/index/score/7');?>">7分以上</a></label>
						<input type="checkbox" id="All1" value="21321" class="type_checkbox hide">
						<label for="All1" class="check"><a href="<?php echo U('/Video/index/score/6');?>">6分以上</a></label>
						<?php if($content != null): ?><input type="checkbox" id="all00" class="type_checkbox hide">
							<label for="all00" class="check"><a href="<?php echo U('/Video/index/score/0');?>">显示全部(基于搜索)
							</a></label>
						<?php else: endif; ?>
						<input type="checkbox" id="all00" class="type_checkbox hide">
						<label for="all00" class="check"><a href="<?php echo U('/Video');?>">显示全部</a></label>
					</li>
            		<?php if(is_array($videoBigTypeList)): foreach($videoBigTypeList as $key=>$videoTypeList): ?><li data-tab="<?php echo ($videoTypeList["other_name"]); ?>" class="<?php echo ($videoTypeList["class"]); ?>">
						<?php if(is_array($videoTypeList["videoType"])): foreach($videoTypeList["videoType"] as $key=>$value): ?><input type="checkbox" id="<?php echo ($videoTypeList["name"]); echo ($value["id"]); ?>" value="<?php echo ($value["name"]); ?>" name="biaoqian<?php echo ($videoTypeList["id"]); ?>[]" class="type_checkbox hide" on>
							<label for="<?php echo ($videoTypeList["name"]); echo ($value["id"]); ?>" class="check"><?php echo ($value["name"]); ?> <?php echo ($value["eng_name"]); ?></label><?php endforeach; endif; ?>
						</li><?php endforeach; endif; ?>
				</ul>
				
				<div class="content-game">
					<h3>比赛/活动作品合集</h3>
					<ul>
						<li>BGM新人战</li>
						<li>Haru祭</li>
						<li>黄金祭</li>
						<li>TIMMAD大赛</li>
						<li>AKROSSCON</li>
						<li>Big Contest</li>
						<li>Japan Expro</li>
						<li>春秋合战</li>
						<li>白色情人祭</li>
					</ul>
				</div>
				
			</div>
			<div class="content-right">
				<div class="content-right-title">
					<!-- <h4><a  href="">仅显示首页推荐<div id="123" style="float:right;"> <img src="__PUBLIC__/img/<?php echo ($videoInit["img"]); ?>"/></a></div>
					 </h4> -->
					<input type="checkbox" class="checkbox-title" id="ww1" <?php echo ($videoInit['img']); ?>>
					
					<label class="h3-title" for="ww1"><a href="<?php echo U('/Video/index/recommend/'.$videoInit["src"]);?>">仅显示首页推荐作品</a></label>
					<div class="span-right">
						<span>成功投稿即可成为</span><a>正式会员</a>
					</div>
				</div>


					<div class="main-left-video main-video">
						<ul>
        					 <?php if(is_array($videoList)): $i = 0; $__LIST__ = $videoList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i; if(($key+1) % 3): ?><li class="video-detail video-common">
									<?php else: ?>
									<li class="video-detail video-common-other"><?php endif; ?>
									<a href="__APP__/VideoDetail?vid=MAD<?php echo ($v["id"]); ?>" target="_blank"><img src="__PUBLIC__/videos/<?php echo ($v["fengmian"]); ?>" alt="封面未找到" class="video_pic"></a>
									<a class="video-title" href="__APP__/VideoDetail?vid=MAD<?php echo ($v["id"]); ?>" target="_blank" class="video-distance" ><h4 class=""><?php echo ($v["title"]); ?></h4></a>
									<p  class="video-distance video-distance-p"><?php echo ($v["biaoqian"]); ?></p>
									<div class="video-distance">
										<div class="score"><?php echo ($v["score"]); ?></div>
										<div class="msg">
											<a href="__APP__/MyZone?userid=<?php echo ($v["user_id"]); ?>" style="text-align:right"><p>By <?php echo ($v["zuozhe"]); ?></p></a>
											<p><?php echo ($v["comments"]); ?>&nbsp;评论&nbsp;/&nbsp;<?php echo ($v["collect"]); ?>&nbsp;收藏</p>
										</div>
									</div>
          						</li><?php endforeach; endif; else: echo "" ;endif; ?>

						</ul>
						
					</div>
					<div class="manu">
						<?php if($videoList != null): ?><link rel="stylesheet" type="text/css" href="__PUBLIC__/css/page.css" media="all" />     
							<?php echo ($page); ?>
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

<script src="__PUBLIC__/js/tab.min2.js" type="text/javascript"></script>
<script src="__PUBLIC__/js/tab.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		if($('#ALLScore').val() >= 0){
			if($('#ALLScore').val() == 3){
				$('#All1').prop("checked", true);
			}else if($('#ALLScore').val() == 7){
				$('#All2').prop("checked", true);
			}else if($('#ALLScore').val() == 8){
				$('#All3').prop("checked", true);
			}else if($('#ALLScore').val() == 9){
				$('#All4').prop("checked", true);
			}else if($('#ALLScore').val() == 9.6){
				$('#All5').prop("checked", true);
			}

			//$('#All'+$('#ALLScore').val()).prop("checked", true);
		}
	})
</script>