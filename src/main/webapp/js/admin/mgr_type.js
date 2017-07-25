var typeid = null;
$(function () {
    $("#edit_type").hide();
    showTypeList();
});

function showTypeList() {
    var url = "admin/type/typeList";
    $.getJSON(url, null, function (data) {
        $("#objlist").html('');

        var tdbegin = "<td>";
        var tdend = "</td>";
        for (var i = 0; i < data.length; i++) {
            var type = data[i];
            var edit = "<a  id='show_" + type.id + "' class='edit'><span class='glyphicon glyphicon-edit'>编辑</span> </a>";
            var del = "<a  id='del_" + type.id + "' class='del'><span class='glyphicon glyphicon-remove'>删除</span> </a>";
            $('#objlist').append(
                "<tr id='type_" + type.id + "' >" +
                tdbegin + type.id + tdend +
                tdbegin + type.typeName + tdend +
                tdbegin + type.memo + tdend +
                tdbegin + edit + del + tdend
                + "</tr>"
            );
        }
        $('.edit').hDialog({
            title: '导航栏信息',
            box: '#edit_type',
            boxBg: '#eeeeee',
            modalBg: '#000000',
            closeBg: 'rgba(0,0,0,0,6)',
            width: 780,
            height: 550,
            positions: 'center',
            modalHide: false
        });
        $('.edit').click(showType);
        $('.del').click(delType);

    });
}

function showType() {
    var url = "admin/type/show";
    typeid = $(this).attr("id").substr(5);
    alert(typeid);
    var args = {
        "typeid": typeid
    };
    $.get(url, args, function (data) {
        if (data == null)
            return;
        $("#name").val(data.typeName);
        $("#memo").val(data.memo);
        $("#typeid").val(typeid);
    });
}

function updateType() {
    var url = "admin/type/update";
    var typeid=$("#typeid").val();
    var name = $("#name").val();
    var memo = $("#memo").val();
    var args = {
        "typeid": typeid,
        "typeName": name,
        "memo": memo
    };

    $.post(url, args, function (data) {
        if (data.status == '0') {
            alert("更新成功");
            var type = $("#type_" + typeid).children();
            $(type.get(0)).text(typeid);
            $(type.get(1)).text(name);
            $(type.get(2)).text(memo);
            closeEdit();
        } else {
            alert("更新失败");
        }
    });
}

function delType() {
    typeid = $(this).attr("id").substr(4);
    if (!confirm("确定要删除该信息?")) {
        return false;
    }
    var url = "admin/type/delete";
    var args = {
        "typeid": typeid
    };

    $.get(url, args, function (data) {
        if (data.status == "0") {
            alert("删除成功!");
            $("#type_" + typeid).remove();
        } else {
            alert("删除失败!");
        }
    });
    return false;
}

function closeEdit() {
    $('.edit').hDialog('close', {
        box: '#edit_type'
    });
}
