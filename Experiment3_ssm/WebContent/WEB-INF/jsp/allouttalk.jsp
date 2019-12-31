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


<title>所有公告息</title>
</head>
<body>
<div class="page-container">
	<table class="table table-border table-bordered table-bg">
		<thead>
			<tr>
				<th colspan="11" scope="col">信息统计</th>
			</tr>
			<tr class="text-c">
				<th>id</th>
				<th>发布者</th>
				<th>标题</th>
				<th>正文</th>
				<th>发布时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		
			<c:forEach items="${outtalk}" var="ot" varStatus="vs">
			<tr class="text-c">
				<td>${ot.id }</td>
				<td>${ot.username }</td>
				<td>${ot.title }</td>
				<td>${ot.words }</td>
				<td>${ot.time }</td>
				<td >
				<c:if test="${user.part eq '0'}">
				<a href="${pageContext.request.contextPath}/user/delouttalk?id=${ot.id }">删除公告</a>
				</c:if>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/inter/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/inter/static/h-ui/js/H-ui.min.js"></script> 

</body>
</html>