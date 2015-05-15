<%@ page language="java" import="java.util.*,javax.imageio.*"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>XXXXX某工业大学图书馆管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
    <jsp:include page="/common/head.jsp" flush="true" />
  </head>
  <body>

    <div class="container">

      <form class="form-signin" action="login" method="post">
        <h2 class="form-signin-heading">Please 登录</h2>
        
        
        用户名:<input type="text" class="input-block-level" name="username" value="772929989@qq.com"/>
        密码:<input type="password" class="input-block-level" name="password"  value="123456"/>
        
        <label class="checkbox">
          <select name="authority">
					<option value="user">普通用户</option>
					<option value="admin">管理员</option>
		  </select>
        </label>
        <input class="btn btn-large btn-primary" type="submit" value="登录"><br><br>
        <a href="register" class="btn btn-large btn-primary">注册</a>
        <br><br>
        <c:forEach var="list" items="${verfy}"> 
		${list} <br>
		</c:forEach> 
		
      </form>
	
    </div> <!-- /container -->
  </body>
  <jsp:include page="/common/foot.jsp" flush="true" />
</html>

