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
vertical-align: middle!important;
}

</style>
<script type="text/javascript">
	$(function() {
		$(".h").click(function() {
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
				<form class="form-horizontal" role="form">
                    <fieldset>
                       <div class="form-group">
                          <label class="col-sm-1 control-label" for="ds_host">账户</label>
                          <div class="col-sm-3">
                             <input class="form-control" id="ds_host" type="text" placeholder="192.168.1.161"/>
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
                           <button type="button" class="col-sm-5 btn btn-primary" data-toggle="modal" data-target="#useAdd">新建</button>
                           </div>
                       </div>
                       </fieldset>
                       </form>
			</div>
			<div class="col-md-9 table-responsive">

				<table class="table table-bordered table-hover ">
					<tbody>
						<tr >
							<th>序号</th>
							<th>账户</th>
							<th>用户名</th>
							<th>性别</th>
							<th>组织</th>
							<th>是否有效</th>
							<th>操作</th>
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
							<td><button type="button" class="btn btn-default"
									data-toggle="modal" data-target="#myModal">修改</button>
								<button type="button" class="btn btn-default">删除</button></td>
						</tr>




					</c:forEach>


				</table>
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
                             <input class="form-control" id="ds_host" type="text" placeholder="192.168.1.161"/>
                          </div>
                          <label class="col-sm-2 control-label" for="ds_name">用户名</label>
                          <div class="col-sm-4">
                             <input class="form-control" id="ds_name" type="text" placeholder="msh"/>
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">性别</label>
                          <div class="col-sm-4">
                             <input class="form-control" id="ds_username" type="text" placeholder="root"/>
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
                             <input class="form-control" id="ds_host" type="text" placeholder="192.168.1.161"/>
                          </div>
                          <label class="col-sm-2 control-label" for="ds_name">用户名</label>
                          <div class="col-sm-4">
                             <input class="form-control" id="ds_name" type="text" placeholder="msh"/>
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">性别</label>
                          <div class="col-sm-4">
                             <input class="form-control" id="ds_username" type="text" placeholder="root"/>
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