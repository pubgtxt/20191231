<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/inter/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/inter/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/inter/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/inter/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/inter/static/h-ui.admin/css/style.css" />


<title>用户管理</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/user/touam">
<div class="text-c"> 
    <input type="text" class="input-text" style="width:250px" placeholder="输入姓名，学号，性别，年龄，身份证号，学院，专业，身份" name="seach">
    <button type="submit" class="btn btn-success" id="button" name="button"><i class="icon-search"></i> 搜索</button>

  </div>
<div>${deluammsg }</div>
<div class="page-container">
	<table class="table table-border table-bordered table-bg">
		<thead>
			<tr>
				<th colspan="11" scope="col">信息统计</th>
			</tr>
			<tr class="text-c">
				<th>学号/账号</th>
				<th>姓名</th>
				<th>身份证号</th>
				<th>年龄</th>
				<th>性别</th>
				<th>学院</th>
				<th>专业</th>
				<th>身份</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		
			<c:forEach items="${userpager.list}" var="uam" varStatus="vs">
			<tr class="text-c">
				<td>${uam.user.id }</td>
				<td>${uam.user.name }</td>
				<td>${uam.user.idcard }</td>
				<td>${uam.um.age }</td>
				<td>${uam.um.sex }</td>
				<td>${uam.um.department }</td>
				<td>${uam.um.major }</td>
				<td><c:if test="${uam.user.part  eq '1'}">读者</c:if><c:if test="${uam.user.part  eq '0'}">管理员</c:if>	</td>
				<td >
				<a href="${pageContext.request.contextPath}/user/deluam?id=${uam.user.id }">删除用户</a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<div style="float:right;margin-right:100px">
<table>
<tr align="center">
					<td colspan="7">第${userpager.currentPage}页/共${userpager.totalPage}页&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="${pageContext.request.contextPath}/user/touam?nowone=1&seach=${seach}">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;
									<c:if test="${userpager.currentPage>1}">
										<a href="${pageContext.request.contextPath}/user/touam?nowone=${userpager.currentPage-1}&seach=${seach}">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
									</c:if>
									<c:if test="${userpager.currentPage<userpager.totalPage}">
										<a href="${pageContext.request.contextPath}/user/touam?nowone=${userpager.currentPage+1}&seach=${seach}">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
									</c:if>
									<a href="${pageContext.request.contextPath}/user/touam?nowone=${userpager.totalPage}&seach=${seach}">末页</a>
					</td>
				</tr>
</table>
 </div >

<script type="text/javascript" src="${pageContext.request.contextPath}/inter/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/inter/static/h-ui/js/H-ui.min.js"></script> 

</body>
</html>