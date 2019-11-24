<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%= id %> --%>
<%= name %> 
</body>
</html>