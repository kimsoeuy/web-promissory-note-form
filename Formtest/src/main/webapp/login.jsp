<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<h1>loginPro</h1>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id= request.getParameter("id");
	String pass = request.getParameter("pass");

	// pstmt 생성
			PreparedStatement pstmt=null;
			ResultSet rs = null;
			
			String sql = "select * from member where id = ? and pw = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			
			
			// sql실행
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				id = rs.getString("id");
				String name = rs.getString("name");
				
				session.setAttribute("id", id);
				session.setAttribute("name", name);
				
				response.sendRedirect("index.jsp"); // 페이지이동
				
			}else{ // 로그인 실패
			    out.println("<script>");
			    out.println("alert('로그인 실패함.');");
			    out.println("</script>");
			    out.println("<script>location.href='login_Form.jsp';</script>");
					}
	
				%>
</body>
</html>