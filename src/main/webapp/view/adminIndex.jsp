<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>XXXXX大学图书馆管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <jsp:include page="/common/head.jsp" flush="true" />
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
 			<form class="navbar-form pull-right" action="queryBook" method="post">
             	<h2>查询书籍信息</h2>
             
              <input class="span2" type="text" placeholder="书名关键字" name="keyWord">
              <input class="span2" type="hidden" name="showPage" value="1">
                
             
              <input type="submit" class="btn" value="查询">
            </form>
    
   			 <form class="navbar-form pull-right" action="queryUser" method="post">
             	<h2>查询用户信息</h2>
             <input class="sqan2" type="hidden" value="1" name="showPage"><%--默认的显示页数
              --%><input class="span2" type="text"  placeholder="用户名关键字" name="keyWord">
              <input type="submit" class="btn" value="查询">
            </form>
  </body>
  <jsp:include page="/common/foot.jsp" flush="true" />
</html>
