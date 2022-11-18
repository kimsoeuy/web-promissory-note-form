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
		
		String f_id = multi.getParameter("f_id");
		String creditor = multi.getParameter("creditor");
		String cr_jumin = multi.getParameter("cr_jumin");
		String cr_address = multi.getParameter("cr_address");
		String cr_phone_number = multi.getParameter("cr_phone_number");
		String debtor = multi.getParameter("debtor");
		String de_jumin = multi.getParameter("de_jumin");
		String de_address = multi.getParameter("de_address");
		String de_phone_number = multi.getParameter("de_phone_number");
		String buscar_kr = multi.getParameter("buscar_kr");
		String buscar_nu = multi.getParameter("buscar_nu");
		String interest_per = multi.getParameter("interest_per");
		String interest_nu = multi.getParameter("interest_nu");
		String interest_day = multi.getParameter("interest_day");
		String comple_interest = multi.getParameter("comple_interest");
		String now_day = multi.getParameter("now_day");
		
		Enumeration files = multi.getFileNames();
		//String fname = (String)files.nextElement();
		//filename = multi.getFilesystemName(fname);
		
		// db에 값 추가
		PreparedStatement pstmt=null;
		String sql = "insert into Form values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, f_id);
		pstmt.setString(2, creditor);
		pstmt.setString(3, cr_jumin);
		pstmt.setString(4, cr_address);
		pstmt.setString(5, cr_phone_number);
		pstmt.setString(6, debtor);
		pstmt.setString(7, de_jumin);
		pstmt.setString(8, de_address);
		pstmt.setString(9, de_phone_number);
		pstmt.setString(10, buscar_kr);
		pstmt.setString(11, buscar_nu);
		pstmt.setString(12, interest_per);
		pstmt.setString(13, interest_nu);
		pstmt.setString(14, interest_day);
		pstmt.setString(15, comple_interest);
		pstmt.setString(16, now_day);
		
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("index.jsp");		
	%>
	
	
</body>
</html>