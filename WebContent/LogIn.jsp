<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="ClassPackage.Member" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
<link rel="stylesheet" href="LoginCss.css">
</head>
<body>
	<h1>BUS SYSTEM</h1>

	<%-- <%Member m = new Member("kk",89,"dsd","dks","djsd"); 
	String str = "dd";
	%> --%>
	<form method = "post" action="main.jsp">
		아이디 : <input type = "text" name = "id" maxlength= "12"><br/>
		패스워드 : <input type = "password" name = "passwd" maxlength= "12"><br/>
		<input type = "submit" value = "로그인">
		<input type = "button" value = "회원가입" onclick= "button1_click();"><br/> 
	</form>
	
	
	<div id = "loginpage-modal-content">
		<form id="creatememberform"  action="createaccount.jsp" >
			이름 : <input type = "text" name = "NAME" maxlength= "12" required><br/>
			이메일 : <input type = "email" name = "EMAIL" required><br/>
			전화번호 : <input type = "tel" name = "PHONENUM" maxlength= "12" required><br/>
			아이디 : <input type = "text" name = "ID" maxlength= "12" required><br/>
			패스워드 : <input type = "password" name = "PWD" maxlength= "12" required><br/>
			<input type = "submit" value = "회원가입" >
			<input type = "button" value = "닫기"><br/> 
		</form>
	
	</div>
	
	<!-- onclick에 java function 어떻게 연결하는지 -->
	<%-- <%= str %> --%>
	
	
	
	<Script>
	function button1_click(){
		document.getElementById('loginpage-modal-content').style.display="block";
	}
	
	</Script>
	
	
</body>
</html>
