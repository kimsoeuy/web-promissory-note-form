<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
	//i.JDBC 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	
	String jdbcURL="jdbc:mysql://localhost:3306/20190625_1";
	String dbUser="root";
	String dbPass="981223";
	

	Connection conn = null;
	
	//2. 데이터베이스 커넥션 생성
	conn=DriverManager.getConnection(jdbcURL,dbUser,dbPass);
	
	%>
</body>
</html>