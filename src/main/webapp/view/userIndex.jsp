<%@ page language="java" import="java.util.*,model.User"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>XXXXX某工业大学图书馆管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<jsp:include page="/common/head.jsp" flush="true" />
</head>
<body>
<jsp:include page="/common/head-user.jsp" flush="true" />
	<form class="navbar-form pull-right" action="queryBook" method="get">
		<h2>查询书籍信息</h2>
		<input class="span2" type="text" placeholder="书名关键字" name="keyWord">
		<input class="span2" type="hidden" name="showPage" value="1">
		<input type="submit" class="btn" value="查询">
	</form>
</body>
<jsp:include page="/common/foot.jsp" flush="true" />
</html>
