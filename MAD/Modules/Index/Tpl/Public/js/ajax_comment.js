/**
 * 
 */
/*function pb_pl(pl_id,vid){
	 if(window.confirm("你确定要屏蔽此条评论吗？")){
		 $(function(){
			$("#pingbi").ready(function(){
				var url ="http://"+ window.location.host;
				$.post(url+"/index.php/Video/pb_pl",{pl_id:pl_id},function(res){
					if(res.status == 0){
					alert(res.data);
					document.getElementById(pl_id).innerHTML='********已屏蔽********';
					}
				},"json");
			});
		  });
	 }
	 else{
		   return false;
		 }
}*/


	function commentInit(){
		$('#comment-input').bind('click', function(){
			if($('#comment-textarea').val() == ""){
				alert('请先填写评论再进行发表哦~');
			}else{

				var resUrl = $('#resUrl').val();
				var video_id = $("input[name='video_id']").val();
				var content=$('#comment-textarea').val();
				var user_friend_id=$("input[name='user_friend_id']").val();
		 		var parent_id = $("input[name='return-input']").val();
		 		var content2 = "";
		 		parent_id = parent_id=="" ? 0: parent_id;

		 		content = content.split(']');
		 		if(parent_id != 0){
		 			for(var i=1; i<content.length;i++){
		 				content2+=content[i];
		 			}
		 		}else{
		 			content2 = $('#comment-textarea').val();
		 		}


				var url ="http://"+ window.location.host+"/VideoDetail/sendMsg";//window.location.pathname
				$.ajax({
					type: 'POST',
					url:url,
					data:{video_id:video_id,content:content2,parent_id:parent_id},
					dataType: 'json',
					cache:false,
					success:function(res){
						if(res.status == 2){
							alert(res.data);
						}else if(res.status == 0){
							alert(res.data);
							window.open("http://"+ window.location.host+"/Login");
						}else if(res.status == 1){
							//alert('评论成功~ 刷新后显示');
							$('#comment-textarea').val('');
							var data = res.data;
							var commenthtml = '<div class="comment">'
								+'<div class="comment-left">'
									+'<a href="/MyZone?userid='+data.id+'" target="_blank"><img src="'+resUrl+'/user_head/'+data.user_img+'" alt=""></a>'
								+'</div>'
								+'<div class="comment-right">'
									+'<ul>'
										+'<li class="comment-title">'
											+'<div>'
												+'<span class="comment-title-num">#'+data.num_floor+'</span><span class="comment-title-name">'+data.nick_name+'</span>'
											+'</div>'
											
										+'</li>'
										+'<li class="comment-content">'+data.content+'</li>'
										+'<li class="comment-date">'
											+'<div>'+data.time+'</div>'
										+'</li>'
									+'</ul>'
										
									+'<div class="comment-control">'

										+'<a href="javascript:void(0)" id="del_pl" data-id='+data.id+' data-videoId='+data.video_id+' class="comment-control-del">删除</a>'
										+'<a href="#pos" data-id="'+data.id+'" data-num="'+data.num_floor+'" data-name="'+data.nick_name+'" class="comment-control-return">回复</a>'
										
									+'</div>'
								+'</div>'
							+'</div>'
							$('.video-comment-list').prepend(commenthtml);
						}
					}
				})
				/*$.post(url+"/VideoDetail/sendMsg",{video_id:video_id,content:content2,parent_id:parent_id},function(res){
					if(res.status == 2){
						alert(res.data);
					}else if(res.status == 0){
						alert(res.data);
						window.open("http://"+ window.location.host+"/Login");
					}else if(res.status == 1){
						alert('评论成功~ 刷新后显示');
						$('#comment-textarea').val('');

					}
				},"json");*/

			}
		});
	}

	function commentControl(){
		commentInit();
		commentDel();
		commentReturn();

	}

	function commentReturn(){
		$('.video-comment-list').on('click', '.comment-control-return', function(){
			$('#comment-textarea').val('[#回复'+$(this).data("num")+'L#  '+$(this).data("name")+']\r').focus();
			$('#return-input').val($(this).data("id"));
		});

	}

	function commentDel(){
		$('.video-comment-list').on('click', '.comment-control-del', function(){

			if(window.confirm("你确定要删除此条评论吗？")){
				var id = $(this).data('id');
				var vid = $(this).data('videoid');
				var thiss = this;

				var url ="http://"+ window.location.host;
				$.post(url+"/VideoDetail/del_pl",{id:id,vid:vid},function(res){
					if(res.status == 1){
						alert(res.data);
						$(thiss).parent().parent().parent().remove();
						
					}else{
						alert(res.data);
					}
				},"json");
				
			}
			else{
				return false;
			}

		})
	}


	$(function(){
		commentControl();

		/*$('.manu>a').bind('click', function(){
			//alert($(this).data('page'));
			var video_id = $("input[name='video_id']").val();
			var pageCurrent = $(this).data('page');
			var pageLimit = $("#listRows").val();;
			var thiss = $(this);
			var thisSpan = $('.manu>.current');
			

			var url ="http://"+ window.location.host;//window.location.pathname
				$.post(url+"/index.php/VideoDetail/getComments",{id:video_id,pageCurrent:pageCurrent,pageLimit:pageLimit},function(res){
					if(res.status == 0){
						alert(res.data);
					}else if(res.status == 1){
						$('.video-comment-list>.comment').remove();
						$('.video-comment-list');

						$.each(res.data, function (index, data) {
	                        console.log(data);
                            $('.video-comment-list').append('<div class="comment">'
+'<div class="comment-left">'
+'<a href="/index.php/MyZone?userid='+ data.user_id +'" target="_blank"><img src="/MAD/Modules/Index/Tpl/Public/user_head/'+data.user_img+'" alt=""></a>'
+'</div>'
+'<div class="comment-right">'
+	'<ul>'
+		'<li class="comment-title">'
+			'<div>'
+				'<span class="comment-title-num">#'+data.num+'</span><span class="comment-title-name">'+data.nick_name+'</span>'
+			'</div>'
			
+		'</li>'
+		'<li class="comment-content">'
+    		'<empty name="data.parent_num">'
+			data.content
+    		'<else/>'
+			'<a>#回复'+data.parent_num+'L# </a>'+data.parent_nick_name+' '+data.content
+    		'</empty>'

+			'<if condition="$data.parent_num eq null">'
+			data.content
+			'<else/>'
+			'<a>#回复'+data.parent_num+'L# </a>'+data.parent_nick_name+' '+data.content
+			'</if>'

+			'</li>'
+		'<li class="comment-date">'
+			'<div>'+data.time+'</div>'
+		'</li>'
+	'</ul>'
		
+	'<div class="comment-control">'
+		'<if condition="'+data[purview]+' eq 1">'
+		'<a href="javascript:void(0)" id="del_pl" onclick="del_pl('+data.id+','+data.video_id+',this)" class="comment-control-del">删除</a>'
+		'<else/>'
+		'</if>'
		
+		'<a href="#pos" data-id="'+data.id+'" data-num="'+data.num+'" data-name="'+data.nick_name+'" name="return_pl" class="comment-control-return">回复</a>'
	
+	'</div>'
+'</div>'
+'</div>');

	                    });

						thisSpan.removeClass('current');
						thiss.addClass('current');
						//thisSpan.before('<a data-page="'+thisSpan.data('page')+'" data-type="normalPage">'+thisSpan.data('page')+'</a>');
						//thisSpan.remove();
						//thiss.before('<span data-page="'+pageCurrent+'" data-type="spanPage" class="current">'+pageCurrent+'</span>');
						//thiss.remove();
					}
				},"json");
		});*/
	});