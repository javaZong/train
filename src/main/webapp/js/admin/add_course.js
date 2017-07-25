$(function(){
	initTypeSelect();
	$("#addBtn").click(function(){
		addCourse();
	});
});

function addCourse(){
	var url="admin/course/add";
	var name=$("#name").val();
	var content=$("#content").val();
	var income=$("#income").val();
	var memo=$("#memo").val();
	var typeId=$("#type option:selected").val();
	
	var args={
			"courseName":name,
			"content":content,
			"courseIncome":income,
			"typeId":typeId
	};
	$.post(url,args,function(data){
		if(data.status=='0'){
			alert("添加成功");
		}else {
			alert("添加失败");
		}
	});
}

function initTypeSelect(){
    $("#type").html("");
    var url="admin/type/typeList";
    $.get(url,null,function(data){
        if(data!=null){
            for (var i=0;i<data.length;i++){

                $("#type").append("<option value="+data[i].id+" >"+data[i].typeName+"<\option>");
            }
        }

    });
}