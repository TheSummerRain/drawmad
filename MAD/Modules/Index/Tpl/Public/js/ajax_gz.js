$(function(){
	//videodetail关注
	$("input[name='addgz']").click(function(){
		
		var user_friend_id=$("input[name='user_friend_id']").val();
		var url ="http://"+ window.location.host+window.location.pathname;

		$.post(url+"/addFans",{user_friend_id:user_friend_id},function(res){
			if(res.status == 2){
				alert(res.data);
				window.open("http://"+ window.location.host+"/Login");  
			}else if(res.status == 0){
				alert(res.data);
			}else if(res.status == 1){
				alert(res.data);
				$("input[name='addgz']").val('已关注');
				//document.getElementById("addgz").value="已关注";
			}
			
		},"json");
	});

});
