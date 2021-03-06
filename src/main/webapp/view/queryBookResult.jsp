<%@ page language="java"
	 pageEncoding="UTF-8"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>所有图书信息</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
        text-align:center;
        margin-left:auto;
        margin-right:auto;
        width:50%;
      }
      </style>
      <jsp:include page="/common/head.jsp" flush="true" />
</head>

<body>
	<h1>查询结果</h1>
	<table border=1 width=50%  class="table  table-condensed table-bordered">
		<tr class="success">
			<td>索取号</td>
			<td>书名</td>
			<td>作者</td>
			<td>出版社</td>
			<td>出版时间</td>
			<td>馆藏总量</td>
			<td>剩余</td>
		</tr>
		<c:forEach var="book" items="${books}">


			<tr>
				<td>${book.id}</td>
				<td>${book.bookname}</td>
				<td>${book.authod}</td>
				<td>${book.publishCompany}</td>
				<td>${book.publishTime}</td>
				<td>${book.totalAmount}</td>
				<td>${book.remainer}</td>
				<td><a href="bookBookSolver?bookid=${book.id}">借书</a></td> 
		  </tr>
		</c:forEach>
	</table>


	<br>
	<br>
	<a href="queryBook?keyWord=${keyWord}&showPage=1">第一页</a>
	<a href="queryBook?keyWord=${keyWord}&showPage=${pageInfo.showPage-1}">上一页</a>
	<a href="queryBook?keyWord=${keyWord}&showPage=${pageInfo.showPage+1}">下一页</a>
	<a href="queryBook?keyWord=${keyWord}&showPage=${pageInfo.pageNum}">最后一页</a>
	<br>
	
	<form action="queryBook">
		<input type="hidden" name="keyWord" value="${keyWord}">
		<input type="text" name="showPage">
	 
		<input type="submit" value="确定">
	</form>
	<br>
	<a href="adminIndex">返回主界面</a>
	<br>
</body>
</html>
