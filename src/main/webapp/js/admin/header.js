$(function(){
	
	
	judgeLogin();
	$("#logout").click(function(){
		$("#username").text('');
		var args={"param":JSON.stringify(new Date())};
		$.get("logout",args);
	});
	
});

function judgeLogin(){
	var url="getLoginUser";
	var args={
			"param":JSON.stringify(new Date())
	};
	$.getJSON(url,args,function(data){
		if(data==null||data.username==null||data.userid==null){
			if(window.parent){
				window.parent.location.href="index";
			}else{
				window.location.href="index";
			}
		}else{
			$("#username").text(data.username);
			
			
		}
		
	});
}

