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


<title>查看图书信息</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/user/tobooks">
<!--<input type="text" name="seach"/>
<input type="submit" class="sub_button" name="button" id="button" value="搜索" >
<![endif]-->
<div class="text-c"> 
    <input type="text" class="input-text" style="width:250px" placeholder="输入书名、作者、出版社" name="seach">
    <button type="submit" class="btn btn-success" id="button" name="button"><i class="icon-search"></i> 搜索</button>

  </div>
</form>

<div class="page-container">
	<table class="table table-border table-bordered table-bg">
		<thead>
			<tr>
				<th colspan="11" scope="col">信息统计</th>
			</tr>
			<tr class="text-c">
				<th>id</th>
				<th>标识编号</th>
				<th>书名</th>
				<th>作者</th>
				<th>出版社</th>
				<th>出版日期</th>
				<th>剩余数量</th>
				<th>单价</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		
			<c:forEach items="${bookpager.list}" var="book" varStatus="vs">
			<c:if test="${user.part eq '1'}">
			<c:if test="${book.states eq '1'}">
			<tr class="text-c">
				<td>${book.id }</td>
				<td>${book.isbn }</td>
				<td>${book.bookname }</td>
				<td>${book.anthor }</td>
				<td>${book.publish }</td>
				<td>${book.publishdate }</td>
				<td>${book.num }</td>
				<td>${book.price }</td>
				<td ><a href="${pageContext.request.contextPath}/user/borrow?id=${book.id }">预约借书</a></td>
			</tr>
			</c:if>
			</c:if>
			<c:if test="${user.part eq '0'}">
			<tr class="text-c">
				<td>${book.id }</td>
				<td>${book.isbn }</td>
				<td>${book.bookname }</td>
				<td>${book.anthor }</td>
				<td>${book.publish }</td>
				<td>${book.publishdate }</td>
				<td>${book.num }</td>
				<td>${book.price }</td>
				<td >
				<c:if test="${book.states eq '0'}">&nbsp;<a href="${pageContext.request.contextPath}/user/upordown?id=${book.id }&states=1">上架</a></c:if>
				<c:if test="${book.states eq '1'}">&nbsp;<a href="${pageContext.request.contextPath}/user/upordown?id=${book.id }&states=0">下架</a></c:if></td>
			</tr>
			</c:if>
			</c:forEach>
		</tbody>
	</table>
</div>
<div style="float:right;margin-right:100px">
<table>
<tr align="center">
					<td colspan="7">第${bookpager.currentPage}页/共${bookpager.totalPage}页&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="${pageContext.request.contextPath}/user/tobooks?nowone=1&seach=${seach}">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;
									<c:if test="${bookpager.currentPage>1}">
										<a href="${pageContext.request.contextPath}/user/tobooks?nowone=${bookpager.currentPage-1}&seach=${seach}">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
									</c:if>
									<c:if test="${bookpager.currentPage<bookpager.totalPage}">
										<a href="${pageContext.request.contextPath}/user/tobooks?nowone=${bookpager.currentPage+1}&seach=${seach}">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
									</c:if>
									<a href="${pageContext.request.contextPath}/user/tobooks?nowone=${bookpager.totalPage}&seach=${seach}">末页</a>
					</td>
				</tr>
</table>
 </div >
<script type="text/javascript" src="${pageContext.request.contextPath}/inter/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/inter/static/h-ui/js/H-ui.min.js"></script> 

</body>
</html>