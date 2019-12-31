<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>个人信息</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/style_log.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/userpanel.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Wopop_files/jquery.ui.all.css">

</head>

<body class="login1" mycollectionplug="bind">
<div class="login_m">
<div class="login_logo"><img src="${pageContext.request.contextPath}/images/logo.png" width="196" height="46"/></div>
<div class="login_boder3" style="height:700px">
<form action="${pageContext.request.contextPath}/user/upUser">
<div class="login_padding" id="login_model">

  <h2>账号</h2>
  <label>
    <input type="text" id="id" class="txt_input txt_input2"  value="${user.id } " readonly="readonly"/>
  </label>
  <h2>姓名</h2>
  <label>
    <input type="text" name="name" id="userpwd" class="txt_input" value="${user.name} " readonly="readonly"/>
  </label>
   <h2>年龄</h2>
  <label>
    <input type="text" name="age"  class="txt_input" value="${um.age} "
     />
  </label>
   <h2>性别</h2>
  <label>
    <input type="text" name="sex"  class="txt_input" value="${um.sex} "
     />
  </label>
  <h2>身份证号</h2>
  <label>
    <input type="text" name="idcard"  class="txt_input" value="${user.idcard}"
    readonly="readonly"
     />
  </label>
   <h2>学院名称</h2>
  <label>
    <input type="text" name="department"  class="txt_input" value="${um.department} "
     />
  </label>
   <h2>专业</h2>
  <label>
    <input type="text" name="major"  class="txt_input" value="${um.major} "
     />
  </label>
   <h2>身份</h2>
 <label>
    <input type="text" name="part"  class="txt_input" <c:if test="${user.part eq '1'}">value="读者"</c:if>	
    
    <c:if test="${user.part eq '0'}">value="管理员"</c:if>	
     readonly="readonly" />
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