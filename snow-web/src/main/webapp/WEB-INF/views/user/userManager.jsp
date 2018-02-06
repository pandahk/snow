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
		
		/* $(".p li").click(function() {
			 $(".p li").each(function(){
				 $(this).css({"background":"#FFFFFF","font-weight":"normal"});
				  });
			$(this).css({"background":"#D9EDF7","font-weight":"bold"});

		}); */
		
		
		$("#uuadd").click(function(){
			
			
			var account=$("#account").val();
			if (account==null||account=="") {
				$("#errorMsg font").html("请输入账户");
				return false;
			}
			var name=$("#name").val();
			if (name==null||name=="") {
				$("#errorMsg font").html("请输入用户名");
				return false;
			}
			var sex=$("#sex").val();
			if (sex==null||sex=="") {
				$("#errorMsg font").html("请输入性别");
				return false;
			}
			var orgId=$("#orgId").val();
			if (orgId==null||orgId=="") {
				$("#errorMsg font").html("请输入组织");
				return false;
			}
			var status=$("#status").val();
			if (status==null||status=="") {
				$("#errorMsg font").html("请输入是否有效");
				return false;
			}
			 $.ajax({
			       url: "${ctx}/userAdd",
			       type: "get",
			       data:$("#addForm").serialize(),
			       dataType: "json",
			       success: function(data) {
			    	   alert(data);
			    	   window.location.reload();
			       	 }
			       	
			      }); 
			
			
		});
		
	$("#uuupdate").click(function(){
			
			
			var account=$("#paccount").val();
			if (account==null||account=="") {
				$("#perrorMsg font").html("请输入账户");
				return false;
			}
			var name=$("#pname").val();
			if (name==null||name=="") {
				$("#perrorMsg font").html("请输入用户名");
				return false;
			}
			var sex=$("#psex").val();
			if (sex==null||sex=="") {
				$("#perrorMsg font").html("请输入性别");
				return false;
			}
			var orgId=$("#porgId").val();
			if (orgId==null||orgId=="") {
				$("#perrorMsg font").html("请输入组织");
				return false;
			}
			var status=$("#pstatus").val();
			if (status==null||status=="") {
				$("#perrorMsg font").html("请输入是否有效");
				return false;
			}
			 $.ajax({
			       url: "${ctx}/userUpdate",
			       type: "get",
			       data:$("#updateForm").serialize(),
			       dataType: "json",
			       success: function(data) {
			    	   alert(data);
			    	   window.location.reload();
			       	 }
			       	
			      }); 
			
			
		});
		
		
		
		
		
		
	});
	function userDel(id){
		
		$.ajax({
		       url: "${ctx}/userDel",
		       type: "get",
		       data:{id:id},
		       dataType: "json",
		       success: function(data) {
		    	   alert(data);
		    	   window.location.reload();
		       	 }
		       	
		      });
		
	}
	function userUp(id,account,name,sex,orgId,status){
		$("#pid").val(id);
		$("#pname").val(name);
		$("#paccount").val(account);
		$("#psex").val(sex);
		$("#porgId").val(orgId);
		$("#pstatus").val(status);
		
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
								<label class="col-sm-1 control-label" for="ds_host">账户</label>
								<div class="col-sm-3">
									<input class="form-control" id="ds_host" type="text"
										placeholder="192.168.1.161" name="account"/>
								</div>
								<label class="col-sm-1 control-label" for="ds_name">组织</label>
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
								<td>${user.orgId}</td>
								<td>${user.status}</td>
								<td><button type="button" onclick="userUp('${user.id}'
								,'${user.account}','${user.name}','${user.sex}','${user.orgId}','${user.status}')" 
								class="btn btn-default"
										data-toggle="modal" data-target="#myModal">修改</button>
									<button id="userDel" onclick="userDel('${user.id}')" type="button" class="btn btn-default">删除</button></td>
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


	<!-- 模态框（Modal）add   action="${ctx}/userUpdate"-->
	<div class="modal fade" id="useAdd" tabindex="-1" role="dialog"
		aria-labelledby="useAddLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">用户新建</h4>
				</div>
				<form id="addForm" class="form-horizontal" role="form" >                                                                                                   
					<div class="modal-body">


						<fieldset>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="account">账户</label>
								<div class="col-sm-4">
									<input class="form-control" id="account" type="text"
										name="account" placeholder="请输入账号" />
								</div>
								<label class="col-sm-2 control-label" for="name">用户名</label>
								<div class="col-sm-4">
									<input class="form-control" id="name" type="text"
										name="name" placeholder="用户名" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="sex">性别</label>
								<div class="col-sm-4">
									<input class="form-control" id="sex" type="text"
										 name="sex" placeholder="sex" />
								</div>
								<label class="col-sm-2 control-label" for="orgId">组织</label>
								<!--  <div class="col-sm-4">
                             <input class="form-control" id="ds_password" type="password" placeholder="123456"/>
                          </div> -->
								<div class="col-sm-4">
									<select id="orgId" name="orgId" class="form-control">
										<option value="1">上海福州路</option>
										<option value="2">上海虹桥路</option>
									</select>
								</div>
								</div>
								<div class="form-group">
								<label class="col-sm-2 control-label" for="status">是否有效</label>
								<div class="col-sm-4">
									<input class="form-control" id="status" type="text"
										 name="status" placeholder="status" />
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
					<h4 class="modal-title" id="myModalLabel">用户更新</h4>
				</div>
				<form id="updateForm" class="form-horizontal" role="form" >                                                                                                   
					<div class="modal-body">
					<input class="form-control" id="pid" name="pid" type="hidden" />

						<fieldset>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="paccount">账户</label>
								<div class="col-sm-4">
									<input class="form-control" id="paccount" type="text"
										name="paccount" placeholder="请输入账号" />
								</div>
								<label class="col-sm-2 control-label" for="pname">用户名</label>
								<div class="col-sm-4">
									<input class="form-control" id="pname" type="text"
										name="pname" placeholder="用户名" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="psex">性别</label>
								<div class="col-sm-4">
									<input class="form-control" id="psex" type="text"
										 name="psex" placeholder="sex" />
								</div>
								<label class="col-sm-2 control-label" for="porgId">组织</label>
								<!--  <div class="col-sm-4">
                             <input class="form-control" id="ds_password" type="password" placeholder="123456"/>
                          </div> -->
								<div class="col-sm-4">
									<select id="porgId" name="porgId" class="form-control">
										<option value="1">上海福州路</option>
										<option value="2">上海虹桥路</option>
									</select>
								</div>
								</div>
								<div class="form-group">
								<label class="col-sm-2 control-label" for="pstatus">是否有效</label>
								<div class="col-sm-4">
									<input class="form-control" id="pstatus" type="text"
										 name="pstatus" placeholder="status" />
								</div>
								
							</div>
						</fieldset>

					</div>
					<div class="modal-footer">
					    <label id="perrorMsg" class="col-sm-4 control-label" ><font
											color="#ff0000"></font></label>
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button id="uuupdate" type="button" class="btn btn-primary">提交更改</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
</html>