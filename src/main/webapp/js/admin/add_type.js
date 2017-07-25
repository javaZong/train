/**
 * Created by java_zong on 2017/7/4.
 */
$(function(){
    $("#submitBtn").click(function(){
        addType();
    });
});

function addType() {
    var url="admin/type/addType";
    var typeName=$("#name").val();
    var memo=$("#memo").val();
    if(typeName==""){
        alert("课程大类不能为空!");
        return;
    }
    var args={
        "typeName":typeName,
        "memo":memo
    }
    $.post(url,args,function(data){
        if (data.status == 0) {
            alert("添加成功!");
        } else {
            alert('添加失败:' + data.info);
        }
    });
}
