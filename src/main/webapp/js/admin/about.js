$(function(){
	initAttr(true);
	loadAbout();
	$("#editBtn").click(function(){
		initAttr(false);
		
	});
	$("#updateBtn").click(function(){
		updateAbout();
	});
});

function loadAbout(){
	var url="admin/about-query";
	
	$.getJSON(url,null,function(data){
		if(data==null||data.flag=='failure')
			return;
		var info = JSON.parse(data.flag);
		$("#name").val(info.name);
		$("#address").val(info.address);
		$("#phone").val(info.phone);
		$("#email").val(info.email);
		$("#introduce").val(info.introduce);
	});
}

function updateAbout(){
	var url ="admin/about-update";
	var name=$("#name").val();
	var address=$("#address").val();
	var phone=$("#phone").val();
	var email=$("#email").val();
	var introduce=$("#introduce").val();
	
	var args={
			"name":name,
			"address":address,
			"phone":phone,
			"email":email,
			"introduce":introduce
	};
	
	$.getJSON(url,args,function(data){
		if(data.flag=='success'){
			alertMsg("更新成功");
			$("#name").val(name);
			$("#address").val(address);
			$("#phone").val(phone);
			$("#email").val(email);
			$("#introduce").val(introduce);
			initAttr(true);
		}else{
			alertMsg("更新失败");
		}
	});
}

function initAttr(arg){
	alert(arg)
	$("#name").attr("readonly",arg);
	$("#address").attr("readonly",arg);
	$("#email").attr("readonly",arg);
	$("#phone").attr("readonly",arg);
	$("#introduce").attr("readonly",arg);
	
}