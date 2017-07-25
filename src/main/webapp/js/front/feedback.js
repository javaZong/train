/**
 * Created by java_zong on 2017/4/22.
 */
$(function () {
    $("#sendMessage").click(function () {
        sendMessage();
    });
});
function sendMessage() {
    var email = $("#email").val();
    var content = $("#message").val();
    if (content.length == 0) {
        alert("反馈内容不能为空!");
        return;
    }
    var args = {
        "email": email,
        "content": content
    }
    $.post("sendFeedback", args, function (data) {
        if (data.status == 0) {
            alert("反馈内容已成功发送给网站管理员!");
        } else {
            alert("发送失败!");
        }
    })
}