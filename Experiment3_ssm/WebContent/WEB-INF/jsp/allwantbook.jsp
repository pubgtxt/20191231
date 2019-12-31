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


<title>所有加购申请</title>
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
				<th>书名</th>
				<th>作者</th>
				<th>申请人学号</th>
				<th>申请人</th>
				<th>申请时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		
			<c:forEach items="${wantpager.list}" var="wantbook" varStatus="vs">
			
			<tr class="text-c">
				<td>${wantbook.id }</td>
				<td>${wantbook.bookname }</td>
				<td>${wantbook.anthor }</td>
				<td>${wantbook.userid }</td>
				<td>${wantbook.username }</td>
				<td>${wantbook.time }</td>
				<td><a href="${pageContext.request.contextPath}/user/countwantbook?bookname=${wantbook.bookname }&anthor=${wantbook.anthor }">查看数量</a>
				</td>
			</tr>
			
			</c:forEach>
		</tbody>
	</table>
</div>

<div style="float:right;margin-right:100px">
<table>
<tr align="center">
					<td colspan="7">第${wantpager.currentPage}页/共${wantpager.totalPage}页&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="${pageContext.request.contextPath}/user/allwantbook?nowone=1">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;
									<c:if test="${wantpager.currentPage>1}">
										<a href="${pageContext.request.contextPath}/user/allwantbook?nowone=${wantpager.currentPage-1}">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
									</c:if>
									<c:if test="${wantpager.currentPage<wantpager.totalPage}">
										<a href="${pageContext.request.contextPath}/user/allwantbook?nowone=${wantpager.currentPage+1}">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
									</c:if>
									<a href="${pageContext.request.contextPath}/user/allwantbook?nowone=${wantpager.totalPage}">末页</a>
					</td>
				</tr>
</table>
 </div >

<script type="text/javascript" src="${pageContext.request.contextPath}/inter/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/inter/static/h-ui/js/H-ui.min.js"></script> 

</body>
</html>