<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<title>修改密码</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/style.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/style_log.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/userpanel.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/jquery.ui.all.css"/>

</head>

<body class="login1" mycollectionplug="bind">
<div class="login_m">
<div class="login_logo"><img src="${pageContext.request.contextPath}/images/logo.png" width="196" height="46"/></div>
<div class="login_boder2" style="height:400px">
<form action="${pageContext.request.contextPath }/user/uppwd" >
<div class="login_padding" id="login_model">

  <h2>账号</h2>
  <label>
    <input type="text" id="username" class="txt_input txt_input2"  value="${user.id } " readonly="readonly"/>
  </label>
  <h2>姓名</h2>
  <label>
    <input type="text" name="textfield2" id="userpwd" class="txt_input" value="${user.name} " readonly="readonly"/>
  </label>
  <h2>旧密码</h2>
  <label>
    <input type="password" name="oldpwd"  class="txt_input" />
  </label>
   <h2>新密码</h2>
 <label>
    <input type="password" name="newpwd"  class="txt_input" />
  </label>

 <div>
 ${pwdmsg }
 </div>
  
  <div class="rem_sub">
 
    <label>
      <input type="submit" class="sub_button" name="button" id="button" value="提交" />
    </label>
  </div>
</div>
</form>


</div><!--login_m end-->


</div>
</body></html>