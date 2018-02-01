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
 <strong>${user}</strong>, 这是欢迎页面。<br/>

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

	
</body>
</html>