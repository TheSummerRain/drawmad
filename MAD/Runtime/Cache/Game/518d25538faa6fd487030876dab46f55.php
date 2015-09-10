<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>跳转提示</title>
<style type="text/css">
*{ padding: 0; margin: 0; }
body{ background: #fff; font-family: '微软雅黑'; color: #333; font-size: 16px; }

.message{

}
.pro_box{
    text-align: center;
    width:600px;
    border:1px solid #ccc;
    background-color:#FFF;
    border-radius:2px;
    margin: auto;
    margin-top: 200px;

  }
    .pro_box>.pro_title{
      font-size:20px;
      color:#45b860;
      margin-top: 40px;
    }
    .pro_box>.pro_content{
      font-size:16px;
      color:#333;
      line-height:18px;
      margin:30px auto;
      width: 400px;
      text-align: center;
    }
    .pro_box>.pro_input{
      margin-bottom: 50px;
    }
    .pro_box>.pro_input button{
      width:120px;
      height:36px;
      line-height: 36px;
      background-color:#45b860;
      color:#fff;
      font-size:16px;
      outline: 0;
      border:0;
      cursor: pointer;
      border-radius:4px;
    }
    .success{
      color:#ffa415;
    }
    .error{
      color:#45b860;
    }
    .mark{
    	position:fixed;
    	background: #f8f8f8;
    	top:0;
    	bottom: 0;
    	left:0;
    	right: 0;
    	z-index: -10;
    }
</style>
</head>
<body>
<!-- <div class="system-message">

<p class="detail"></p>
<p class="jump">
页面自动 <a id="href" href="<?php echo($jumpUrl); ?>">跳转</a> 等待时间： <b id="wait"><?php echo($waitSecond); ?></b>
</p>
</div> -->

<?php if(isset($message)): ?><div class="pro_box">
  <div class="pro_title success">操作成功</div>
  <div class="pro_content"><?php echo($message); ?> 页面自动 <a id="href" href="<?php echo($jumpUrl); ?>">跳转</a> 等待时间： <b id="wait"><?php echo($waitSecond); ?></b></div>
  <div class="pro_input"><button>确定</button></div>
</div>
<?php else: ?>

<div class="pro_box">
  <div class="pro_title error">操作失败</div>
  <div class="pro_content"><?php echo($error); ?> 页面自动 <a id="href" href="<?php echo($jumpUrl); ?>">跳转</a> 等待时间： <b id="wait"><?php echo($waitSecond); ?></b></div>
  <div class="pro_input"><button>确定</button></div>
</div><?php endif; ?>
<div class="mark">
	
</div>

<script type="text/javascript">
(function(){
var wait = document.getElementById('wait'),
href = document.getElementById('href').href;
var interval = setInterval(function(){
	var time = --wait.innerHTML;
	if(time <= 0) {
		location.href = href;
		clearInterval(interval);
	};
}, 1000);
})();
</script>
</body>
</html>