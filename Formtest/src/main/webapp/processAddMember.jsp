<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Enumeration"%>
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
		
		Enumeration files = multi.getFileNames();
		//String fname = (String)files.nextElement();
		//filename = multi.getFilesystemName(fname);
		
		// db에 값 추가
		PreparedStatement pstmt=null;
		String sql = "insert into member values(?, ?, ?, ?, ?, ?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setString(4, birth);
		pstmt.setString(5, phonenumber);
		pstmt.setString(6, address);
		
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("index.jsp?id="+id);		
	%>
	
	
</body>
</html>