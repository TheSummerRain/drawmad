<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title><?php echo ($eventsHead["title"]); ?></title>
    <link rel="stylesheet" href="__PUBLIC__/css/Moewolf.css">
  </head>
  <body>
    <header>
      <div class="container"><a href="__APP__">主站</a><a href="__APP__/MyZone" class="fr"><?php echo ($_SESSION["nicheng"]); ?></a></div>
    </header>
    <div class="logo">
      <a href="#last" class="date-last"></a>
      <a href="#next" class="date-next"></a>#<?php echo ($eventsHead["title"]); ?>
    </div>
    <div class="info">
      <p class="ind2"><?php echo ($eventsHead["explain"]); ?></p>
      <p>打包下载：<a href="http://pan.baidu.com/s/1sjmLQ49" target="_blank" class="sign"><?php echo ($eventsHead["video_url"]); ?></a>，提取码:<span class="sign"><?php echo ($eventsHead["password"]); ?></span></p>
    </div>
  
    <?php if(is_array($eventsBody)): foreach($eventsBody as $key=>$event): ?><div class="content">
        <div class="container">
          <div class="title"><?php echo ($event["title"]); ?>
            <div class="author">作者：<?php echo ($event["author"]); ?></div><a href="
http://service.weibo.com/share/share.php?url=http://<?php echo ($_SERVER['SERVER_NAME']); ?>__URL__?date=<?php echo ($dateNow); ?>&amp;title=这期Moewolf简直太赞了！忍不住分享了~<?php echo ($eventsHead["title"]); ?>（@drawmad）&amp;pic=<?php echo ($event["img"]); ?>

            " alt="分享" class="s" target="_blank"></a><a href="<?php echo ($event["video_url"]); ?>" target="_blank" alt="下载" class="d"></a>

          </div class="">
          <div class="video-img" data-title='<?php echo ($event["title"]); ?>' data-author='<?php echo ($event["author"]); ?>' data-videourl='<?php echo ($event["video_url"]); ?>' data-videocode='<?php echo ($event["video_code"]); ?>' data-videosuffix="<?php echo ($event["video_suffix"]); ?>" data-img="<?php echo ($event["img"]); ?>" data-server="http://<?php echo ($_SERVER['SERVER_NAME']); ?>__URL__?date=<?php echo ($dateNow); ?>" >
            <img src="<?php echo ($event["img"]); ?>" alt="点击播放" class="v">
          </div>
        </div>
      </div><?php endforeach; endif; ?>
    
    <div class="markContent"></div>
    <div class="video" id="markVideo">

      <div class="title" id="markTitle">
        <span></span>
        <div class="author">作者：<?php echo ($event["author"]); ?></div>
        <a href="" alt="分享" class="s" target="_blank"></a>
        <a href="" alt="下载" class="d" target="_blank"></a>
      </div>
      
<script type="text/javascript" src="__PUBLIC__/sewise-player/player/sewise.player.min.js?server=vod&type=flv&videourl=http://www.w3schools.com/html/mov_bbb.mp4&sourceid=&autostart=false&starttime=0&lang=zh_CN&logo=d&title=test&buffer=5&skin=vodWhite"></script>
     
    </div>
      
</div>


    <footer>Moewolf MAD资源发布组</footer>
<input type="hidden" value="<?php echo ($dateNow); ?>" id="dateNow">
<input type="hidden" value="<?php echo ($dateLeft); ?>" id="dateLeft">
<input type="hidden" value="<?php echo ($dateRight); ?>" id="dateRight">
<script type="text/javascript" src="__PUBLIC__/js/jquery-2.1.1.min.js"></script>
<script src="__PUBLIC__/js/Moewolf2.js"></script>


  </body>
</html>