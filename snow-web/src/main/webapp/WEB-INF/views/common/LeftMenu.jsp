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
<script type="text/javascript">

$(function(){
	
	
	//$(".p li").click(function(){
	//	$(".p li").addClass("bg");
		
		var ll=window.location.href.split('/').pop();
		if (ll=='user') {
			$(".p li:first").addClass("bg");
		}
		if (ll=='role') {
			$(".p li:eq(1)").addClass("bg");
		}
		if (ll=='org') {
			$(".p li:eq(2)").addClass("bg").css({'background':'#D9EDF7'});
		}
		if (ll=='menu') {
			$(".p li:eq(3)").addClass("bg");
		}
		
	//});
		$(".h").click(function() {
			$(".p").toggle();

		});
		$(".h11").click(function() {
			$(".p11").toggle();
		});
	
});

</script>


</head>
<div class="col-md-2">
				<!-- <h3 class="h btn btn-default">基础菜单</h3> -->
				<ul class="nav  nav-pills nav-stacked " style="text-align: center;">
						<li class="active"><a href='#' class="h">基础菜单</a>
							<ul class="p nav nav-pills nav-stacked">
								<li ><a href='${ctx}/user'>用户管理</a></li>
								<li ><a href='${ctx}/role'>角色管理</a></li>
								<li><a href='${ctx}/org'>机构管理</a></li>
								<li><a href='${ctx}/menu'>菜单管理</a></li>
								<li><a href='${ctx}/dic'>字典管理</a></li>
							</ul>
						</li>
						<li class="active "><a href='#' class="h11">资产管理</a>
							<ul class="p11 nav nav-pills nav-stacked">
								<li><a href='#'>用户管理</a></li>
								<li><a href='#'>用户管理</a></li>
								<li><a href='#'>用户管理</a></li>
								<li><a href='#'>用户管理</a></li>
							</ul>
						</li>

				</ul>
			</div>
			</html>