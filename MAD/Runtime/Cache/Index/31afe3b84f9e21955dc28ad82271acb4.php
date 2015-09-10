<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>新人战</title>
	<link rel="stylesheet" href="__PUBLIC__/css/resert.css"/>
	<script src="__PUBLIC__/js/jquery-2.1.1.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="__PUBLIC__/css/xinrenMain.css"/>

<style type="text/css">
	.content1{
		background-image: url(__PUBLIC__/images/xinrenRelease.png);
		height:135px;
		line-height: 135px;
		position:relative;
		font-size: 84px;
		color:#fff;
		font-family: 'BEBAS.TTF';
	}
		.content1-left{
			position: absolute;
			left: 200px;
		}
		.content1-right{
			position: absolute;
			right: 200px;
		}
	.content2-wrap{
		margin-top: 30px;
		overflow: hidden;
		margin-bottom: 65px;
	}
		.content2-wrap>p{
			margin-bottom: 30px;
			font-size: 18px;
			font-weight: bold;
			color:#9db1c1;
		}
		.content2-left{
			width:680px;
			float: left;
			overflow: hidden;

		}
		.content2-right{
			width:320px;
			float: left;
			overflow: hidden;
		}
		.content2-detail{
			text-align: left;
			position: relative;
			width: 320px;
			float: left;
			margin-top: 70px;
			color:#333;
		}
		.content2-detail:nth-child(even){
			margin-left: 40px;
		}
		 .content2-detail:nth-child(1), .content2-left .content2-detail:nth-child(2){
			margin-top: 0;
		} 
		.content2-detail img{
			width:320px;
			height: 180px;
			font-size:0;
			vertical-align:bottom;
		}
		.content2-detail h3{
			font-weight: bold;
			font-size: 18px;
			height: 18px;
			line-height: 18px;
			margin-top: 20px;
		}
		.content2-detail>span{
			font-weight: normal;
			font-size: 14px;
			height: 14px;
			line-height: 14px;
			display: inline-block;
		}
		.content2-detail .vote{
			font-weight: bold;
			font-size: 16px;
			background: #15b68e;
			height: 84px;
			width: 84px;
			border-radius:42px;
			position: relative;
			left: 50%;
			margin-left: -42px;
			text-align: center;
			cursor:pointer;
		}
		.content2-detail .vote .vote-wrap{
			padding-top: 17px;
		}
		.content2-detail .vote span{
			padding-top: 13px;
 			display: inline-block;
 			color:#fff;
 			font-weight: bold;
			font-size: 16px;
			height: 16px;
			line-height: 16px;
		}
		.content2-detail .vote .img{
			margin: 0 auto;
			background-image:url(__PUBLIC__/images/xinrenReleaseT.png);
			width:12px;
			height: 11px;
			cursor:pointer;
		}
		
		.content2-right{
			margin-left: 100px;
		}
		.content2-right .content2-detail:nth-child(even){
			margin-left: 0;
		}
		.content2-right .content2-detail .vote{
			background: #ff9c00;
		}
		.content2-right .content2-detail>span{
			margin-top: 10px;
		}
	.content3{
		margin-bottom: 130px;
		position:relative;
		overflow: hidden;
		margin-top: 0;
	}
		.content3-split{
			border-top: 3px solid #15b68e;
			width: 100%;
			position: absolute;
			top: 30px;
			z-index: -10;
		}
		.content3-top{
			background-image:url(__PUBLIC__/images/xinrenReleaseSweet.png);
			width:270px;
			height:80px;
			margin: 0 auto;
			text-align: center;
			line-height: 80px;
			font-weight: bold;
			color:#ff9c00;
			font-size: 24px;
		}
		.content3-bottom{
			padding: 60px 0 80px 0;
			border-bottom: 3px solid #15b68e;
		}
		.content3-bottom .content2-detail{
			float: none;
			margin: 0 auto;
		}
		.content3-bottom .content2-detail>h3{
			font-weight: bold;
			  font-size: 18px;
			  height: 18px;
			  line-height: 18px;
			overflow: hidden;
			width: 320px;
			text-overflow:ellipsis;
			white-space:nowrap;
		}
		.content3-bottom .content2-detail>span{
			margin-top: 10px;
			font-size: 14px;
  			height: 14px;
  			line-height: 14px;
		}
	.ban-left{
		width:42px;
		height: 42px;
		background-image: url(__PUBLIC__/images/xinrenDir.png);
		display: inline-block;
		vertical-align:middle;
		cursor:pointer;
	}
	.ban-right{
		width:42px;
		height: 42px;
		background-image: url(__PUBLIC__/images/xinrenDir.png);
		display: inline-block;
		vertical-align:middle;
		cursor:pointer;
		transform:rotate(180deg);
		-ms-transform:rotate(180deg); /* IE 9 */
		-moz-transform:rotate(180deg); /* Firefox */
		-webkit-transform:rotate(180deg); /* Safari and Chrome */
		-o-transform:rotate(180deg); /* Opera */
	}
	.ban-wrap{
		vertical-align:middle;
	}
	#countDown{
		vertical-align:middle;
		padding: 0 50px;
	}
	.HYJcontent{

	}
	.HYJcontent-detail{
		overflow: hidden;
		padding:0 120px;
		margin-bottom: 180px;
	}
	.HYJcontent-detail .content2-detail{
		margin-top: 80px;
		margin-left: 0;
	}
	.HYJcontent-detail .content2-detail:nth-child(even) {
	  margin-left: 180px;
	}

</style>
</head>
<body>

<div class="wrap">
	<header>
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
		<div class="ban-wrap">
			<a class="ban-left"></a>
			<a id="countDown">战场实况 · <?php echo ($eventsHead["title"]); ?></a>
			<a class="ban-right"></a>
		</div>
		<a href="__APP__/Events" class="fight">战斗规则</a>
		<a href="__APP__/Events/sign" class="sign">报名投稿</a>
	</div>
</div>

<?php if($eventsHYJ["num"] != 0): ?><div class="wrap content">
		<div class="HYJcontent green">
			<?php if($eventVote['0']['mad_group_num'] > $eventVote['1']['mad_group_num']): ?><h1>X组 WIN！</h1>
				<p>最终X组以 <?php echo ($eventVote['0']['mad_group_num']); ?>：<?php echo ($eventVote['1']['mad_group_num']); ?> 的优势肛掉了Y组。庆祝吧 Gays！</p>
				
				<?php else: ?>
				
				<h1>Y组 WIN！</h1>
				<p>最终Y组以 <?php echo ($eventVote['1']['mad_group_num']); ?>：<?php echo ($eventVote['0']['mad_group_num']); ?> 的优势肛掉了X组。庆祝吧 Gays！</p><?php endif; ?>
		</div>
		<div class="HYJcontent-detail">
			<?php if(is_array($eventsBody)): foreach($eventsBody as $key=>$event): ?><div class="content2-detail">
					<a href="__APP__/VideoDetail?vid=MAD<?php echo ($event["video_id"]); ?>" target="_blank"><img src="__PUBLIC__/videos/<?php echo ($event["fengmian"]); ?>" alt="" /></a>
					<h3><?php echo ($event["title"]); ?></h3>
					<span class="grey">by</span>
					<span class="green"><?php echo ($event["nicheng"]); ?></span>
					
				</div>
			<!-- <elseif/> --><?php endforeach; endif; ?>
		</div>
	</div>

	<?php else: ?>

	<div class="wrap content">
	<div class="content1">
		<span class="content1-left"><?php echo ($eventVote['0']['mad_group_num']); ?></span>
		<span class="content1-right"><?php echo ($eventVote['1']['mad_group_num']); ?></span>
	</div>
	
	<div class="content2-wrap">
		<p>每个作品限投一票(Y组自带BUFF,得分增加50%)</p>
		<div class="content2-left">

			<?php if(is_array($eventsBody)): foreach($eventsBody as $key=>$event): if($event["group_name"] == X): ?><div class="content2-detail">
					<a href="__APP__/VideoDetail?vid=MAD<?php echo ($event["video_id"]); ?>" target="_blank"><img src="__PUBLIC__/videos/<?php echo ($event["fengmian"]); ?>" alt="" /></a>
					<h3><?php echo ($event["title"]); ?></h3>
					<span class="grey">by</span>
					<span class="green"><?php echo ($event["nicheng"]); ?></span>
					<div class="vote" data-vid='<?php echo ($event["video_id"]); ?>' data-id='<?php echo ($event["game_mad_user_id"]); ?>'>
						<div class="vote-wrap">
							<div class="img"></div>
							<span>投TA一票</span>
						</div>
					</div>
				</div>
			<!-- <elseif/> --><?php endif; endforeach; endif; ?>
			

		</div>
		<div class="content2-right">
			<?php if(is_array($eventsBody)): foreach($eventsBody as $key=>$event): if($event["group_name"] == Y): ?><div class="content2-detail">
					<a href="__APP__/VideoDetail?vid=MAD<?php echo ($event["video_id"]); ?>" target="_blank"><img src="__PUBLIC__/videos/<?php echo ($event["fengmian"]); ?>" alt="" /></a>
					<h3><?php echo ($event["title"]); ?></h3>
					<span class="grey">by</span>
					<span class="orang"><?php echo ($event["nicheng"]); ?></span>
					<div class="vote" data-vid='<?php echo ($event["video_id"]); ?>' data-id='<?php echo ($event["game_mad_user_id"]); ?>'>
						<div class="vote-wrap">
							<div class="img"></div>
							<span>投TA一票</span>
						</div>
					</div>
				</div>
			<!-- <elseif/> --><?php endif; endforeach; endif; ?>

		</div>
	</div>
	
</div>
	
	<?php if($eventsTD["num"] != 0): if(is_array($eventsBody)): foreach($eventsBody as $key=>$event): if($event["mad_group"] == 3): ?><div class="content3">
				<div class="content3-split"></div>
				<div class="content3-top">
					甜点-<?php echo ($eventsHead["title"]); ?>
				</div>
				<div class="content3-bottom">
					
					<div class="content2-detail">
						<a href="__APP__/VideoDetail?vid=MAD<?php echo ($event["video_id"]); ?>" target="_blank"><img src="__PUBLIC__/videos/<?php echo ($event["fengmian"]); ?>" alt="" /></a>
						<h3><?php echo ($event["title"]); ?></h3>
						<span class="black">by <?php echo ($event["nicheng"]); ?></span>
						
					</div>

				</div>
			</div><?php endif; endforeach; endif; endif; endif; ?>


<input type="hidden" value="<?php echo ($dateNow); ?>" id="dateNow">
<input type="hidden" value="<?php echo ($dateLeft); ?>" id="dateLeft">
<input type="hidden" value="<?php echo ($dateRight); ?>" id="dateRight">

<footer>
	<p class="footer-p1">本站由Drawmad工作室、BGM新人战、HARU祭联合创办 </p>
	<p>寻求帮助、提供建议、或请我们吃饭，请发邮件至m182152608</p>
</footer>
</body>
</html>
<script type="text/javascript">
	$(function(){
		banDir2();

		$('.content2-detail').on('click', '.vote', function(){
			var dateNow = $('#dateNow').val();


			var vid = $(this).data('vid');
			var id = $(this).data('id');
			var url = "http://"+window.location.host+'/index.php/Events/eventsVote';
			jQuery.ajax({
				type:'POST',
				url:url,
				dataType: 'json',
				data : {vid:vid, id:id, dateFront:dateNow},
				success:function(res, textStatus){
					alert(res.info);
				},
				error:function(xhr, status, errMsg){
					alert(errMsg);
				}

			});
		})

	});
/*
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
*/
	
	//时间进行判断
	function banDir(){
		var dateNow = $('#dateNow').val();

		var date = new Date(dateNow);
		date.setDate(date.getDate()-1);
		var date2 = getDate2(date);
		date.setDate(date.getDate()+2);
		var date3 = getDate2(date);
		var url="http://"+window.location.host+"/index.php/Events/eventsRelease?date=";
		$('.ban-left').attr('href', url+date2);
		$('.ban-right').attr('href', url+date3);
	}

	//id 进行判断
	function banDir2(){
		var dateNow = $('#dateNow').val();
		var dateLeft = $('#dateLeft').val();
		var dateRight = $('#dateRight').val();

		var url="http://"+window.location.host+"/index.php/Events/eventsRelease?date=";
		$('.ban-left').attr('href', url+dateLeft);
		$('.ban-right').attr('href', url+dateRight);
	}

	function getDate2(date){
		var year = date.getFullYear();
		var month = date.getMonth() + 1;
		var day = date.getDate();

		return year+'-'+month+'-'+day;
	}
</script>