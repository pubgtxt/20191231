<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Wopop</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/style_log.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/userpanel.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/jquery.ui.all.css">

</head>

<body class="login" mycollectionplug="bind">
<div class="login_m">
<div class="login_logo"><img src="${pageContext.request.contextPath}/Wopop_files/logo.png" width="196" height="46"></div>
<div class="login_boder">
<form action="${pageContext.request.contextPath }/user/login" method="post">
<div class="login_padding" id="login_model">

  <h2>ID</h2>
  <label>
    <input type="text" name="id" class="txt_input txt_input2"  placeholder="账号/学号"/>
  </label>
  <h2>PASSWORD</h2>
  <label>
    <input type="password" name="pwd"  class="txt_input"  placeholder="请输入密码"/>
  </label>
 <div>${regmsg }${updatepwd }
  ${errorMsg }
  ${pwdmsg }</div>
  <div class="rem_sub">
 
    <label>
      <input type="submit" class="sub_button"  value="LOGIN-IN" >
    </label>
  </div>
   <div class="forgot">
     <div><a id="iforget" href="${pageContext.request.contextPath }/user/toSign">注册</a></div>
  
     <div><a id="iforget1" href="${pageContext.request.contextPath }/user/toPwd">忘记密码?</a></div>
  </div>
</div>
</form>


</div><!--login_m end-->
 <br> <br>
<p align="center"> More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>



</body></html>