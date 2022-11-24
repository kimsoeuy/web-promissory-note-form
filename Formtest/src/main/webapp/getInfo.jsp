<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ include file="dbconn.jsp"%>
<%
	String id = (String)session.getAttribute("id");
	String name = (String)session.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<style>
.con_wrap{width: 1024px;
		margin:0 auto;}

.header{ width:1980px;
			 height:80px;
			 background-color: white;
			 border-bottom: 1px solid rgba(221,221,221,0.3);
			 }
	.header_wrap{width: 1024px;
				 margin-left:auto;
				 margin-right:auto;
				 z-index:100;}
	.header_wrap .logo {float:left}
	.header_wrap .logo img{margin-top: 5px;}
	.header_wrap .nav {float:right;
					   line-height: 64px;
					   }
	.nav { }
	.nav ul{}
	.nav ul li{ display:inline-block}
	.nav ul li a{z-index:100}
	
	
	
	<!--메뉴바 .on-->
		.dispalynone{
			width:30px;}
		.on_{	
			position:absolute;	
			top:-70px;
			right: 0;
			z-index:200;
			display:none;
			
		}
		.on_>li{
		list-style: none;
		border:1px solid #e2e2e2;
		width:90px;
		height:40px;
		text-align:center;
		background-color:white;
		line-height: 38px;
		
		}
		.on_>li>a{
		margin:0;
		padding:0;
		}
		<!--content-->
		
		
</style>
<body>
	<!-- header -->
	<div class="header">
		<div class="header_wrap">		
			<div class="logo">
				<img src="img/logo.png" alt="" />
			</div>
			<div class="nav">
				<ul>
					<li><a class="navbar-brand" href="./index.jsp">Home</a></li>
					<li><a class="navbar-brand" href="#"><%=id %>(<%=name %>)님 안녕하세요</a></li> <!-- 로그인 성공시 index.jsp로이동 -->
					<li><a class="navbar-brand" href="./makeform.jsp">차용증만들기</a></li>
					<li><a class="navbar-brand" href="javascript:doDisplay();"><img src="./img/headerPannel.png"/></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 내용 -->
	<div class="con_wrap">
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">정보 수정</h1>
		</div>
	</div>
	<%

		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from member where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		rs=pstmt.executeQuery();
		
		if(rs.next()){
			
	%>
	<div class="container">
	
		<form name ="newMember" action="./processUpdateMember.jsp" method="post" class="form-horizontal" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input type="text" name="id" class="form-control" value="<%=rs.getString("id") %>">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">비밀번호</label>
				<div class ="col-sm-3">
					<input type="text" name="pw" class="form-control" value="<%=rs.getString("pw") %>">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이름</label>
				<div class ="col-sm-3">
					<input type="text" name="name" class="form-control" value="<%=rs.getString("name") %>">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">생년월일</label>
				<div class ="col-sm-3">
					<input type="text" name="birth" class="form-control" value="<%=rs.getString("birth") %>">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">전화번호</label>
				<div class ="col-sm-3">
					<input type="text" name="phonenumber" class="form-control" value="<%=rs.getString("phone_number") %>">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class ="col-sm-3">
					<input type="text" name="address" class="form-control" value="<%=rs.getString("address") %>">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" value="수정" class="btn btn-primary"  >
					
				</div>
			</div>
		</form>
	</div>
<% }
	rs.close();
	pstmt.close();
	conn.close();
	%>
	</div>
<body>

</body>
</html>