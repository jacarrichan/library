<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>广东某工业大学图书馆管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="resources/css/bootstrap-responsive.min.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="//cdnjs.bootcss.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="../assets/ico/favicon.png">
  </head>

  <body>
	

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        
          <div class="nav-collapse collapse">
            <ul class="nav">
               <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">用户管理 <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="register">增加用户</a></li>
                  <li><a href="deleteUser">删除用户</a></li>
                   <li><a href="modifyUser">修改用户信息</a></li>
                 
                </ul>
              </li>
              
               <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">书籍管理<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="addBook">增加书籍</a></li>
                  <li><a href="deleteBook">删除书籍</a></li>
                  <li><a href="modifyBookSelect">修改书籍</a></li>
                 
                </ul>
              </li>
              
            <li class="active"><a href="logOut">注销登录</a></li>
            </ul>
           
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
 			<form class="navbar-form pull-right" action="queryBook" method="get">
             	<h2>查询书籍信息</h2>
             
              <input class="span2" type="text" placeholder="书名关键字" name="keyWord">
              <input class="span2" type="hidden" name="showPage" value="1">
                
             
              <input type="submit" class="btn" value="查询">
            </form>
    
   			 <form class="navbar-form pull-right" action="queryUser">
             	<h2>查询用户信息</h2>
             <input class="sqan2" type="hidden" value="1" name="showPage"><%--默认的显示页数
              --%><input class="span2" type="text"  placeholder="用户名关键字" name="keyWord">
              <input type="submit" class="btn" value="查询">
            </form>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="//cdnjs.bootcss.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>

  </body>
</html>
