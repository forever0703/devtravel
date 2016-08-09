<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />



</head>
<style>
	div{padding:5px 0;}
	/* input[type="text"]{width:200px; height:50px;}
	input[type="password"]{width:200px; height:50px;} */
</style>
<body>

<%@ include file="/module/header.jsp" %>


<%
String send_id = request.getParameter("send_id");
System.out.println(send_id + "<-- send_id m_update_form.jsp");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver");
String dbid = null;
String dbpw = null;
String dbname = null;
String dblevel = null;
String dbgender = null;
String dbph = null;
String dbadd = null;

try{
	String jdbcDriver = "jdbc:mysql://localhost:3306/devtravel1?" +
			"useUnicode=true&characterEncoding=euckr";
	String dbUser = "devtrid";
	String dbPass = "devtrpw";
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);	
	pstmt = conn.prepareStatement("select * from user where user_id=?");
	pstmt.setString(1, send_id);
	
	rs = pstmt.executeQuery();
	if(rs.next()){
		dbid = rs.getString("user_id");
		dbpw = rs.getString("user_pw");
		dbname = rs.getString("user_name");
		dblevel = rs.getString("user_level");
		dbgender = rs.getString("user_gender");
		dbph = rs.getString("user_ph");
		dbadd = rs.getString("user_add");
		/* dbgender = rs.getString("user_gender");
		dbph = rs.getString("user_ph");
		dbadd = rs.getString("user_add"); */
		//콘솔창에 출력한다
		
	
	}
} catch(SQLException ex) {
	out.println(ex.getMessage());
	ex.printStackTrace();
} finally {
	// 6. 사용한 Statement 종료
	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	
	// 7. 커넥션 종료
	if (conn != null) try { conn.close(); } catch(SQLException ex) {}
}
%>
<div id="page" class="container" style="margin:0 auto;">
	<div id="content" style="margin:0 auto; clear:both;">
<form action="<%= request.getContextPath() %>/mupdate/m_update_pro.jsp" method="post">
<table border="1">
<%-- 
<input type="text" name="m_id" size="20" value="<%= dbid %>" readonly> 
--%>
		<tr>
			<td><label for="user_id">아이디 : </label></td>
			<td><input id="user_id" name="user_id" type="hidden" size="20" value="<%= dbid %>"></td>
				<%-- <%= dbid %> --%>
		</tr>
		<tr>
			<td><label for="user_pw">비밀번호 : </label></td>
			<td><input id="user_pw" name="user_pw" type="password" size="20" value="<%= dbpw %>"></td>
		</tr>
			<tr>
			<td><label for="user_name">이름 : </label></td>
			<td><input id="user_name" name="user_name" type="text" size="20" value="<%= dbname %>"></td>
		</tr>
		<tr>
			<td><label for="user_level">권한 : </label></td>
			<td><input id="user_level" name="user_level" type="text" size="20" value="<%= dblevel %>"></td>
		</tr>
		<tr>
			<td><label for="user_gender">성별 : </label></td>
			<td><input id="user_gender" name="user_gender" type="text" size="20" value="<%= dbgender %>"></td>
		</tr>
		<tr>
			<td><label for="user_ph">전화번호 : </label></td>
			<td><input id="user_ph" name="user_ph" type="text" size="20" value="<%= dbph %>"></td>
		</tr>
		<tr>
			<td><label for="user_add">주소 : </label></td>
			<td><input id="user_add" name="user_add" type="text" size="20" value="<%= dbadd %>"></td>
		</tr>
		<tr>
			<td><input id="Btn" name="Btn" type="submit" size="20" value="수정버튼"></td>
		</tr>

	</table>

</form>
</div>
</div>
<%@ include file="/module/footer-wrapper.jsp" %>

</body>
</html>