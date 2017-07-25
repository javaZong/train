$(function(){
	showComment();
	
	
});

function showComment(){
	var url="show-showAllMessage";
	var pageNo=$("#current_page").text();
	var args={
			"pageNo":pageNo
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
			var comment=info[i];
			
			var del="<a  href='#"+comment.id+ "' class='del'><span class='glyphicon glyphicon-remove'>删除</span> </a>";
		   $('#objlist').append(
			"<tr id='comid_"+comment.id+"' >"+
			   tdbegin+comment.id+tdend+
			   tdbegin+comment.email+tdend+
			   tdbegin+comment.phone+tdend+
			   tdbegin+comment.content+tdend+
			   tdbegin+getDateTimeFromMS(comment.postDate.toString())+tdend+
			   tdbegin+del+tdend
			+"</tr>"	   
		   );
		}
		$('.del').click(delComment);
	});
}

function delComment(){
	var comid=$(this).attr("href").substr(1);
	if(!confirm("确定要删除该信息")){
		return false;
	}
	var url="admin/comment-delete";
	
	var args={
			"comid":comid
	};
	$.getJSON(url,args,function(data){
		if(data.flag=='success'){
			alertMsg("删除成功");
			$("#comid_"+comid).remove();
		}else {
			alertMsg("删除失败");
		}
		
	});
	return false;
}
function setpage(obj) {
	toPage(obj.id,"current_page",'total_page','btFirst','btPre','btNext','btLast','btGo',"go_page",queryUser);
}