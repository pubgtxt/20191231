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
<form action="${pageContext.request.contextPath }/user/addbook" method="post">
<div class="login_boder2"style="height:800px">
<div class="login_padding" id="login_model">
<h2>ISBN：</h2>
  <label>
    <input type="text" name="isbn" class="txt_input txt_input2"  />
  </label>
  <h2>书名：</h2>
  <label>
    <input type="text" name="bookname" id="userpwd" class="txt_input" value="${bwa.bookname } " />
  </label>
  <h2>作者：</h2>
  <label>
    <input type="text" name="anthor" id="userpwd" class="txt_input" value="${bwa.anthor } " />
  </label>
  <h2>出版社：</h2>
  <label>
    <input type="text" name="publish" id="userpwd" class="txt_input"   />
  </label>
  <h2>出版日期：</h2>
  <label>
    <input type="text" name="publishdate" id="userpwd" class="txt_input"  />
  </label>
  <h2>新增数量：</h2>
  <label>
    <input type="text" name="num" id="userpwd" class="txt_input" value="${bwa.num }"  />
  </label>
  <h2>单价：</h2>
  <label>
    <input type="text" name="price" id="userpwd" class="txt_input"  />
  </label>
  <c:if test="${user.part eq '0'}">
 <div class="rem_sub">
 
    <label>
      <input type="submit" class="sub_button" name="button" id="button" value="提交" />
    </label>
  </div>
  </c:if>
			</table>
			</div>


</div>
	</form>
</body>
</html>