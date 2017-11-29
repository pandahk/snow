<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>登陆页面</title>  
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" rel="stylesheet" href="${ctx}/static/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${ctx}/static/css/bootstrap.css.map" />
<link type="text/css" rel="stylesheet" href="${ctx}/static/css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet" href="${ctx}/static/css/bootstrap-theme.min.css.map" />
<script type="text/javascript" src="${ctx}/static/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/bootstrap.min.js"></script>

 
</head>
<body style="background:url('${ctx}/static/images/login_bg.jpg') repeat-x scroll center center;">
 <div class="container" style="padding: 150px;width: 700px;">
  <c:url var="loginUrl" value="/login" />
        		<form action="${loginUrl}" method="post" class="form-horizontal">
		            <c:if test='${authenticationFailureResult != null}'>
		                <div class="alert alert-danger">
		                    <p>Invalid user name and password.</p>
		                </div>
		            </c:if>
		            <div class="input-group input-sm ">
		                <label class="input-group-addon" for="username"><b class="fa fa-user">用户名</b></label>
		                <input type="text" class="form-control" id="username" name="username">
		            </div>
		            <div class="input-group input-sm">
		                <label class="input-group-addon" for="password"><b class="fa fa-lock">密&nbsp;&nbsp;&nbsp;码</b></label> 
		                <input type="password" class="form-control" id="password" name="password">
		            </div>
            		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <div class="form-actions">
                        <input type="submit"
                            class="btn btn-block btn-primary btn-default" value="Log in">
                    </div>
            	</form>
</div>


</body>
</html>
