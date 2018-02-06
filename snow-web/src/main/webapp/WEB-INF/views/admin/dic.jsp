<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<style type="text/css">
.table th, .table td {
	text-align: center;
	vertical-align: middle !important;
}

b {
	background: #D9EDF7;
}

.bg {
	background: #D9EDF7
}
</style>
<script type="text/javascript">
	
	
</script>
<!-- http://www.phperz.com/article/16/1125/309301.html -->
</head>
<body>


	<div class="container">
		<h1>Snow</h1>

		<div id="content" class="row-fluid">
			<jsp:include page="../common/LeftMenu.jsp"></jsp:include>
			<div class="col-md-2">
				<!-- <h3 class="h btn btn-default">基础菜单</h3> -->
				<ul class="nav  nav-pills nav-stacked " style="text-align: center;">
					<li class="">字典类别
						<ul class="p nav nav-pills nav-stacked">
						<c:forEach items="${glist}" var="g">
							<li>${g.groupName}</li>
						</c:forEach>
						</ul></li>
				</ul>
			</div>
			<div class="row">
				


				<div class="col-md-7 table-responsive">
					<form class="form-horizontal" role="form" action="${ctx}/user">
						<fieldset>
							<div class="form-group">
								<label class="col-sm-1 control-label" for="ds_host">编号</label>
								<div class="col-sm-3">
									<input class="form-control" id="ds_host" type="text"
										placeholder="192.168.1.161" name="account"/>
								</div>
								<label class="col-sm-1 control-label" for="ds_name">分类</label>
								<!-- <div class="col-sm-3">
                             <input class="form-control" id="ds_name" type="text" placeholder="msh"/>
                          </div> -->
								<div class="col-sm-3">
									<select id="disabledSelect"  class="form-control">
										<option value="1">上海福州路</option>
										<option value="2">上海虹桥路</option>
									</select>
								</div>
								<div class="btn-group col-sm-3">
									<button type="submit" class="col-sm-5 btn btn-primary">查询</button>
									<button type="button" class="col-sm-5 btn btn-primary"
										data-toggle="modal" data-target="#useAdd">新建</button>
								</div>
							</div>
						</fieldset>
					</form>
					<table class="table table-bordered table-hover ">
						<tbody>
							<tr>
								<th>序号</th>
								<th>编号</th>
								<th>名称</th>
								<th>父编号</th>
								<th>字典分类</th>
								<th>是否有效</th>
								<th>操作</th>
							</tr>
						</tbody>
						<c:forEach items="${page.list}" var="i">

							<tr>
								<td>${i.id}</td>
								<td>${i.itemCode}</td>
								<td>${i.itemName}</td>
								<td>${i.itemParentCode}</td>
								<td>${i.groupCode}</td>
								<td>${i.status}</td>
								<td><button type="button" onclick="" 
								class="btn btn-default"
										data-toggle="modal" data-target="#myModal">修改</button>
									<button id="userDel" onclick="" type="button" class="btn btn-default">删除</button></td>
							</tr>




						</c:forEach>


					</table>
					<div style="width: 100%; margin: 0 auto; padding-left: 30%;">

						<ul class="pagination pagination-lg ">

							
							<li><c:if test="${page.pageNum>1 }">
									<a
										href="${pageContext.request.contextPath }/dic?page=${page.pageNum-1}&rows=10">上一页</a>
								</c:if></li>
							<li><a
								href="${pageContext.request.contextPath }/dic?page=${1}&rows=10">首页</a></a></li>
							<c:forEach begin="1" end="${page.pages }" step="1" var="i">
								<c:if test="${page.pageNum==i }">
									<li><a
										href="${pageContext.request.contextPath }/dic?page=${i}&rows=10"><font
											color="#ff0000">${i}</font></a></li>
								</c:if>
								<c:if test="${page.pageNum!=i }">
									<li><a
										href="${pageContext.request.contextPath }/dic?page=${i}&rows=10">${i}</a></li>
								</c:if>
							</c:forEach>
							<li><c:if test="${page.pageNum< page.pages }">
									<a
										href="${pageContext.request.contextPath }/dic?page=${page.pageNum+1}&rows=10">下一页</a>
								</c:if></li>
							<li><a
								href="${pageContext.request.contextPath }/dic?page=${page.pages}&rows=10">末页</a></li>
							
							
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>