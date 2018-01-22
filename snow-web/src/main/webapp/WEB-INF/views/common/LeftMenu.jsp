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
<style type="text/css">
.table th, .table td {
	text-align: center;
	vertical-align: middle !important;
}
b{
background:#D9EDF7;
}
</style>
</head>
<div class="col-md-2">
				<!-- <h3 class="h btn btn-default">基础菜单</h3> -->
				<ul class="nav  nav-pills nav-stacked ">
						<li class="active"><a href='#' class="h">基础菜单</a>
							<ul class="p nav nav-pills nav-stacked">
								<li ><a href='${ctx}/user'>用户管理</a></li>
								<li ><a href='${ctx}/user'>角色管理</a></li>
								<li><a href='#'>机构管理</a></li>
								<li><a href='#'>菜单管理</a></li>
							</ul>
						</li>
						<li class="active "><a href='#' class="h11">资产管理</a>
							<ul class="p11 nav nav-pills nav-stacked">
								<li><a href='#'>用户管理</a></li>
								<li><a href='#'>角色管理</a></li>
								<li><a href='#'>机构管理</a></li>
								<li><a href='#'>菜单管理</a></li>
							</ul>
						</li>

				</ul>
			</div>
			</html>