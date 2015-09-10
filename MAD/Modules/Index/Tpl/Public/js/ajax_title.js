/**
 * 
 */
function re_title(){
		 $(function(){
			$("#jc_title").ready(function(){
				var title=$("input[name='title']").val();
				if(title == ""){
					alert('请先输入标题');
					return;
				}
				//alert(window.location.host+'---'+window.location.pathname)
				var url ="http://"+ window.location.host+'/index.php/UpVideo';
				$.post(url+"/re_title",{title:title},function(res){
					if(res.status == 0){
						alert(res.data);
					}else{
						alert(res.data);
						//document.getElementByID('title').innerHTML="";
					}
				},"json");
			});
		  });
	 
		
}