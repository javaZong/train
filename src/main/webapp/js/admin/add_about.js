$(function(){
	
	$("#addBtn").click(function(){
		addAbout();
	});
	
	
});

function addAbout(){
	var url="admin/about-add";
	var name=$("#name").val();
	var address=$("#address").val();
	var phone=$("#phone").val();
	var email=$("#email").val();
	var introduce=$("#introduce").val();
	alert(name);
	var args={
			"name":name,
			"address":address,
			"phone":phone,
			"email":email,
			"introduce":introduce
	};
	
	$.getJSON(url,args,function(data){
		if(data.flag=='success'){
			alertMsg("添加成功");
		}else{
			alertMsg("添加失败");
		}
	});
	
}

