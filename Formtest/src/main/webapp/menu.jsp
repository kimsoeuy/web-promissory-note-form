<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<style>
	.header{ width:1980px;
			 height:80px;
			 background-color: white;
			 border-bottom: 1px solid rgba(221,221,221,0.3);}
	.header_wrap{width: 1024px;
				 margin-left:auto;
				 margin-right:auto;
				 z-index:100;}
	.header_wrap .logo {float:left}
	.header_wrap .logo img{margin-top: 5px;}
	.header_wrap .nav {float:right;
					   line-height: 64px;
					   }
	.nav {}
	.nav ul{}
	.nav ul li{ display:inline-block}
	.nav ul li a{z-index:100}
</style>
	<div class="header">
		<div class="header_wrap">		
			<div class="logo">
				<img src="img/logo.png" alt="" />
			</div>
			<div class="nav">
				<ul>
					<li><a class="navbar-brand" href="./welcome.jsp">Home</a></li>
					<li><a class="navbar-brand" href="./login_Form.jsp">로그인</a></li> <!-- 로그인 성공시 index.jsp로이동 -->
					<li><a class="navbar-brand" href="./member.jsp">회원가입</a></li><!-- 회원가입 성공시 index.jsp로이동 -->
					<li><a class="navbar-brand" href="./makeform.jsp">차용증만들기</a></li>
				</ul>
			</div>
		</div>
	</div>