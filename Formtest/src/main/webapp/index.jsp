<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String id = (String)session.getAttribute("id");
	String name = (String)session.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
	
	
	<!--content-->
	.m_container{ width:1980px;
					height:360px;
	}
	.content1{
		position: relative;
		width: 1024px;
		height: 360px;
		margin-left: 482px;
			  }
	.m_container .content1>.title{
	    font-size: 48px;
	    font-weight: 700;
	    white-space: nowrap;
	    text-overflow: ellipsis;
	    position: relative;
	    z-index: 1;
	    margin-top: 70px;
	    margin-bottom: 20px;}
	.m_container .content1>.sub{}
	.m_container .content1 .sub> .sub_btn{
	  width:300px;
	  height:50px;
	  margin-top: 46px;
	  border: 3px solid #019aec;
	  padding: 10px 22px;
	  border-radius: 4px;
	  align-items: center;
	  background-color: white;
	  font-size:20px;
	  color:#019aec;
	  font-weight: bold;
	}
	
	.m_container .content1 >img{
		float:right;
	    margin-top:  -317px;
	    width: 632px;
	    height: 437px;
	    z-index:50}
		
	<!--메뉴바 .on-->
		.dispalynone{}
		.on_{	
		position:absolute;	
		right: 430px;
		display: none;
		z-index:200;
		}
		.on_>li{
		list-style: none;
		border:1px solid #e2e2e2;
		display:block;
		width:90px;
		text-align:center;
		background-color:white;
		padding:5px;
		}
		.on_>li>a{
		margin:0;
		padding:0;
		}
		
</style>
<script type="text/javascript">
var bDisplay = true; function doDisplay(){ 	
    var con = document.getElementById("on_"); 	
    if(con.style.display=='none'){ 		
        con.style.display = 'inline'; 	
    }else{ 		
        con.style.display = 'none'; 	
    } 
} 
</script> 

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
					<li><a class="navbar-brand" href="javascript:doDisplay();"><img src="./img/headerPannel.png"/></a></div></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="dispalynone" >
			<ul class="on_" id="on_">
				<li><a class="navbar-brand" href="./logout.jsp">로그아웃</a></li> 
				<li><a class="navbar-brand" href="./getInfo.jsp">정보수정</a></li>
				<li><a class="navbar-brand" href="./delete_ok.jsp">회원탈퇴</a></li>
			</ul>
	</div>
<!-- content -->
	<div class="m_container">
		<div class="content1">
			<div class="title">차용증 간편 양식</div>
			<div class="sub">
				<div>돈을 빌려주실 때도 ,빌릴 때도</div>
				<div>소폼의 차용증을 작성해 두세요. 강력한 증거가 됩니다.</div> 
				<button type="button" onclick="location.href='./makeform.jsp';" class="sub_btn" >
					<span>무료로 차용증 작성하기</span>
				</button>
			</div>
			<img src="img/head_default_bg.svg" />
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>