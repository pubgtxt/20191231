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

<title>所有借阅</title>
</head>
<body>
<div class="page-container">
	<table class="table table-border table-bordered table-bg">
		<thead>
			<tr>
				<th colspan="10" scope="col">信息统计</th>
			</tr>
			<tr class="text-c">
				<th>id</th>
				<th>标识编号</th>
				<th>书名</th>
				<th>学号</th>
				<th>学生姓名</th>
				<th>借阅时间</th>
				<th>归还时间</th>
				<th>当前状态</th>
				<th>借阅时长</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		
			<c:forEach items="${allborrow}" var="book" varStatus="vs">
			<tr class="text-c">
				<td>${book.bookid }</td>
				<td>${book.isbn }</td>
				<td>${book.bookname }</td>
				<td>${book.userid }</td>
				<td>${book.username }</td>
				<td>${book.borrowtime }</td>
				<td>${book.returntime }</td>
				<td>
				<c:if test="${book.part eq '0'}">预借阅</c:if>
				<c:if test="${book.part eq '1'}">已借阅</c:if>
				<c:if test="${book.part eq '2'}">已归还</c:if>
				<c:if test="${book.part eq '-1'}">已拒绝</c:if>
				</td>
				<td>${book.time }天</td>
				<td>
				<c:if test="${book.part eq '0'}"><a href="${pageContext.request.contextPath}/user/getborrow?id=${book.id}">借出</a>&nbsp;
				<a href="${pageContext.request.contextPath}/user/disborrow?id=${book.id}">拒绝借阅</a></c:if>
				<c:if test="${book.part eq '1'}"><a href="${pageContext.request.contextPath}/user/returnborrow?id=${book.id}">归还</a></c:if>
				<c:if test="${book.part eq '2'}"><a href="${pageContext.request.contextPath}/user/delborrow?id=${book.id}">删除此记录</a></c:if>
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