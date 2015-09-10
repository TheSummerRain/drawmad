
//个人空间关注
$("a[name='addgz']").click(function(){
	
	var thiss = $(this);
	var user_friend_id=$(this).next("input[name='user_friend_id']").val();
	
	var url ="http://"+ window.location.host+window.location.pathname;

	$.post(url+"/addFans",{user_friend_id:user_friend_id},function(res){
		if(res.status == 2){
			alert(res.data);
			window.open("http://"+ window.location.host+"/index.php/Login");  
		}else if(res.status == 0){
			alert(res.data);
		}else if(res.status == 1){
			alert(res.data);
			thiss.css('color', '#999').text('已关注');

		}
		
	},"json");
});
//别人空间关注
$("input[name='addgz']").click(function(){
	
	var thiss = $(this);
	var user_friend_id=$(this).prev("input[name='user_friend_id']").val();
	var url ="http://"+ window.location.host+window.location.pathname;

	$.post(url+"/addFans",{user_friend_id:user_friend_id},function(res){
		if(res.status == 2){
			alert(res.data);
			window.open("http://"+ window.location.host+"/index.php/Login");  
		}else if(res.status == 0){
			alert(res.data);
		}else if(res.status == 1){
			alert(res.data);
			thiss.val('已关注');

		}
		
	},"json");
});


$('.head-explan-bb').bind('click',function(){
	if(window.confirm("确定取消关注吗？")){

		var thiss = $(this);
		var url = "http://"+window.location.host+window.location.pathname;
		$.post(url+'/qxFriend',{friend_id:$(this).attr('value')},function(res){
		if(res.status == 0){
			alert(res.data);
			//location.reload();
		}else if(res.status == 1){
			//alert(res.data);
			thiss.parent().parent().parent('li').remove();

		}else{
			alert(res.data);
		}

		},"json");
	}else{
		return false;
	}
})

/*function qxFriend(id, thiss){
	//$('.main-video-li').remove();
	//$(this).parent().parent().parent('li').remove();
	//$(this).parent().parent().parent('li').empty();
	console.log(this);
	console.log(thiss);
	//alert($(thiss).parent().attr('class'));
	//alert($(this).parent().parent().parent().remove());
	
}*/
//------------------------------------分割线

function delVideo(id, thiss){
	if(window.confirm("你确定删除吗？")){

		var url = "http://"+window.location.host+window.location.pathname;
		$.post(url+'/delVideo',{video_id:id},function(res){
		if(res.status == 0){
			alert(res.data);
			//location.reload();
		}else if(res.status == 1){
			alert(res.data);
			$(thiss).parent('li').remove();
			
		}else{
			alert(res.data);
			
		}
		},"json");
	}else{
		return false;
	}
}


function delSc(id, thiss){
	if(window.confirm("你确定删除吗？")){
		var url = "http://"+window.location.host+window.location.pathname;
		$.post(url+'/delSc',{collect_id:id},function(res){
		
		if(res.status == 0){
			alert(res.data);
			//location.reload();
		}else if(res.status == 1){
			alert(res.data);
			$(thiss).parent('li').remove();
		}else{
			alert(res.data);
			
		}
		},"json");
		
	}else{
		return false;
	}
}

$('#personal-sign').bind('click', function(){
  var thiss = $(this);
  if($(thiss).text() == '编辑'){
    $('#userInfoSpan').css('display','none');
    $('#userInfoTextarea').css('display','block');
    $(thiss).text('保存');

  }else if($(thiss).text() == '保存'){
    var url = "http://"+window.location.host+window.location.pathname;
    var text = $('#userInfoTextarea').val();
    


    $.post(url+'/updateText',{text:text},function(res){
    if(res.status == 0){
      alert(res.data);
      //location.reload();
    }else if(res.status == 1){
      alert(res.data);
      

      $('#userInfoSpan').css('display','block').text(text);
      $('#userInfoTextarea').css('display','none');
      $(thiss).text('编辑');
    }else{
      alert(res.data);
      
    }
    },"json");
  }
});

