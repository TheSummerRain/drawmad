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
<link rel="stylesheet" type="text/css" href="__PUBLIC__/css/page.css" media="all" />   
<link rel="stylesheet" type="text/css" href="__PUBLIC__/css/videoDetail.css"/>
<link rel="stylesheet" type="text/css" href="__PUBLIC__/css/animate.css">
<link rel="stylesheet" type="text/css" href="__PUBLIC__/css/jPages.css">
<style type="text/css">
	#myElement_logo{
		opacity: 0;
		width:0;
		height:0;
		display: none;
	}

</style>
		
		<div class="content-title">
			<div class="content-title-wrap">
				<div class="content-title-left">
				<h3>
					<?php if($videoInfo["state"] == 0): ?>[未审核]
					<?php elseif($videoInfo["state"] == 2): ?>
					[已被封禁]<?php endif; ?>
					<?php echo ($videoInfo['title']); ?>
				</h3>
				<span><?php echo ($videoInfo['biaoqian']); ?></span>
				</div>
				<div class="content-title-right">
					<h3><?php echo ($userInfo['nicheng']); ?></h3>
				</div>
				<a href="__APP__/MyZone?&userid=<?php echo ($userInfo["id"]); ?>" class="user-head">
					<img src="__PUBLIC__/user_head/<?php echo ($userInfo["img"]); ?>" alt="">
				</a>
			</div>

		</div>


		<div class="content">
			<div class="content-box">
				<div class="content-left">
					<ul>
						<li>作者：<?php echo ($videoInfo['zuozhe']); ?></li>
						<li>音乐：<?php echo (($videoInfo['BGM'])?($videoInfo['BGM']):"无"); ?></li>
						<li>完稿：<?php echo ($videoInfo['wg_time']); ?></li>
						<li class="content-about">简介：<?php echo (mb_substr(($videoInfo['jieshao'])?($videoInfo['jieshao']):"这家伙很懒，什么也没留下",0,150,'utf-8')); ?></li>
					</ul>
				</div>

				<div class="content-right">
					<ul>
						<li><?php echo ($userInfo['text']); ?></li>
						<li class="content-control">
							<input type="submit" class="input-msg" value="私信">
							<input  type="hidden"  name="user_friend_id" value="<?php echo ($userInfo['id']); ?>">
							<!--      是否显示关注        -->           
							<?php if(($is_friend == 1) or ($is_friend == 4)): ?><input type="submit" name="addgz" class="input-fllow" value="关注">

								<?php elseif($is_friend == 3): ?>
								<input type="submit" name="addgzn" class="input-fllow" value="已关注">
							<?php else: ?>

								<input type="submit" name="addgzn" class="input-fllow" value="已关注"><?php endif; ?>


						</li>
					</ul>
				</div>
				
			</div>

			<div class="content-video">
				<div class="video">
					<!-- <script src="__PUBLIC__/jwplayer/jwplayer.js" type="text/javascript"></script>
					<div id="myElement">Loading the player ...</div> -->
					<!-- <script type="text/javascript">

					jwplayer("myElement").setup({
					  flashplayer: '__PUBLIC__/jwplayer/jwplayer.flash.swf',  
					  file: "__PUBLIC__/videos/<?php echo ($videoInfo['video_path']); ?>",
					  image: "__PUBLIC__/videos/<?php echo ($videoInfo['fengmian']); ?>",
					  height: 470,
					  width: 848,
					  dock: false
					});

					</script>-->
					

					<script type="text/javascript" src="__PUBLIC__/sewise-player/player/sewise.player.min.js"></script>
					<!-- <script type="text/javascript">
						SewisePlayer.setup({
							server: "vod",
				            autostart:'false',
							type: "flv",
							videourl: "http://test.drawmad2.com/MAD/Modules/Index/Tpl/Public/videos/id_5000_num_5.flv",
							//videourl: "http://jackzhang1204.github.io/materials/mov_bbb.mp4",
							//poster: "http://jackzhang1204.github.io/materials/poster.png",
					        skin: "vodWhite",
					        title: "Tile 标题",
					        lang: 'zh_CN'
						});
					</script>-->

				   	<script type="text/javascript">
				        SewisePlayer.setup({
				            claritybutton:'disable',
				            topbardisplay:'disable',
				            autostart:'false',
				            draggable:'true',
				            server: "vod",
				            type:"<?php echo ($videoInfo['video_suffix']); ?>",
				            videourl: "http://<?php echo ($_SERVER['SERVER_NAME']); ?>/__PUBLIC__/videos/<?php echo ($videoInfo['video_path']); ?>",
				            skin: "vodWhite",
				            title: "<?php echo ($videoInfo['title']); ?>",
				            lang: 'zh_CN',
				            logo:'www',
				            //poster:"http://<?php echo ($videoInfo['server_name']); ?>/__PUBLIC__/videos/<?php echo ($videoInfo['fengmian']); ?>"
				          	
				        });
				    </script>

				</div>

				<!--锚点-->
				<a id="pos" ></a>
				<div class="video-msg">
					<div class="video-msg-left">
						<h3 id="avg_score_fen"><?php echo ($videoInfo['score']); ?></h3>

						<?php if($_SESSION['id'] == null): ?><span>只有正式会员可以给作品打分 请先 <a href="__APP__/Login" target="_blank">登录</a> 并 <label for="">投稿</label> 成为正式会员</span>
							
						<?php else: ?>
							<div class="video-msg-score">
							<select name="point">
								<option value="10">10</option>
								<option value="9">9</option>
								<option value="8">8</option>
								<option value="7">7</option>
								<option value="6">6</option>
								<option value="5">5</option>
								<option value="4">4</option>
								<option value="3">3</option>
								<option value="2">2</option>
								<option value="1">1</option>
								<option value="0">0</option>
							</select>
							<input type="submit" value="打分" id="add_video_score">
							</div><?php endif; ?>
						
						
					</div>
					<div class="video-msg-right">
						<div class="video-down">
							
						
							<?php if($videoInfo['down_purview'] == 0): ?><!-- <?php if($videoInfo['xiazai'] == null): ?><a href="#" id="down-high"><img src="__PUBLIC__/images/down.png" alt=""><span>高清版</span>
									</a>
									<div class="down-high-url">
										<span>这个视频还没有原档呢</span>
									</div>
								<?php else: ?>
									<a href="<?php echo ($videoInfo['xiazai']); ?>"  target='_bank' id="down-high"><img src="__PUBLIC__/images/down.png" alt=""><span>高清版</span>
									</a>
									<div class="down-high-url">
								
                 						 <a >下载原档</a>
                  						 <span >密码:&nbsp;<span><?php echo (($videoInfo['xiazaipass'])?($videoInfo['xiazaipass']):"无"); ?></span></span>
									</div><?php endif; ?> -->

								<?php if($_SESSION['id'] == null): ?><a href="#" id="down-high"><img src="__PUBLIC__/images/down.png" alt=""><span>高清版</span>
								</a>
								<div class="down-high-url">
									<span>高清原档仅会员可下载</span>
								</div>
								<?php else: ?>
									 <?php switch($$videoInfo['xiazai']): case "null": ?><a href="#" id="down-high"><img src="__PUBLIC__/images/down.png" alt=""><span>高清版</span>
											</a>
											<div class="down-high-url">
												<span>这个视频还没有原档呢</span>
											</div><?php break;?>
								        <?php default: ?>
								        	<a href="<?php echo ($videoInfo['xiazai']); ?>" target='_bank' id="down-high"><img src="__PUBLIC__/images/down.png" alt=""><span>高清版</span>
											</a>
								        	<div class="down-high-url">
		                 						 <a >下载原档</a>
		                  						 <span >密码:&nbsp;<span><?php echo (($videoInfo['xiazaipass'])?($videoInfo['xiazaipass']):"无"); ?></span></span>
											</div><?php endswitch; endif; ?>
							<?php else: ?>
								<?php if(($_SESSION['user_type'] == null) or ($_SESSION['user_type'] == 1)): ?><a href="#" id="down-high"><img src="__PUBLIC__/images/down.png" alt=""><span>高清版</span>
								</a>
								<div class="down-high-url">
									<span>高清原档仅正式会员可下载</span>
								</div>
								<?php else: ?>
									 <?php switch($$videoInfo['xiazai']): case "null": ?><a href="#" id="down-high"><img src="__PUBLIC__/images/down.png" alt=""><span>高清版</span>
											</a>
											<div class="down-high-url">
												<span>这个视频还没有原档呢</span>
											</div><?php break;?>
								        <?php default: ?>
								        	<a href="<?php echo ($videoInfo['xiazai']); ?>" target='_bank' id="down-high"><img src="__PUBLIC__/images/down.png" alt=""><span>高清版</span>
											</a>
								        	<div class="down-high-url">
		                 						 <a >下载原档</a>
		                  						 <span >密码:&nbsp;<span><?php echo (($videoInfo['xiazaipass'])?($videoInfo['xiazaipass']):"无"); ?></span></span>
											</div><?php endswitch; endif; endif; ?>

							
							
							<a href="__PUBLIC__/videos/<?php echo ($videoInfo['video_path']); ?>"><img src="__PUBLIC__/images/down.png" alt=""><span>网络版</span></a>
						</div>

						<div class="video-other">
							
         					<input type="hidden" name ="video_id" value="<?php echo ($videoInfo['id']); ?>">
			      			<input for="save_video_check" class="" id="add_sc" type='submit' value='' >

							<!-- <a href="#"><img src="__PUBLIC__/images/collect2.png" alt=""></a> -->
							<a href="

							http://service.weibo.com/share/share.php?url=http://<?php echo ($_SERVER['SERVER_NAME']); ?>__APP__/VideoDetail?vid=MAD<?php echo ($videoInfo["id"]); ?>&amp;title=这视频简直太赞了！忍不住分享了~<?php echo ($videoInfo["title"]); ?>（@drawmad）&amp;
							pic=http://<?php echo ($_SERVER['SERVER_NAME']); ?>__PUBLIC__/videos/<?php echo ($videoInfo['fengmian']); ?>

							" target="_blank"><img src="__PUBLIC__/images/weibo.png" alt=""></a>
							
							<!-- <a href="http://service.weibo.com/share/share.php?appkey=&title=&url=&pic=&searchPic=false&style=simple" target="_blank"> -->

						</div>
					</div>
				</div>

				<div class="video-comment"> 
					<div class="video-comment-input">
						<textarea placeholder="看完片留下回复并评论的都是好孩子" id="comment-textarea"></textarea>
						
						<input type="submit" name="comment-input" id="comment-input" value="发表">
						<input type="hidden" name="return-input" id="return-input" value="">
					</div>

	
					<div class="video-comment-list" id="itemContainer">						
						<?php if(is_array($video_comments)): foreach($video_comments as $key=>$v): ?><div class="comment">
								<div class="comment-left">
									<a href="__APP__/MyZone?userid=<?php echo ($v["user_id"]); ?>" target="_blank"><img src="__PUBLIC__/user_head/<?php echo ($v["user_img"]); ?>" alt=""></a>
								</div>
								<div class="comment-right">
									<ul>
										<li class="comment-title">
											<div>
												<span class="comment-title-num">#<?php echo ($v["num"]); ?></span><span class="comment-title-name"><?php echo ($v["nick_name"]); ?></span>
											</div>
											
										</li>
										<li class="comment-content">
											<?php if($v["parent_num"] == null): echo ($v["content"]); ?>
												<?php else: ?>
												<a>#回复<?php echo ($v["parent_num"]); ?>L# </a><?php echo ($v["parent_nick_name"]); ?> <?php echo ($v["content"]); endif; ?>
										</li>
										<li class="comment-date">
											<div><?php echo ($v["time"]); ?></div>
										</li>
									</ul>
										
									<div class="comment-control">

										<?php if($v["purview"] == 1): ?><a href="javascript:void(0)" data-id='<?php echo ($v["id"]); ?>' data-videoId='<?php echo ($v["video_id"]); ?>' class="comment-control-del" >删除</a><?php endif; ?>
											<a href="#pos" data-id="<?php echo ($v["id"]); ?>" data-num="<?php echo ($v["num"]); ?>" data-name="<?php echo ($v["nick_name"]); ?>" class="comment-control-return">回复</a>
										
									</div>
								</div>
							</div><?php endforeach; endif; ?>
					</div>
						
						<input type="hidden" value="<?php echo ($listRows); ?>" id="listRows">
						<div class="holder">	
							<!-- <?php echo ($page); ?> -->
						</div>
				</div>
			</div>
		</div>
<input type="hidden" value="__PUBLIC__" id="resUrl"></input>

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

<script src="__PUBLIC__/js/ajax_score.js"></script>
<script src="__PUBLIC__/js/ajax_collect.js"></script>
<script src="__PUBLIC__/js/ajax_gz.js"></script>
<script src="__PUBLIC__/js/ajax_comment.js"></script>
<script src="__PUBLIC__/js/jPages.js"></script>


<script>
$(function(){

	$("div.holder").jPages({
		  containerID  : "itemContainer",
		  perPage      : 4,
		  startPage    : 1,
		  startRange   : 1,
		  midRange     : 5,
		  endRange     : 1
		});
});
</script>


<div style="display:none">
<script language="javascript" type="text/javascript" src="http://js.users.51.la/18221289.js"></script>
<noscript><a href="http://www.51.la/?18221289" target="_blank"><img alt="&#x6211;&#x8981;&#x5566;&#x514D;&#x8D39;&#x7EDF;&#x8BA1;" src="http://img.users.51.la/18221289.asp" style="border:none" /></a></noscript>
</div>