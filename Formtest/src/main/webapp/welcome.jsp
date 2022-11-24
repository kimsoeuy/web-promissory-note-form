<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="reset.css">
<meta charset="UTF-8">
<title>소폼 :: 차용증 웹 프로젝트</title>
</head>
<style>
.m_container{ width:1980px;
			height:360px;
}
.content1{
	position: relative;
	width: 1024px;
	height: 360px;
	margin:0 auto;
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
    margin-top: -274px;;
    width: 632px;
    height: 437px;
    z-index:50}

</style>
<body>
	<%@ include file="menu.jsp"%>
	
	<div class="m_container">
		<div class="content1">
			<div class="title">차용증 간편 양식</div>
			<div class="sub">
				<div>돈을 빌려주실 때도 ,빌릴 때도</div>
				<div>소폼의 차용증을 작성해 두세요. 강력한 증거가 됩니다.</div> 
				<button type="button" class="sub_btn" >
					<span>무료로 차용증 작성하기</span>
				</button>
			</div>
			<img src="img/head_default_bg.svg" />
		</div>
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>