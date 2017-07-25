$(function(){
	$("#submitBtn").click(function(){
		addLink();
	});
});

function addLink(){
	var url="admin/link-add";
	var name=$("#name").val();
	var link=$("#link").val();
	var state=getSelectedValue("state");
	var memo=$("#memo").val();
	
	var args={
			"name":name,
			"link":link,
			"state":state,
			"memo":memo
	};
	$.getJSON(url,args,function(data){
		if(data.flag=='success'){
			alertMsg("添加成功");
		}else if(data.flag=='error'){
			alertMsg(data.info);
		}else{
			alertMsg(data.flag);
		}
	});
}