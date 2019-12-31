<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTMLPUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="${pageContext.request.contextPath}/inter/favicon.ico" >
<link rel="Shortcut Icon" href="${pageContext.request.contextPath}/inter/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="${pageContext.request.contextPath}/inter/lib/html5shiv.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/inter/lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/inter/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/inter/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/inter/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/inter/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/inter/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="${pageContext.request.contextPath}/inter/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>图书借阅管理系统</title>
<meta name="keywords" content="H-ui.admin v3.1,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v3.1，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<header class="navbar-wrapper">
	<div class="navbar navbar-fixed-top">
		<div class="container-fluid cl"> <div class="logo navbar-logo f-l mr-10 hidden-xs" href="#">图书借阅管理系统  </div> 
			<span class="logo navbar-slogan f-l mr-10 hidden-xs">v1.0</span> 
			<a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
		<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
			<ul class="cl">
				<li>欢迎登陆：</li>
				<li class="dropDown dropDown_hover">
					<a href="#" class="dropDown_A">${user.name } <i class="Hui-iconfont">&#xe6d5;</i></a>
					<ul class="dropDown-menu menu radius box-shadow">
						
						<li><a href="${pageContext.request.contextPath}/user/loginOut">退出登陆</a></li>
				</ul>
			</li>
				<li id="Hui-skin" class="dropDown right dropDown_hover"> <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
					<ul class="dropDown-menu menu radius box-shadow">
						<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
						<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
						<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
						<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
						<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
						<li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
</div>
</header>
<aside class="Hui-aside">
	<div class="menu_dropdown bk_2">
	
		<dl id="menu-article">
			<dt><i class="Hui-iconfont">&#xe616;</i> 个人信息<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a data-href="${pageContext.request.contextPath}/user/touppwd" data-title="修改密码" href="javascript:void(0)">修改密码</a></li>
					<li><a data-href="${pageContext.request.contextPath}/user/usermessage" data-title="个人信息" href="javascript:void(0)">查看个人信息</a></li>
			</ul>
		</dd>
	</dl>
	<c:if test="${user.part eq '1'}">
		<dl id="menu-picture">
			<dt><i class="Hui-iconfont">&#xe613;</i> 图书管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a data-href="${pageContext.request.contextPath}/user/tobooks" data-title="查阅图书信息" href="javascript:void(0)">查阅图书信息</a></li>
					<li><a data-href="${pageContext.request.contextPath}/user/myborrow" data-title="查看图书预订" href="javascript:void(0)">查看我的图书借阅信息</a></li>
					<li><a data-href="${pageContext.request.contextPath}/user/wantbook" data-title="申请加购" href="javascript:void(0)">申请加购</a></li>
					<li><a data-href="${pageContext.request.contextPath}/user/mywantbook" data-title="我的加购申请记录" href="javascript:void(0)">我的加购申请记录</a></li>
					<li><a data-href="${pageContext.request.contextPath}/user/allwantbook" data-title="所有加购申请" href="javascript:void(0)">所有加购申请</a></li>
			</ul>
		</dd>
	</dl>

		<dl id="menu-product">
			<dt><i class="Hui-iconfont">&#xe620;</i> 留言管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a data-href="${pageContext.request.contextPath}/user/towords" data-title="发表信息" href="javascript:void(0)">发表留言</a></li>
					<li><a data-href="${pageContext.request.contextPath}/user/mywords" data-title="我的留言" href="javascript:void(0)">我的留言</a></li>
					<li><a data-href="${pageContext.request.contextPath}/user/allwords" data-title="查看所有留言" href="javascript:void(0)">查看所有留言</a></li>
					<li><a data-href="${pageContext.request.contextPath}/user/allouttalk" data-title="所有公告" href="javascript:void(0)">所有公告</a></li>
			</ul>
		</dd>
	</dl>
	</c:if>	
	<c:if test="${user.part eq '0'}">
		<dl id="menu-article">
			<dt><i class="Hui-iconfont">&#xe616;</i> 用户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul><li><a data-href="${pageContext.request.contextPath}/user/toaddreader" data-title="新增读者" href="javascript:void(0)">新增读者</a></li>
					<li><a data-href="${pageContext.request.contextPath}/user/touam" data-title="用户信息管理" href="javascript:void(0)">用户信息管理</a></li>
			</ul>
		</dd>
	</dl>

		<dl id="menu-product">
			<dt><i class="Hui-iconfont">&#xe620;</i> 图书管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a data-href="${pageContext.request.contextPath}/user/tobooks" data-title="图书信息" href="javascript:void(0)">图书信息</a></li>
					<li><a data-href="${pageContext.request.contextPath}/user/allborrow" data-title="图书借阅信息" href="javascript:void(0)">图书借阅信息</a></li>
					<li><a data-href="${pageContext.request.contextPath}/user/allwantbook" data-title="所有加购申请" href="javascript:void(0)">所有加购申请</a></li>
					<li><a data-href="${pageContext.request.contextPath}/user/toaddbook" data-title="新增图书" href="javascript:void(0)">新增图书</a></li>
			</ul>
		</dd>
	</dl>
		<dl id="menu-product">
			<dt><i class="Hui-iconfont">&#xe620;</i> 公告发布<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a data-href="${pageContext.request.contextPath}/user/outtalk" data-title="发布公告" href="javascript:void(0)">发布公告</a></li>
					<li><a data-href="${pageContext.request.contextPath}/user/allouttalk" data-title="所有公告" href="javascript:void(0)">所有公告</a></li>
			</ul>
		</dd>
	</dl>
	</c:if>
	<c:if test="${user.id eq '1'}">
		<dl id="menu-product">
			<dt><i class="Hui-iconfont">&#xe620;</i> 管理员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a data-href="${pageContext.request.contextPath}/user/toaddadmin" data-title="新增管理员" href="javascript:void(0)">新增管理员</a></li>
			</ul>
		</dd>
	</dl>
	</c:if>
		
		
</div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<section class="Hui-article-box">
	<div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
		<div class="Hui-tabNav-wp">
			<ul id="min_title_list" class="acrossTab cl">
				<li class="active">
					<span title="我的桌面" data-href="${pageContext.request.contextPath}/user/welcome">welcome</span>
					<em></em></li>
		</ul>
	</div>
		<div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a></div>
</div>
	<div id="iframe_box" class="Hui-article">
		<div class="show_iframe">
			<div style="display:none" class="loading"></div>
			<iframe scrolling="yes" frameborder="0" src="${pageContext.request.contextPath}/user/welcome"></iframe>
	</div>
</div>
</section>

<div class="contextMenu" id="Huiadminmenu">
	<ul>
		<li id="closethis">关闭当前 </li>
		<li id="closeall">关闭全部 </li>
</ul>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/inter/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/inter/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/inter/static/h-ui/js/H-ui.js" charset="UTF-8" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/inter/static/h-ui.admin/js/H-ui.admin.js" charset="UTF-8"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath}/inter/lib/jquery.contextmenu/jquery.contextmenu.r2.js"></script>


</body>
</html>