<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>

<%
String send_id = request.getParameter("send_id");
System.out.println(send_id + "<-- send_id m_delete_pro.jsp");
request.setCharacterEncoding("euc-kr");
Connection conn = null;
PreparedStatement pstmt = null;
Class.forName("com.mysql.jdbc.Driver");
try{
	String jdbcDriver = "jdbc:mysql://localhost:3306/devtravel1?" +
			"useUnicode=true&characterEncoding=euckr";
	String dbUser = "devtrid";
	String dbPass = "devtrpw";
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	pstmt = conn.prepareStatement(
			"DELETE FROM user WHERE user_id=?");
	pstmt.setString(1, send_id);
	pstmt.executeUpdate();
	
	
	response.sendRedirect(request.getContextPath()+"/user/user_list.jsp");

}finally{
	if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	if (conn != null) try { conn.close(); } catch(SQLException ex) {}
}



%>