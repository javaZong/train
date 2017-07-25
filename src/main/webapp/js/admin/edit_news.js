
//实例化编辑器
	
	var newsid=getUrlQueryString("newsid");
	
	var content;
$(function(){
	
	
	
	initEditNews();
	editNews();
	$("#editBtn").click(function(){
		updateNews();
	});
});


   
function editNews(){
	var url="admin/news-edit";
	
	var args={
		"newsid":newsid	
	};
	$.getJSON(url,args,function(data){
		if(data==null||data.flag==null){
			alertMsg(data.info);
			return;
		}
		var news=JSON.parse(data.flag);
		
		
		$("#title").val(news.title);
		$("#author").val(news.author);
		$("#tags").val(news.tags);
		$("#introduce").val(news.introduce);
	
		content=news.content;
		$("#imgText").val(news.newsImage);
		setSelectedValue("menu", news.menu.id);
		setSelectedValue("place",news.place.id);
	});
	return false;
}

function updateNews(){
	layer.msg('提交中,请稍后...',{icon:16});
	var url="admin/news-update";
	var menuid=getSelectedValue("menu");
	var placeid=getSelectedValue("place");
	var img=document.getElementById("news_img");
	var title=$("#title").val();
	var author=$("#author").val();
	var tags=$("#tags").val();
	var introduce=$("#introduce").val();
	var content=getContent();
	var args={
			
			"title":title,
			"author":author,
			"tags":tags,
			"introduce":introduce,
			"content":content
			
	};
	var fd=new FormData();
	var file=img.files[0];
	if(file)
		fd.append("newsImg",file);
	fd.append("newsid",newsid);
	fd.append("menuid",menuid);
	fd.append("placeid",placeid);
	fd.append("param",JSON.stringify(args));
	
	$.ajax({
		url:url,
		type:"POST",
		data:fd,
		processData:false,
		contentType:false,
		success:function(data){
			layer.closeAll();
			if(data.flag=='success'){
				alertMsg(data.flag);
			}else{
				alertMsg(data.info);
			}
		}
	});
	
}

function initEditNews(){
	clearSelectOptions("menu");
	clearSelectOptions("place");
	initMenuSelect("menu");
	initPlaceSelect("place");
}





function getContent() {
    var arr = [];
    arr.push(UE.getEditor('editor').getContent());
    return arr.join("\n");
}

 
var ue = UE.getEditor('editor');
ue.ready(function() {
    //异步回调
    UE.getEditor('editor').execCommand('insertHtml', content);
});
