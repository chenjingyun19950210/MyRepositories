<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>滴答办公系统-班级修改</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/media/layui/css/layui.css" media="all">
<script type="text/javascript" src="${pageContext.request.contextPath}/media/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/media/layui/layui.js"></script>
</head>
<body>

	<div class="layui-container" style="margin-top: 5px">
		<form class="layui-form" action="${pageContext.request.contextPath}/grade/updateInfo/${grade.id}" method="post">
			<div class="layui-form-item">
				<label class="layui-form-label">班级名称</label>
				<div class="layui-input-block">
					<input type="text" id="f2" lay-verify="name" autocomplete="off"
						 class="layui-input" name="name" value="${grade.name}">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">班级学科</label>
				<div class="layui-input-block">
					<select name="cid" id="cds">
        				 <c:forEach items="${courses}" var="c"> 
	        				 <c:if test="${c.id==grade.cid}">
							 	<option selected="selected" value="${c.id}">${c.name}</option>
							 </c:if>
	        				 	<c:if test="${c.id!=grade.cid}">
							 	<option value="${c.id}">${c.name}</option>
							 </c:if>
        				 </c:forEach>
      				</select>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">班级人数</label>
				<div class="layui-input-block">
					<input type="text" id="f7" lay-verify="name" autocomplete="off"
						 class="layui-input" name="count" value="${grade.count}">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">开班日期</label>
				<div class="layui-input-block">
				 <input type="text" name="createdate" readonly="readonly" id="f4" autocomplete="off" class="layui-input" value="${grade.createdate}">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">班级周期</label>
				<div class="layui-input-block">
					<input type="text" name="week" id="f5" lay-verify="name" autocomplete="off"
						 class="layui-input" value="${grade.week}">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">班级地址</label>
				<div class="layui-input-block">
					<input type="text" name="location" id="f6" lay-verify="name" autocomplete="off"
						class="layui-input" value="${grade.location}">
				</div>
			</div>
		
			<div class="layui-form-item">
				<input class="layui-btn"  style="margin-left: 10%"  type="submit" value="确认修改">
			</div>
		</form>
	</div>
	
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>
		layui.use([ 'form', 'laydate' ],
						function() {
							var form = layui.form, layer = layui.layer, laydate = layui.laydate;

		});
	</script>
</body>
</html>