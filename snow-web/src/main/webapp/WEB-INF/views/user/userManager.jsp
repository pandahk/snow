<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎页面</title>
<link type="text/css" rel="stylesheet"
	href="${ctx}/static/css/bootstrap.css" />
<link type="text/css" rel="stylesheet"
	href="${ctx}/static/css/bootstrap.css.map" />
<link type="text/css" rel="stylesheet"
	href="${ctx}/static/css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet"
	href="${ctx}/static/css/bootstrap-theme.min.css.map" />
<script type="text/javascript"
	src="${ctx}/static/js/jquery-3.2.1.min.js"></script>
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


	<div class="container">
		<h1>Snow</h1>

		<div id="content" class="row-fluid">
			<div class="col-md-3">
				<h3 class="h btn btn-default">基础菜单</h3>
				<ul class="nav nav-tabs nav-stacked p">
					<li><a href='#'>用户管理</a></li>
					<li><a href='#'>角色管理</a></li>
					<li><a href='#'>机构管理</a></li>
					<li><a href='#'>菜单管理</a></li>
				</ul>
			</div>
			<div class="">
				<form class="form-inline">
					<div class="form-group">
						<label for="exampleInputName2">账户</label> <input type="text"
							class="form-control" id="exampleInputName2"
							placeholder="Jane Doe">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail2">组织</label> <input type="email"
							class="form-control" id="exampleInputEmail2"
							placeholder="jane.doe@example.com">
					</div>
					<button type="submit" class="btn btn-primary">查询
						</button>
				</form>
			</div>
			<div class="col-md-9 table-responsive">

				<table class="table table-bordered table-hover ">
				<tbody>
					<tr>
						<th>序号</th>
						<th>账户</th>
						<th>用户名</th>
						<th>性别</th>
						<th>组织</th>
						<th>是否有效</th>
						
					</tr>
					</tbody>
					<c:forEach items="${userList}" var="user">

						<tr>
							<td>${user.id}</td>
							<td>${user.account}</td>
							<td>${user.name}</td>
							<td>${user.sex}</td>
							<td>${user.sex}</td>
							<td>${user.status}</td>
						</tr>




					</c:forEach>


				</table>
			</div>

		</div>
	</div>
</body>
</html>