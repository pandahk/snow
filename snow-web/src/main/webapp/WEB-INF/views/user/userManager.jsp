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
	$(function() {
		$(".h").click(function() {
			$(".p").toggle();

		});
		$(".h11").click(function() {
			$(".p11").toggle();
		});
		/* $(".p li").click(function() {
			 $(".p li").each(function(){
				 $(this).css({"background":"#FFFFFF","font-weight":"normal"});
				  });
			$(this).css({"background":"#D9EDF7","font-weight":"bold"});

		}); */
		
		
	
		
		
		
		
	});
	
	function page(page,rows){
		/*  $.ajax({
		       url: "${ctx}/user",
		       type: "POST",
		       data: {
					pageNumber: rows,
					pageSize: page,
		       },
		       success: function(data, status) {
		    	   
		       	 }
		      }); */
		 
		 window.location.href="${ctx}/user?rows="+rows+"&page="+page;
		
	}
</script>
<!-- http://www.phperz.com/article/16/1125/309301.html -->
</head>
<body>


	<div class="container">
		<h1>Snow</h1>

		<div id="content" class="row-fluid">
			<div class="col-md-2">
				<!-- <h3 class="h btn btn-default">基础菜单</h3> -->
				<ul class="nav  nav-pills nav-stacked " style="text-align: center;">
					<li class="active"><a href='#' class="h">基础菜单</a>
						<ul class="p nav nav-pills nav-stacked">
							<li class="bg"><a href='${ctx}/user'>用户管理</a></li>
							<li><a href='${ctx}/user'>角色管理</a></li>
							<li><a href='#'>机构管理</a></li>
							<li><a href='#'>菜单管理</a></li>
						</ul></li>
					<li class="active "><a href='#' class="h11">资产管理</a>
						<ul class="p11 nav nav-pills nav-stacked">
							<li><a href='#'>用户管理</a></li>
							<li><a href='#'>角色管理</a></li>
							<li><a href='#'>机构管理</a></li>
							<li><a href='#'>菜单管理</a></li>
						</ul></li>

				</ul>
			</div>
			<div class="row">
				<!-- <form class="form-inline">
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
					<button type="submit" class="btn btn-primary">查询</button>
				</form> -->


				<div class="col-md-9 table-responsive">
					<form class="form-horizontal" role="form">
						<fieldset>
							<div class="form-group">
								<label class="col-sm-1 control-label" for="ds_host">账户</label>
								<div class="col-sm-3">
									<input class="form-control" id="ds_host" type="text"
										placeholder="192.168.1.161" />
								</div>
								<label class="col-sm-1 control-label" for="ds_name">组织</label>
								<!-- <div class="col-sm-3">
                             <input class="form-control" id="ds_name" type="text" placeholder="msh"/>
                          </div> -->
								<div class="col-sm-3">
									<select id="disabledSelect" class="form-control">
										<option>上海福州路</option>
										<option>上海虹桥路</option>
									</select>
								</div>
								<div class="btn-group col-sm-3">
									<button type="button" class="col-sm-5 btn btn-primary">查询</button>
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
								<th>账户</th>
								<th>用户名</th>
								<th>性别</th>
								<th>组织</th>
								<th>是否有效</th>
								<th>操作</th>
							</tr>
						</tbody>
						<c:forEach items="${page.list}" var="user">

							<tr>
								<td>${user.id}</td>
								<td>${user.account}</td>
								<td>${user.name}</td>
								<td>${user.sex}</td>
								<td>${user.sex}</td>
								<td>${user.status}</td>
								<td><button type="button" class="btn btn-default"
										data-toggle="modal" data-target="#myModal">修改</button>
									<button type="button" class="btn btn-default">删除</button></td>
							</tr>




						</c:forEach>


					</table>
					<div style="width: 100%; margin: 0 auto; padding-left: 30%;">

						<ul class="pagination pagination-lg ">

							
							<li><c:if test="${page.pageNum>1 }">
									<a
										href="${pageContext.request.contextPath }/user?page=${page.pageNum-1}&rows=10">上一页</a>
								</c:if></li>
							<li><a
								href="${pageContext.request.contextPath }/user?page=${1}&rows=10">首页</a></a></li>
							<c:forEach begin="1" end="${page.pages }" step="1" var="i">
								<c:if test="${page.pageNum==i }">
									<li><a
										href="${pageContext.request.contextPath }/user?page=${i}&rows=10"><font
											color="#ff0000">${i}</font></a></li>
								</c:if>
								<c:if test="${page.pageNum!=i }">
									<li><a
										href="${pageContext.request.contextPath }/user?page=${i}&rows=10">${i}</a></li>
								</c:if>
							</c:forEach>
							<li><c:if test="${page.pageNum< page.pages }">
									<a
										href="${pageContext.request.contextPath }/user?page=${page.pageNum+1}&rows=10">下一页</a>
								</c:if></li>
							<li><a
								href="${pageContext.request.contextPath }/user?page=${page.pages}&rows=10">末页</a></li>
							
							
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>


	<!-- 模态框（Modal）add -->
	<div class="modal fade" id="useAdd" tabindex="-1" role="dialog"
		aria-labelledby="useAddLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">用户新建</h4>
				</div>
				<form class="form-horizontal" role="form">
					<div class="modal-body">


						<fieldset>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="ds_host">账户</label>
								<div class="col-sm-4">
									<input class="form-control" id="ds_host" type="text"
										placeholder="192.168.1.161" />
								</div>
								<label class="col-sm-2 control-label" for="ds_name">用户名</label>
								<div class="col-sm-4">
									<input class="form-control" id="ds_name" type="text"
										placeholder="msh" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="ds_username">性别</label>
								<div class="col-sm-4">
									<input class="form-control" id="ds_username" type="text"
										placeholder="root" />
								</div>
								<label class="col-sm-2 control-label" for="ds_password">组织</label>
								<!--  <div class="col-sm-4">
                             <input class="form-control" id="ds_password" type="password" placeholder="123456"/>
                          </div> -->
								<div class="col-sm-4">
									<select id="disabledSelect" class="form-control">
										<option>上海福州路</option>
										<option>上海虹桥路</option>
									</select>
								</div>
							</div>
						</fieldset>
						<!--  <fieldset>
                         <legend>选择相关表</legend>
                        <div class="form-group">
                           <label for="disabledSelect"  class="col-sm-2 control-label">表名</label>
                           <div class="col-sm-10">
                              <select id="disabledSelect" class="form-control">
                                 <option>禁止选择</option>
                                 <option>禁止选择</option>
                              </select>
                           </div>
                        </div>
                    </fieldset> -->






					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button type="button" class="btn btn-primary">提交更改</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
	</div>
	<!-- /.modal -->
	<!-- 模态框（Modal）修改 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">用户更新</h4>
				</div>
				<form class="form-horizontal" role="form">
					<div class="modal-body">


						<fieldset>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="ds_host">账户</label>
								<div class="col-sm-4">
									<input class="form-control" id="ds_host" type="text"
										placeholder="192.168.1.161" />
								</div>
								<label class="col-sm-2 control-label" for="ds_name">用户名</label>
								<div class="col-sm-4">
									<input class="form-control" id="ds_name" type="text"
										placeholder="msh" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="ds_username">性别</label>
								<div class="col-sm-4">
									<input class="form-control" id="ds_username" type="text"
										placeholder="root" />
								</div>
								<label class="col-sm-2 control-label" for="ds_password">组织</label>
								<!--  <div class="col-sm-4">
                             <input class="form-control" id="ds_password" type="password" placeholder="123456"/>
                          </div> -->
								<div class="col-sm-4">
									<select id="disabledSelect" class="form-control">
										<option>上海福州路</option>
										<option>上海虹桥路</option>
									</select>
								</div>
							</div>
						</fieldset>
						<!--  <fieldset>
                         <legend>选择相关表</legend>
                        <div class="form-group">
                           <label for="disabledSelect"  class="col-sm-2 control-label">表名</label>
                           <div class="col-sm-10">
                              <select id="disabledSelect" class="form-control">
                                 <option>禁止选择</option>
                                 <option>禁止选择</option>
                              </select>
                           </div>
                        </div>
                    </fieldset> -->






					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button type="button" class="btn btn-primary">提交更改</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
</html>