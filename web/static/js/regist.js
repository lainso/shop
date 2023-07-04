function regist(){
    var form = document.getElementById("form");
    if(checkUserName()&checkPassword()&checkCheckpassword()){
        alert("注册成功")
        form.submit();
    }else{
        alert("请填写完整表格\n并检查填写的信息是否符合要求!")
        return false
    }

}

function res(){
    var labels = document.getElementsByTagName("label");
    for (let i = 0; i < labels.length; i++) {
        const label = labels[i];
        label.innerHTML=" ";
    }
}

window.onload = function (){
    document.getElementById("username").onblur = checkUserName;
    document.getElementById("password").onblur = checkPassword;
    document.getElementById("checkpassword").onblur = checkCheckpassword;


}
function  checkUserName(){
    var username = document.getElementById("username").value ;
    var regexp = /^[\u4e00-\u9fa5a-zA-Z0-9_]{2,12}$/    ;
    var flag = regexp.test(username);
    var label = document.getElementById("label_username");
    if(!flag){

        label.innerHTML = "<font color='red'>请输入2到12位用户名</font>";
    }else{
        label.innerHTML = "<Font color='green'>√</Font>";
    }
    return flag;
}
function  checkPassword(){
    var password = document.getElementById("password").value ;
    var regexp = /^[a-zA-Z0-9_]{6,12}$/;
    var flag = regexp.test(password);
    var label = document.getElementById("label_password");
    if(!flag){
        label.innerHTML = "<font color='red'>请输入6到12位密码</font>";
    }else{
        label.innerHTML = "<Font color='green'>√</Font>";
    }
    return flag;
}
function  checkCheckpassword(){
    var checkpassword = document.getElementById("checkpassword").value ;
    var password = document.getElementById("password").value ;
    var label = document.getElementById("label_checkpassword");
    if(checkpassword===password&&checkpassword!=""&&checkPassword()){
        label.innerHTML = "<Font color='green'>√</Font>";
        return true;
    }else{
        label.innerHTML = "<font color='red'>两次输入不一致</font>";
        return false;
    }}

function a(){
    alert("注册成功！")
}
