<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String er = request.getParameter("er");
	
		if(er.equals("er")){
	%>
		<script type="text/javascript">

 		 alert("세션이 만료되었습니다.");

		</script>
	
	<%
	}
	%>

<h1>loginForm</h1>
<form action="login.jsp" method="post">
	아이디 : <input type="text" name="id"/>
	비밀번호 : <input type="password" name="pass"/>
	<input type="submit" value="로그인" />
</form>
</body>
</html>