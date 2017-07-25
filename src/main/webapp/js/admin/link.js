var linkid=null;
$(function(){
	$("#edit_link").hide();
	queryLink();
});

function queryLink(){
	var url="admin/link-query";
	$.getJSON(url,null,function(data){
		$("#objlist").html('');
		
		if(data==null||data.flag==null||data.flag=='failure'){
			return;
		}
		
		var tdbegin="<td>";
		var tdend="</td>";
		var info = JSON.parse(data.flag);
		for(var i=0;i<info.length;i++){
			var friendLink=info[i];
			var edit="<a  href='#"+friendLink.id+ "' class='edit'><span class='glyphicon glyphicon-edit'>编辑</span> </a>";
			var del="<a  href='#"+friendLink.id+ "' class='del'><span class='glyphicon glyphicon-remove'>删除</span> </a>";
		   $('#objlist').append(
			"<tr id='linkid_"+friendLink.id+"' >"+
			   tdbegin+friendLink.id+tdend+
			   tdbegin+friendLink.name+tdend+
			   tdbegin+friendLink.link+tdend+
			   tdbegin+friendLink.state+tdend+
			   tdbegin+friendLink.memo+tdend+
			   tdbegin+edit+del+tdend
			+"</tr>"	   
		   );
		}
		$('.edit').hDialog({
			titile:'导航栏信息',
			box:'#edit_link',
			boxBg:'#eeeeee',
			modalBg:'#000000',
			closeBg:'rgba(0,0,0,0,6)',
			width:780,
			height:550,
			positions:'center',
			modalHide:false
		});
		$('.edit').click(editLink);
		$('.del').click(delLink);
		
	});
}

function editLink(){
	var url="admin/link-edit";
    linkid=$(this).attr("href").substr(1);
	var args={
			"linkid":linkid
	};
	$.getJSON(url,args,function(data){
		if(data==null||data.flag==null)
			return;
		var friendLink=JSON.parse(data.flag);
		setSelectedValue("state", friendLink.state);
		$("#name").val(friendLink.name);
		$("#link").val(friendLink.link);
		$("#memo").val(friendLink.memo);
		linkid=friendLink.id;
	});
	return false;
}

function updateLink(){
	var url="admin/link-update";
	var name=$("#name").val();
	var link=$("#link").val();
	var state=getSelectedValue("state");
	var memo=$("#memo").val();
	var args={
			"linkid":linkid,
			"name":name,
			"link":link,
			"state":state,
			"memo":memo
	};
	
	$.getJSON(url,args,function(data){
		if(data.flag=='success'){
			alertMsg("更新成功");
			var flink=$("#linkid_"+linkid).children();
			$(flink.get(0)).text(linkid);
			$(flink.get(1)).text(name);
			$(flink.get(2)).text(link);
			$(flink.get(3)).text(state);
			$(flink.get(4)).text(memo);
			closeEdit();
		}else{
			alertMsg("更新失败");
		}
	});
}

function delLink(){
	 linkid=$(this).attr("href").substr(1);
	if(!confirm("确定要删除该信息?")){
		return false;
	}
	var url="admin/link-delete";
	var args={
			"linkid":linkid
	};
	
	$.getJSON(url,args,function(data){
		if(data.flag=='success'){
			alertMsg("删除成功!");
			$("#linkid_"+linkid).remove();
		}else{
			alertMsg("删除失败!");
		}
	});
	return false;
}

function closeEdit(){
	$('.edit').hDialog('close',{
		box:'#edit_link'
	});
}
