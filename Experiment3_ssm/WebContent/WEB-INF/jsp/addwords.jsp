<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>新增留言</title>
<link href="${pageContext.request.contextPath}/Wopop_files/style_log.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/userpanel.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/jquery.ui.all.css">

</head>

<body class="login" mycollectionplug="bind">
<div class="login_m">
<div class="login_logo"><img src="${pageContext.request.contextPath}/images/logo.png" width="196" height="46"/></div>
<form action="${pageContext.request.contextPath}/user/addwords">
<div class="login_boder2"style="height:400px">
<div class="login_padding" id="login_model">

  <h2>序号</h2>
  <label>
    <input type="text" name="userid" class="txt_input txt_input2"  value="${user.id } " readonly="readonly"/>
  </label>
  <h2>留言人</h2>
  <label>
    <input type="text" name="username" id="userpwd" class="txt_input" value="${user.name} " readonly="readonly"/>
  </label>
   <h2>留言内容</h2>
  <label>
    <textarea  name="words"  rows="5" cols="50"
    	
     ></textarea>
  </label>
  

 <div class="rem_sub">
 
    <label>
      <input type="submit" class="sub_button" name="button" id="button" value="提交" >
    </label>
  </div>
</div>


</div><!--login_m end-->
</form>


</body></html>