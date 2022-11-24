<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<%
	String id = (String)session.getAttribute("id");
	String name = (String)session.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<style>
input {
	width: 150px;
	border-top:none;
	border-right:none;
	border-left:none;
	border-bottom:0.5px solid gray;
	text-align: center;}
.form-control1{
	width: 80px;}
td {
	padding-bottom: 11px;
}

.h1title {
	text-align: center;
}

.container_makeform {
	border: 1px dashed #757575;
	background-color: #fff;
}

.a4a4 {
	margin-left: auto;
	margin-right: auto;
	font-size: 14px;
	background-color: white;
	text-align: justify;
	width: 600px;
	height: 900px;;
	box-shadow: none;
	border-radius: 0;
	padding: 30px 80px;
	filter: drop-shadow(0px 4px 10px rgba(0, 0, 0, 0.08));
}

.p_lineheight {
	line-height: 31px;
}
.signi{
	float:right;
	margin-right:20px;}
#out{ padding:0 10px;}
#out1{ padding:0 10px;}
	
</style>
<script type="text/javascript">

$(document).ready(function(){
	$("#data").keyup(function(){
		$("#out").text($("#data").val());
	});

});
$(document).ready(function(){
	$("#data1").keyup(function(){
		$("#out1").text($("#data1").val());
	});

});

</script>
<body>
	<!-- 회원가입 페이지 입니다  -->
	<div class="container_makeform">

		<form name="newProduct" action="./processMakeForm.jsp" method="post"
			class="form-horizontal" enctype="multipart/form-data">
			<div class="a4a4">
				<input type=hidden name="f_id" class="form-control" value="<%=id %>">

				<h1 class="h1title">차 용 증</h1><br>
				<table>
					<tr>
						<td>채권자 성명 :</td>
						<td><input type="text" id="data" name="creditor" class="form-control">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td>(주민등록번호 :</td>
						<td><input type="text" name="cr_jumin" class="form-control">)</td>
					</tr>
					<tr>
						<td>주소 :</td>
						<td><input type="text" name="cr_address" class="form-control"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>연락처 :</td>
						<td><input type="text" name="cr_phone_number"
							class="form-control"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>채무자 성명 :</td>
						<td><input type="text"  id="data1" name="debtor" class="form-control"></td>
						<td>(주민등록번호 :</td>
						<td><input type="text" name="de_jumin" class="form-control">)</td>
					</tr>
					<tr>
						<td>주소 :</td>
						<td><input type="text" name="de_address" class="form-control"></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>연락처 :</td>
						<td><input type="text" name="de_phone_number"
							class="form-control"></td>
						<td></td>
						<td></td>
					</tr>
				</table>
				<br>
				<p class="p_lineheight">
					차용금액 일금 : 금 <input type="text" name="buscar_kr"
						class="form-control"> 정 (₩ <input type="text"
						name="buscar_nu" class="form-control"> ) <br>
					<br> 위 금원을 정히 차용하고 아래 조항을 이행할 것을 확약합니다. <br>
					1. 이자는 년 약 <input type="text" name="interest_per" class="form-control form-control1">%로 (월 이자금<input type="text" name="interest_nu" class="form-control form-control1">원) 정하고
					매월<input type="text" name="interest_day" class="form-control form-control1">일자에<br> 채권자의 주소지에 지참변제 하거나
					계좌입금을 하기로 한다. <br> 2. 원금에 변제는 <input type="text"
						name="comple_interest" class="form-control"> 까지로 하고 채권자의
					주소지에 지참 변제하거나 <br>계좌입급을 하기로한다.<br> 3. 이자의 지급을 1회라도 연체할
					때에는 채무자는 기한의 이익을 상실하고 채권자는 <br>원리금 잔액을 청구하여도 이의 없이 변제하기로 함.<br>
					4. 본 채무에 관한 분쟁의 재판관할은 채권자의 주소지를 관할하는 법원으로 정함.<br>
					<br> 위 계약을 확실히 하기 위하여 이 증서를 작성하고 기명날인하여 각자 1부씩 보관한다.<br>
				</p>
				<!-- 날짜 -->
				날짜 <input type="text" name="now_day" class="form-control"><br><br><br><br><br>
			
			<!-- 사인부분 -->
				<div class="signi">
					<table>
						<tr>
							<td>채권자 : </td>
							<td><div id="out"></div></td>
							<td>(인)</td>
						</tr>
							<tr>
							<td>채무자 : </td>
							<td><div id="out1"></div></td>
							<td>(인)</td>
						</tr>
					</table>
				</div>
			
			</div>
			
			<style>
				.side_menuwrap{
					width: 80px;
					height:210px;
					margin-top:250px;
					position:fixed;
					right:0;
					top:0;
					box-sizing: border-box;
					z-index: 10001;
					
					}
				.side_menu{
					width: 100%;
					height:100%;
					
					}
				.sbtn1{
					border-bottom:1px solid white;
					
					}
				.sbtn1:nth-last-child(1){
					border:0;
					}
				.stn1_1{
				    width: 80px;
    				height: 70px;
					font-size:16px;
					text-align:center;
					background:rgba(0,0,0,0.7);
					color:white;
					cursor: pointer;
					}
				.stn1_2{
					text-decoration:none;
					display:block;
				    width: 80px;
    				height: 70px;
					font-size:16px;
					text-align:center;
					box-sizing: border-box;
					padding-top: 24px;
					background:rgba(0,0,0,0.7);
					color:white;
					cursor: pointer;
					
					}
				.stn1_3{
					text-decoration:none;
				    display:block;
				    width: 80px;
    				height: 70px;
					font-size:16px;
					text-align:center;
					box-sizing: border-box;
					padding-top: 24px;
					background:rgba(0,0,0,0.7);
					color:white;
					cursor: pointer;
					}
					.stn1_1:hover{
				 	color:black;
				 	background:rgba(255,0,0,0.6);
				 	
				 	}
					.stn1_2:hover{
				 	color:black;
				 	background:rgba(255,0,0,0.6);
				 	
				 	}
				 .stn1_3:hover{
				 	color:black;
				 	background:rgba(255,0,0,0.6);
				 	
				 	}
					
			</style>
			<!-- 메뉴 바 -->
			<div class="side_menuwrap">
				<div class="side_menu">
					<div class="sbtn1">
						<input type="submit" value="저장" class="stn1_1">
					</div>
					<div class="sbtn1">
						<a href="index.jsp" class="stn1_2">홈으로</a>
					</div>
					<div class="sbtn1">
						<a href="forms.jsp" class="stn1_3">내문서</a><!-- 문서모음 -->
					</div>
					
				</div>
			</div>
		</form>

	</div>
</body>
</html>