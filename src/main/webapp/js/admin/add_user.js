$(function(){
	$("#submitBtn").click(function(){
		addUser();
	});
});

function addUser(){
	var url="admin/user/add";
	var username=$("#name").val();
	var password=$("#password").val();
	var args={
			"username":username,
			"password":password
	};

	$.post(url,args,function(data){
		if(data.status=='0'){
			alert("添加成功！");
		}else {
			alert("添加失败！");
		}
	});
}
