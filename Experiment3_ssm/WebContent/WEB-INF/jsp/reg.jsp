<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>学生注册</title>
<link href="${pageContext.request.contextPath}/Wopop_files/style_log.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/userpanel.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/jquery.ui.all.css">

</head>

<body class="login" mycollectionplug="bind">
<div class="login_m">
<div class="login_logo"><img src="${pageContext.request.contextPath}/images/logo.png" width="196" height="46"></div>
<div class="login_boder1">
<form action="${pageContext.request.contextPath }/user/sign" method="post">
<div class="login_padding" id="login_model">

  <h2>学号/账号</h2>
  <label>
    <input type="text"  name="id" id="username" class="txt_input txt_input2" placeholder="学号/账号">
  </label>
  <h2>姓名</h2>
  <label>
    <input type="text" name="name" id="userpwd" class="txt_input" placeholder="姓名">
  </label>
  <h2>身份证号</h2>
  <label>
    <input type="text" name="idcard" id="userpwd" class="txt_input" placeholder="身份证号">
  </label>
   <h2>密码</h2>
  <label>
    <input type="password" name="pwd" id="userpwd" class="txt_input" placeholder="密码">
  </label>
  
<div>${regmsg }
  </div>
  
  <div class="rem_sub">
 
    <label>
      <input type="submit" class="sub_button" name="button" id="button" value="SIGN-IN" >
    </label>
  </div>
</div>
</form>


</div><!--login_m end-->
 <br> <br>
<p align="center"> More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>



</body></html>