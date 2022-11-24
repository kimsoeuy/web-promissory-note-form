<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
	request.setCharacterEncoding("utf-8");
	String filename="";
	String realFolder ="./images/";
	int maxSize = 5 * 1024 * 1024;
	String encType = "utf-8";
	String filePath = application.getRealPath(realFolder);
	
	MultipartRequest multi = new MultipartRequest(request,
	filePath, maxSize, encType, new DefaultFileRenamePolicy());
	
		String id = multi.getParameter("id");
		String pw = multi.getParameter("pw");
		String name = multi.getParameter("name");
		String birth = multi.getParameter("birth");
		String phonenumber = multi.getParameter("phonenumber");
		String address = multi.getParameter("address");
		
		// db에 값 추가
		PreparedStatement pstmt=null;
		String sql = "update member set pw=?,name=?,"+
					"birth=?,phone_number=?,address=? "+
					"where id=?";
		
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, pw);
		pstmt.setString(2, name);
		pstmt.setString(3, birth);
		pstmt.setString(4, phonenumber);
		pstmt.setString(5, address);
		pstmt.setString(6, id);
		pstmt.executeUpdate();
		
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("index.jsp");
	%>
	
</body>
</html>