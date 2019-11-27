
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*"%>
    
    
    <%
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String str = "";
		
	    try{ // 로그인시 아이디 중복 체크 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    	
	    	 	String jdbcUrl = "jdbc:mysql://localhost:3306/Bus_System?serverTimezone=UTC&useSSL=false";
	    		String dbId = "root";
	    		String dbPass = "Jh742511";
	    		
	    		Class.forName("com.mysql.jdbc.Driver");
	    		conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	    		
	    		/* String sql = "select * from Bus_System.Member where Member.Id = "+id+" AND Member.Password = "+passwd; */
	    		String sql = "select * from Bus_System.Member where "
	    					+ "Member.Id = ? AND Member.Password = ?";
	    		
	    		pstmt = conn.prepareStatement(sql);
	    		pstmt.setString(1, id);
	    		pstmt.setString(2, passwd);
	    		
	    		 
	    		/* Statement st = conn.createStatement(); */
	    		ResultSet rs = pstmt.executeQuery();
	    		if(id==null || rs.next()==false)
	    			response.sendRedirect("LogIn.jsp");
	    		else
	    			str = "성공 "+" id: "+rs.getString("Id")+" pwd: "+rs.getString("Password");
	    		
	    		/* while(rs.next()){
	    			String name = rs.getString("Name");
	    			String email = rs.getString("Email");
	    			String tel = rs.getString("PhoneNum");
	    			String ID = rs.getString("Id");
	    			String PWD = rs.getString("Password");
	    			System.out.format("%s","%s","%s","%s\n",name,email,tel,ID,PWD);
	    			str = "성공"+name;
	    		} */
	    		
	    		pstmt.close();
	    		
	    	    	
	    }catch(Exception e){ // 나중에 이부분 수정 
			e.printStackTrace();
			/* response.sendRedirect("LogIn.jsp"); */
		} finally{
			if(pstmt != null)try{pstmt.close();}catch(SQLException sqle){}
			if(conn != null)try{conn.close();}catch(SQLException sqle){}
		}
	%>

    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[메인페이지]</title>
</head>
<body>
	<h1>MAIN</h1>
	<%=str %>
	
	
	<header>
		<div class="menu-wrapper">

			<h1>버스 예매 홈페이지</h1>

			<nav>
				<ul class="menu">

					<li><a href="">Home</a></li>

					<li><a href="">My Page</a></li>
				</ul>
			</nav>


		</div>

	</header>

	<div id="main-wrapper">
		<form action="" method="POST">
			날짜 <input type="date" required> 
			
			
			출발지 <select id="start_points">
				<option value="서울">서울</option>
				<option value="대전">대전</option>
				<option value="부산">부산</option>
				<option value="광주">광주</option>
				<option value="대구">대구</option>
			</select> 
			
			
			도착지 <select id="end_points">
				<option value="서울">서울</option>
				<option value="대전">대전</option>
				<option value="부산">부산</option>
				<option value="광주">광주</option>
				<option value="대구">대구</option>
			</select> 
			
			
			버스등급 <select id="bus_grades">
				<option value="일반">일반</option>
				<option value="우등">우등</option>
				<option value="프리미엄">프리미엄</option>

			</select> <input type="submit" value="검색">
		</form>

	</div>

	
</body>
</html>