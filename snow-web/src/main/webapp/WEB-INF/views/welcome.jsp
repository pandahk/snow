<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎页面</title>
<link type="text/css" rel="stylesheet" href="${ctx}/static/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${ctx}/static/css/bootstrap.css.map" />
<link type="text/css" rel="stylesheet" href="${ctx}/static/css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet" href="${ctx}/static/css/bootstrap-theme.min.css.map" />
<script type="text/javascript" src="${ctx}/static/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(function(){
	$(".h").click(function(){
		$(".p").toggle();
		
	});
	
  });
</script>
</head>
<body>
欢迎 : <strong>${user}</strong>, 这是欢迎页面。<br/>

<security:authorize access="hasRole('ADMIN')">
	<strong>具有admin权限的人可以看到的内容。</strong><br/>
</security:authorize>



<security:authorize access="hasRole('ADMIN') ">
	<strong>同时具有admin和DBA权限的人可以看到的内容。</strong><br/>
</security:authorize>

<security:authorize access="hasRole('USER')">
	<strong>具有USER权限的人可以看到的内容。</strong><br/>
</security:authorize>
<a href="<c:url value="/logout" />">Logout</a>


<div class="container">
		<h1>Snow  </h1>
		<!-- <nav class="navbar navbar-inverse"> Brand and toggle get grouped for better mobile display
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar-menu"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>11
			</button>
			<a class="navbar-brand" href="#">Brand</a>
		</div>
		<div id="navbar-menu" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#">Page One</a></li>
				<li><a href="#">Page Two</a></li>
			</ul>
		</div>
		</nav> -->
		<div id="content" class="row-fluid" >
			<div class="col-md-3" >
				<h3 class="h btn btn-default">基础菜单</h3>
				<ul class="nav nav-tabs nav-stacked p">
					<li><a href='${ctx}/user'>用户管理</a></li>
					<li><a href='#'>角色管理</a></li>
					<li><a href='#'>机构管理</a></li>
					<li><a href='#'>菜单管理</a></li>
					<li><a href='#'>字典管理</a></li>
				</ul>
			</div>
			<div class="col-md-9">
				<table class="table">
                   <tr>
                   <th>First Name</th>
                   <th>Last Name</th>
                   <th>Username</th>
                   </tr>
                   <tr>
                   <td>Mark</td>
                   <td>Otto</td>
                   <td>@mdo</td>
                   </tr>
                   <tr>
                   <td>Mark</td>
                   <td>Otto</td>
                   <td>@mdo</td>
                   </tr>
				</table>
			</div>

		</div>
	</div>
</body>
</html>