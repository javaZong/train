$(function(){
	$("#edit_user").hide();
	queryUser();
	initEditUser();
	$("#searchBtn").click(function(){
		queryUser();
	});
});
  
function queryUser(){
	var url="admin/user-query";
    var seoValue=$("#seoValue").val();
    var seoSelect=$("#seoSelect").val();
    var pageNo=$("#current_page").text();
    var args={
    		"seoSelect":seoSelect,
    		"seoValue":seoValue,
    		"pageNo":pageNo,
    		
    };
	$.getJSON(url,args,function(data){
	
		$("#objlist").html('');
		if(data==null||data.flag==null)
			return;
		
		var recordCount=data.total;
		var pageNo=data.pageNo;
		var pageCount=data.pageCount;
		var countPerPage=data.countPerPage;
		
		$("#current_page").text(pageNo);
		$("#total_page").text(pageCount);
		$("#go_page").val(pageNo);
		
		var tdbegin="<td>";
		var tdend="</td>";
		var info = JSON.parse(data.flag);
		for(var i=0;i<info.length;i++){
			var users=info[i];
			var edit="<a  href='#"+users.id+ "' class='edit'><span class='glyphicon glyphicon-edit'>编辑</span> </a>";
			var del="<a  href='#"+users.id+ "' class='del'><span class='glyphicon glyphicon-remove'>删除</span> </a>";
		   $('#objlist').append(
			"<tr id='userid_"+users.id+"' >"+
			   tdbegin+users.id+tdend+
			   tdbegin+users.username+tdend+
			   tdbegin+users.email+tdend+
			   tdbegin+users.userRole.name+tdend+
			   tdbegin+users.phone+tdend+
			  
			   tdbegin+edit+del+tdend
			+"</tr>"	   
		   );
		}
		$('.edit').hDialog({
			titile:'用户信息',
			box:'#edit_user',
			boxBg:'#eeeeee',
			modalBg:'#000000',
			closeBg:'rgba(0,0,0,0,6)',
			width:780,
			height:550,
			positions:'center',
			modalHide:false
		});
		$('.edit').click(editUser);
		$('.del').click(delUser);
	});
}


function editUser(){
	var url="admin/user-edit";
	var userid=$(this).attr("href").substr(1);
	var args={
		"userid":userid	
	};
	$.getJSON(url,args,function(data){
		if(data==null||data.flag==null)
			return;
		var users=JSON.parse(data.flag);
		setSelectedValue("role", users.userRole.id);
		$("#name").val(users.username);
		$("#email").val(users.email);
		$("#phone").val(users.phone);
	
		$("#userid").val(users.id);
		
	});
	return false;
}

function updateUser(){
	var url="admin/user-update";
	var roleid=getSelectedValue("role");
	var rolename=getSelectedText("role");
	var userid=$("#userid").val();
	var username=$("#name").val();
	var email=$("#email").val();
	var phone=$("#phone").val();
	
	var args={
			"rolename":rolename,
			"userid":userid,
			"username":username,
			"email":email,
			"phone":phone
		
	};
	
	$.getJSON(url,args,function(data){
		if(data.flag=='success'){
			alertMsg("更新成功");
			var user=$("#userid_"+userid).children();
			$(user.get(0)).text(userid);
			$(user.get(1)).text(username);
			$(user.get(2)).text(email);
			$(user.get(3)).text(rolename);
			$(user.get(4)).text(phone);
		
			closeEdit();
		}else if(data.flag=="failure"){
			alertMsg("更新失败");
		}else{
			alertMsg(data.flag);
		}
	});
}

function delUser(){
	var userid=$(this).attr("href").substr(1);
	if(!confirm("确定要删除该用户")){
		return false;
	}
	var url="admin/user-delete";
	
	var args={
			"userid":userid
	};
	$.getJSON(url,args,function(data){
		if(data.flag=='success'){
			alertMsg("删除成功");
			$("#userid_"+userid).remove();
		}else if(data.flag=='failure'){
			alertMsg("删除失败");
		}else{
			alertMsg("删除失败");
		}
		
	});
	return false;
}

function closeEdit(){
	$('.edit').hDialog('close', {
		box : '#edit_user'
	});
}