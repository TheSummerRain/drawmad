/**
 * 
 */

$(function(){
			$("#add_video_score").click(function(){
				var video_id=$("input[name='video_id']").val();//获取要打分的视频
				//var video_id=$("input[name='id']").val();
				var point=$("select[name='point']").val();//获取你给的打分
				//document.write("123");
				var url ="http://"+ window.location.host+window.location.pathname;
				$.post(url+"/addScore",{id:video_id,point:point},function(res){
					if(res.status == 2){
						alert(res.data);
						window.open("http://"+ window.location.host+"/index.php/Login");
					}else if(res.status == 0){
						alert(res.data);
					}else if(res.status == 1){
						alert('评分成功');
						$("#avg_score_fen").html(res.data);
						//document.getElementById("avg_score").innerHTML="当前平均评分："+res.data;
					}
				},"json");
			});
		  });
