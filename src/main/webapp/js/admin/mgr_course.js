var pageNo = null;
$(function () {
    initTypeSelect("#search_type");
    $("#edit_course").hide();
    showCourseList(1);
    $("#searchBtn").click(function () {
        showCourseList(1);
    });
});

function showCourseList(pageNo) {
    var url = "admin/course/courseList";
    var typeid = $("#search_type option:selected").val();
    var args = {
        "pageNo": pageNo,
        "typeid": typeid
    }
    $.getJSON(url, args, function (data) {
        $("#objlist").html('');
        var tdbegin = "<td>";
        var tdend = "</td>";
        var clist = data.list;
        $("#total_page").text(data.pageCount);
        $("#current_page").text(data.pageNo);
        for (var i = 0; i < clist.length; i++) {
            var c = clist[i];
            var edit = "<a  id='show_" + c.id + "' class='edit'><span class='glyphicon glyphicon-edit'>编辑</span> </a>";
            var del = "<a  id='del_" + c.id + "' class='del'><span class='glyphicon glyphicon-remove'>删除</span> </a>";
            $('#objlist').append(
                "<tr id='course_" + c.id + "' >" +
                tdbegin + c.id + tdend +
                tdbegin + c.courseName + tdend +
                tdbegin + c.content + tdend +
                tdbegin + edit + del + tdend
                + "</tr>"
            );
        }
        $('.edit').hDialog({
            title: '课程信息',
            box: '#edit_course',
            boxBg: '#eeeeee',
            modalBg: '#000000',
            closeBg: 'rgba(0,0,0,0,6)',
            width: 780,
            height: 550,
            positions: 'center',
            modalHide: false
        });
        $('.edit').click(showCourse);
        $('.del').click(delCourse);

    });
}

function showCourse() {
    var url = "admin/course/show";
    initTypeSelect("#type");
    var courseid = $(this).attr("id").substr(5);
    var args = {
        "courseid": courseid
    };
    $.get(url, args, function (data) {
        if (data == null)
            return;
        $("#name").val(data.courseName);
        $("#content").val(data.content);
        $("#income").val(data.courseIncome);
        $("#type").val(data.typeId);
        $("#courseid").val(courseid);
    });
}

function updateCourse() {
    var url = "admin/course/update";
    var courseid = $("#courseid").val();
    var typeid = $("#type option:selected").val();
    var courseName = $("#name").val();
    if (courseName == null) {
        alert("课程名称不能为空！");
        return;
    }
    var content = $("#content").val();
    var courseIncome = $("#income").val();
    var args = {
        "courseid": courseid,
        "courseName": courseName,
        "content": content,
        "courseIncome": courseIncome,
        "typeid": typeid
    };

    $.post(url, args, function (data) {
        if (data.status == '0') {
            alert("更新成功");
            var type = $("#type_" + typeid).children();
            $(type.get(0)).text(typeid);
            $(type.get(1)).text(courseName);
            $(type.get(2)).text(content);
            closeEdit();
        } else {
            alert("更新失败");
        }
    });
}

function delCourse() {
    var courseid = $(this).attr("id").substr(4);
    if (!confirm("确定要删除该信息?")) {
        return false;
    }
    var url = "admin/course/delete";
    var args = {
        "courseid": courseid
    };

    $.get(url, args, function (data) {
        if (data.status == "0") {
            alert("删除成功!");
            $("#course_" + courseid).remove();
        } else {
            alert("删除失败!");
        }
    });
    return false;
}

function closeEdit() {
    $('.edit').hDialog('close', {
        box: '#edit_course'
    });
}

function initTypeSelect(element) {
    $(element).html("");
    var url = "admin/type/typeList";
    $.get(url, null, function (data) {
        if (data != null) {
            for (var i = 0; i < data.length; i++) {
                $(element).append("<option value=" + data[i].id + " >" + data[i].typeName + "<\option>");
            }
        }
    });
}
