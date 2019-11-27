
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*"%>
    <%@ page import="java.io.PrintWriter" %>

    <% 
    
   /*  String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phonenum = request.getParameter("phonenum");
	String id = request.getParameter("id");
    String passwd = request.getParameter("passwd"); */
	
	%>
	
	<jsp:useBean id="member" class="ClassPackage.Member" scope="page">
		<jsp:setProperty name="member" property="*" />
	</jsp:useBean>
	
	<jsp:getProperty name="member" property="EMAIL" />
	
	<% String name = member.getNAME();%>
	
    <%
    
    
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";
	
    try{
    	
    	 	String jdbcUrl = "jdbc:mysql://localhost:3306/Bus_System?serverTimezone=UTC&useSSL=false";
    		String dbId = "root";
    		String dbPass = "Jh742511";
    		
    		Class.forName("com.mysql.jdbc.Driver");
    		conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
    		String sql = "insert into Bus_System.Member values(?,?,?,?,?)";
    		pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, member.getNAME());
    		pstmt.setString(2, member.getEMAIL());
    		pstmt.setInt(3, member.getPHONENUM());
    		pstmt.setString(4,member.getID());
    		pstmt.setString(5,member.getPWD());
    		pstmt.executeUpdate();
    		
    		/* str = "member 테이블에 새로운 레코드를 추가했습니다. ";	
    		response.sendRedirect("LogIn.jsp"); */ 
    		
    		
    		response.setContentType("text/html; charset=UTF-8");
    		 
    		PrintWriter writer = response.getWriter();
    		 
    		writer.println("<script>alert('계정이 등록 되었습니다'); location.href='LogIn.jsp';</script>");
    		 
    		writer.flush();
    		
    		
    	
    }catch(Exception e){ // 나중에 이부분 수정 
		e.printStackTrace();
		str = "member 테이블에 새로운 레코드를 추가에 실패했습니다  ";	
	} finally{
		if(pstmt != null)try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null)try{conn.close();}catch(SQLException sqle){}
	}
    
   
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%= id %> --%>
<%= name %> 
<%= str %> 
</body>
</html>