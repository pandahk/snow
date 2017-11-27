<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link type="text/css" rel="stylesheet"
	href="${ctx}/static/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet"
	href="${ctx}/static/css/bootstrap.css.map" />
<link type="text/css" rel="stylesheet"
	href="${ctx}/static/css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet"
	href="${ctx}/static/css/bootstrap-theme.min.css.map" />
<script type="text/javascript" src="${ctx}/static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/jquery-1.8.3.min.js"></script>

<script type="text/javascript">
$(function(){
	$(".h").click(function(){
		$(".p").hide();
		
	});
  });
</script>
<title>bootstrap</title>

</head>
<body>
欢迎 : <strong>${user}</strong>, 这是欢迎页面。<br/>

<security:authorize access="hasRole('ADMIN')">
	<strong>具有admin权限的人可以看到的内容。</strong><br/>
</security:authorize>



	<div class="container">
		<h1>Snow index </h1>
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
				<h2 class="h">基础菜单</h2>
				<ul class="nav nav-tabs nav-stacked p">
					<li><a href='#'>Another Link 1</a></li>
					<li><a href='#'>Another Link 2</a></li>
					<li><a href='#'>Another Link 3</a></li>
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
