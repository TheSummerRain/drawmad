/**
 * 
 */
$(function(){
			$("#add_sc").click(function(){
				var video_id=$("input[name='video_id']").val();
				//document.write("123");
				var url ="http://"+ window.location.host+window.location.pathname;
				$.post(url+"/collect",{video_id:video_id},function(res){
					if(res.status ==0){
						
						alert(res.data);
					}else if(res.status == 2){
						alert(res.data);
						window.open("http://"+ window.location.host+"/Login");
					}else  if(res.status == 1){
						alert(res.data);
						//document.getElementById("add_sc").value="已收藏";
					}
				},"json");
			});
		  });