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
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="${ctx}/static/css/demo.css" type="text/css">
	<link rel="stylesheet" href="${ctx}/static/css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="${ctx}/static/js/ztree/jquery.ztree.core.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/ztree/jquery.ztree.excheck.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/ztree/jquery.ztree.exedit.js"></script>
	<SCRIPT type="text/javascript">
		
		var setting = {
			edit: {
				enable: true,
				showRemoveBtn : true,
				showRenameBtn :true
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				beforeDrag: beforeDrag,
				onRename: onRename
			}
		};

		/* var zNodes =[
			{ id:1, pId:0, name:"父节点 1", open:true},
			{ id:11, pId:1, name:"叶子节点 1-1"},
			{ id:12, pId:1, name:"叶子节点 1-2"},
			{ id:13, pId:1, name:"叶子节点 1-3"},
			{ id:2, pId:0, name:"父节点 2", open:true},
			{ id:21, pId:2, name:"叶子节点 2-1"},
			{ id:22, pId:2, name:"叶子节点 2-2"},
			{ id:23, pId:2, name:"叶子节点 2-3"},
			{ id:3, pId:0, name:"父节点 3", open:true},
			{ id:31, pId:3, name:"叶子节点 3-1"},
			{ id:32, pId:3, name:"叶子节点 3-2"},
			{ id:33, pId:3, name:"叶子节点 3-3"}
		]; */
		
		function org(id,pId,name,open){
			this.id = id;
			this.pId=pId;
			this.name = name;
			this.open=open;
			}
		var mycars = new Array()
		
		var msg='${page}';
		var myobj=eval("(" + msg + ")");
		$.each(myobj,function(i,val){
			var pc=val.orgParentCode;
			if (pc=="") {
				pc=0;
			}
			var open;
			if (pc=="0") {
				open=true;
			}
			var oo=new org(parseInt(val.orgCode),parseInt(pc),val.orgName,open);
		
			mycars.push(oo);
			    })
		
		
		var zNodes =mycars;
		function beforeDrag(treeId, treeNodes) {
			return false;
		}
		
		function setEdit() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			remove = $("#remove").attr("checked"),
			rename = $("#rename").attr("checked"),
			removeTitle = $.trim($("#removeTitle").get(0).value),
			renameTitle = $.trim($("#renameTitle").get(0).value);
			/* zTree.setting.edit.showRemoveBtn = remove;
			zTree.setting.edit.showRenameBtn = rename; */
			zTree.setting.edit.removeTitle = removeTitle;
			zTree.setting.edit.renameTitle = renameTitle;
			
			
			showCode(['setting.edit.showRemoveBtn = ' + remove, 'setting.edit.showRenameBtn = ' + rename,
				'setting.edit.removeTitle = "' + removeTitle +'"', 'setting.edit.renameTitle = "' + renameTitle + '"']);
		}
		function onRename(e, treeId, treeNode, isCancel) {
		
			 $.ajax({
			       url: "${ctx}/roleUpdate",
			       type: "get",
			       data:{
			    	   id:treeNode.id,
			    	   name:treeNode.name,
			    	   pId:treeNode.pId
			       },
			       dataType: "json",
			       success: function(data) {
			    	   alert(data);
			    	   window.location.reload();
			       	 }
			       	
			      }); 
		}
		function showCode(str) {
			var code = $("#code");
			code.empty();
			for (var i=0, l=str.length; i<l; i++) {
				code.append("<li>"+str[i]+"</li>");
			}
		}
		
		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			setEdit();
			/* $("#remove").bind("change", setEdit);
			$("#rename").bind("change", setEdit); */
			$("#removeTitle").bind("propertychange", setEdit)
			.bind("input", setEdit);
			$("#renameTitle").bind("propertychange", setEdit)
			.bind("input", setEdit);
		});
	
	</SCRIPT>
</HEAD>

<BODY>

	<div class="container">
		<h1>Snow</h1>

		<div id="content" class="row-fluid">
			<jsp:include page="../common/LeftMenu.jsp"></jsp:include>
			<div class="row">
				


				<div class="col-md-9 table-responsive">
					<div class="content_wrap">
					<div class="zTreeDemoBackground left">
						<ul id="treeDemo" class="ztree"></ul>
					</div>
					</div>
				</div>
			</div>
		</div>

	</div>


	
	</div>
<!-- <div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	
</div> -->
</BODY>
</HTML>