<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>新人战</title>
	<link rel="stylesheet" href="__PUBLIC__/css/resert.css"/>
	<script src="__PUBLIC__/js/jquery-2.1.1.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="__PUBLIC__/css/xinrenMain.css"/>
	
</head>
<body>

<div class="wrap">
	<header >
		<div class="topleft">
			<span>返回</span>
			<a href="__APP__">DRAWMAD</a>
		</div>
		<div class="topright">

			<?php if($_SESSION[id] == null): ?><img src="__PUBLIC__/user_head/nohead.png" alt="">
				
			<?php else: ?>
				<span><?php echo ($_SESSION['nicheng']); ?></span>
				<img src="__PUBLIC__/user_head/<?php echo ($_SESSION[img]); ?>" alt=""><?php endif; ?>
		</div>
	</header>

</div>
	
<div class="banner">
	<!-- <img src="__PUBLIC__/images/xinrenbanner.png" alt=""> -->
	<div class="xinrenbanner"></div>
	<div class="xinrenbanner2">
		<a id="countDown"></a>
		<a href="__APP__/Events" class="fight">战斗规则</a>
		<a href="__APP__/Events/sign" class="sign">报名投稿</a>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function(){

		updateEndTime();

	});

	function updateEndTime(){
		var date = new Date();
		var time = date.getTime();
		var endDate = new Date('2015-8-10');

		/*var endDate1 = eval('new Date(' + endDate.replace(/\d+(?=-[^-]+$)/, function (a) { return parseInt(a, 10) - 1; }).match(/\d+/g) +')');*/
		var endTime = endDate.getTime(); 
		var lag = (endTime - time) / 1000; //当前时间和结束时间之间的秒数
		if(lag > 0)
		{
			var second = Math.floor(lag % 60); 
			var minite = Math.floor((lag / 60) % 60);
			var hour = Math.floor((lag / 3600) % 24);
			var day = Math.floor((lag / 3600) / 24);
			$('#countDown').text('倒计时：'+day+' 天 '+hour+' 小时 '+minite+' 分 ');
			
		}else{
			/*var url="http://"+window.location.host+"/index.php/Events/eventsRelease?date="+getDate();*/

			var url="http://"+window.location.host+"/index.php/Events/eventsRelease?date=New";
			$('#countDown').attr('href',url);
			$('#countDown').text('战场实况');
		}

		setTimeout("updateEndTime()",10000);
	}

	function getDate(){
		var date = new Date();
		var year = date.getFullYear();
		var month = date.getMonth() + 1;
		var day = date.getDate();

		return year+'-'+month+'-'+day;
	}

</script>

<div class="wrap content">
	<div class="content-wrap">
		
		<div class="content1">
			<p>为了更好地让每位新人参与者都能在享受活动乐趣的同时更好地交流学习  </p>
			<p>本届新人战活动形式正式更改为</p>
			<p class="fenzu">分组对抗模式</p>
			<p>本模式下参战人员将分为<span class="green bold"> X</span>、<span class="orang bold">Y </span>两组</p>
		</div>
		
		<div class="content2">
			<p><span class="green bold">X 组</span>：新人报名后会自动被分配到挑战方的 X 组</p>
			<p><span class="orang bold">Y 组</span>：Y 组由已经历练了1年以上的各位MADer前辈组成</p>
		</div>
		
		<div class="content3">
			<p>每日展出的作品数目预计为</p>
			<p><span class="green bold">X组4名</span>  VS  <span class="orang bold">Y组2名</span></p>
		</div>
		
		<div class="content4">
			<p>最终胜负按照各组累计得分进行评估，各组累计得分计算方式如下：</p>
			<p><span class="green bold">X组得分</span>=全组作品所得观众票数总和</p>
			<p><span class="orang bold">Y组得分</span>=全组作品所得观众票数总和×1.5</p>
		</div>
		
		<div class="content5">
			<p>注意</p>
		</div>
		<div class="content6">
			<p>① Y组将使用【RL-MAD_team泷沉琉璃MAD工坊 2015年夏日祭】的作品迎接挑战！</p>
			<p>② 活动结果没有技艺上的参考价值，希望各位活动参加者能更重视与前辈相互切磋交流的机会，以得到各种珍贵的收获！</p>
			<p>③ 各个作品的单独票数最终不会公开。</p>
			<p>④ 本次活动不设置任何物质性奖项。</p>
		</div>

	</div>
	
</div>
	

<footer>
	<p class="footer-p1">本站由Drawmad工作室、BGM新人战、HARU祭联合创办 </p>
	<p>寻求帮助、提供建议、或请我们吃饭，请发邮件至m182152608</p>
</footer>
</body>
</html>