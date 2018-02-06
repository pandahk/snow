<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		
$("#uuadd").click(function(){
			
			
			var roleCode=$("#roleCode").val();
			if (roleCode==null||roleCode=="") {
				$("#errorMsg font").html("请输入角色编号");
				return false;
			}
			var roleName=$("#roleName").val();
			if (roleName==null||roleName=="") {
				$("#errorMsg font").html("请输入角色名字");
				return false;
			}
			var status=$("#status").val();
			if (status==null||status=="") {
				$("#errorMsg font").html("请输入是否有效");
				return false;
			}
			 $.ajax({
			       url: "${ctx}/roleAdd",
			       type: "get",
			       data:$("#addForm").serialize(),
			       dataType: "json",
			       success: function(data) {
			    	   alert(data);
			    	   window.location.reload();
			       	 }
			       	
			      }); 
	
			
		});
		
$("#rupdate").click(function(){
	
	
	var roleCode=$("#proleCode").val();
	if (roleCode==null||roleCode=="") {
		$("#perrorMsg font").html("请输入角色编号");
		return false;
	}
	var roleName=$("#proleName").val();
	if (roleName==null||roleName=="") {
		$("#perrorMsg font").html("请输入角色名字");
		return false;
	}
	var status=$("#pstatus").val();
	if (status==null||status=="") {
		$("#perrorMsg font").html("请输入是否有效");
		return false;
	}
	 $.ajax({
	       url: "${ctx}/roleUp",
	       type: "get",
	       data:$("#updateForm").serialize(),
	       dataType: "json",
	       success: function(data) {
	    	   alert(data);
	    	   window.location.reload();
	       	 }
	       	
	      }); 

	
});
		
$("#roleDelContrim").click(function(){
	var id=$("#roll").val();
	$.ajax({
	       url: "${ctx}/roleDel",
	       type: "get",
	       data:{id:id},
	       dataType: "json",
	       success: function(data) {
	    	   alert(data);
	    	   window.location.reload();
	       	 }
	       	
	      });
	
});
		
});
		 
	function roleInit(id){
		$("#roll").val(id);
	}
	function roleDel(id){
		$.ajax({
	       url: "${ctx}/roleDel",
	       type: "get",
	       data:{id:id},
	       dataType: "json",
	       success: function(data) {
	    	   alert(data);
	    	   window.location.reload();
	       	 }
	      });
		
	}	
	function up(id,roleCode,roleName,status){
		$('#pid').val(id);
		$('#proleCode').val(roleCode);
		$('#proleName').val(roleName);
		$('#pstatus').val(status);
		
	}
	
</script>
<!-- http://www.phperz.com/article/16/1125/309301.html -->
</head>
<body>


	<div class="container">
		<h1>Snow</h1>

		<div id="content" class="row-fluid">
			<jsp:include page="../common/LeftMenu.jsp"></jsp:include>
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
					<form class="form-horizontal" role="form" action="${ctx}/user">
						<fieldset>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="ds_host">角色编号</label>
								<div class="col-sm-3">
									<input class="form-control" id="ds_host" type="text"
										placeholder="192.168.1.161" name="account"/>
								</div>
								<label class="col-sm-1 control-label" for="ds_name">角色名</label>
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
										data-toggle="modal" data-target="#roleAdd">新建</button>
								</div>
							</div>
						</fieldset>
					</form>
					<table class="table table-bordered table-hover ">
						<tbody>
							<tr>
								<th>序号</th>
								<th>角色编号</th>
								<th>角色名</th>
								<th>标识</th>
								<th>创建时间</th>
								<th>更新时间</th>
								<th>操作</th>
							</tr>
						</tbody>
						<c:forEach items="${page.list}" var="role">

							<tr>
								<td>${role.id}</td>
								<td>${role.roleCode}</td>
								<td>${role.roleName}</td>
								<td>${role.status}</td>
								<td><fmt:formatDate value="${role.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
								<td><fmt:formatDate value="${role.updateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
								<td><button type="button" onclick="up('${role.id}',
								'${role.roleCode}','${role.roleName}','${role.status}')" 
								class="btn btn-default"
										data-toggle="modal" data-target="#myModal">修改</button>
										
									<button id="userDel" onclick="roleInit('${role.id}')" 
									type="button" class="btn btn-default"
									data-toggle="modal" data-target="#roleDel">删除</button></td>
							</tr>




						</c:forEach>


					</table>
					<div style="width: 100%; margin: 0 auto; padding-left: 30%;">

						<ul class="pagination pagination-lg ">

							
							<li><c:if test="${page.pageNum>1 }">
									<a
										href="${pageContext.request.contextPath }/role?page=${page.pageNum-1}&rows=10">上一页</a>
								</c:if></li>
							<li><a
								href="${pageContext.request.contextPath }/role?page=${1}&rows=10">首页</a></a></li>
							<c:forEach begin="1" end="${page.pages }" step="1" var="i">
								<c:if test="${page.pageNum==i }">
									<li><a
										href="${pageContext.request.contextPath }/role?page=${i}&rows=10"><font
											color="#ff0000">${i}</font></a></li>
								</c:if>
								<c:if test="${page.pageNum!=i }">
									<li><a
										href="${pageContext.request.contextPath }/role?page=${i}&rows=10">${i}</a></li>
								</c:if>
							</c:forEach>
							<li><c:if test="${page.pageNum< page.pages }">
									<a
										href="${pageContext.request.contextPath }/role?page=${page.pageNum+1}&rows=10">下一页</a>
								</c:if></li>
							<li><a
								href="${pageContext.request.contextPath }/role?page=${page.pages}&rows=10">末页</a></li>
							
							
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>
<div class="modal fade" id="roleDel" tabindex="-1" role="dialog"
		aria-labelledby="useAddLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">角色删除</h4>
				</div>
					<div class="modal-body">
                 

						<fieldset>
							<div class="form-group">
							    <input type="hidden" id="roll"/>
								<label class="col-md-6 control-label" for="">你确定要删除吗?</label>
							</div>
						</fieldset>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button id="roleDelContrim" type="button" class="btn btn-primary">确定</button>
					</div>
			</div>
			<!-- /.modal-content -->
		</div>
	</div>
	<!-- /.modal -->

	<!-- 模态框（Modal）add   action="${ctx}/userUpdate"-->
	<div class="modal fade" id="roleAdd" tabindex="-1" role="dialog"
		aria-labelledby="useAddLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">角色新建</h4>
				</div>
				<form id="addForm" class="form-horizontal" role="form" >                                                                                                   
					<div class="modal-body">


						<fieldset>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="roleCode">角色编号</label>
								<div class="col-sm-4">
									<input class="form-control" id="roleCode" type="text"
										name="roleCode" placeholder="请输入角色编号" />
								</div>
								<label class="col-sm-2 control-label" for="roleName">角色名</label>
								<div class="col-sm-4">
									<input class="form-control" id="roleName" type="text"
										name="roleName" placeholder="请输入角色名" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="status">标识</label>
								<div class="col-sm-4">
									<input class="form-control" id="status" type="text"
										 name="status" placeholder="请输入标识" />
								</div>
								
							</div>
						</fieldset>

					</div>
					<div class="modal-footer">
					    <label id="errorMsg" class="col-sm-4 control-label" ><font
											color="#ff0000"></font></label>
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button id="uuadd" type="button" class="btn btn-primary">提交更改</button>
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
					<h4 class="modal-title" id="myModalLabel">角色更新</h4>
				</div>
				<form id="updateForm" class="form-horizontal" role="form" >                                                                                                   
					<div class="modal-body">
					<input class="form-control" id="pid" name="pid" type="hidden" />

						<fieldset>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="proleCode">角色编号</label>
								<div class="col-sm-4">
									<input class="form-control" id="proleCode" type="text"
										name="proleCode" placeholder="请输入角色编号" />
								</div>
								<label class="col-sm-2 control-label" for="proleName">角色名</label>
								<div class="col-sm-4">
									<input class="form-control" id="proleName" type="text"
										name="proleName" placeholder="请输入角色名" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="pstatus">标识</label>
								<div class="col-sm-4">
									<input class="form-control" id="pstatus" type="text"
										 name="pstatus" placeholder="请输入标识" />
								</div>
								
							</div>
						</fieldset>

					</div>
					<div class="modal-footer">
					    <label id="perrorMsg" class="col-sm-4 control-label" ><font
											color="#ff0000"></font></label>
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button id="rupdate" type="button" class="btn btn-primary">提交更改</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
</html>