<%@ page language="java" import="java.util.*,model.User"
	pageEncoding="UTF-8"%>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li class="active"><a href="bookBook">图书预约</a></li>
						<li><a href="returnBookPage?showPage=1">图书归还</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">查询信息 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a
									href="queryUser?showPage=1&keyWord=<%=((User) session.getAttribute("user")).getUsername()%>">个人信息</a></li>
								<li><a href="returnBookPage?showPage=1">借阅信息</a></li>

							</ul></li>
						<li class="active"><a href="logOut">注销登录</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>