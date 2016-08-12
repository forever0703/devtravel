<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>

<%
request.setCharacterEncoding("euc-kr");
Connection conn = null;
PreparedStatement pstmt = null;
//화면에서 입력자료 받아서 콘솔창에 출력 시작
	
	String user_pw = request.getParameter("user_pw");
	String user_name = request.getParameter("user_name");
	String user_level = request.getParameter("user_level");
	String user_gender = request.getParameter("user_gender");
	String user_ph = request.getParameter("user_ph");
	String user_add = request.getParameter("user_add");
	String user_id = request.getParameter("user_id");
	System.out.println(user_id + "<--user_id/minsert/m_update_pro.jsp");
	System.out.println(user_pw + "<--user_pw/minsert/m_update_pro.jsp");
	System.out.println(user_name + "<--user_name/minsert/m_update_pro.jsp");
	System.out.println(user_level + "<--user_level/minsert/m_update_pro.jsp");
	System.out.println(user_gender + "<--user_gender/minsert/m_update_pro.jsp");
	System.out.println(user_ph + "<--user_ph/minsert/m_update_pro.jsp");
	System.out.println(user_add + "<--user_add/minsert/m_update_pro.jsp");
	System.out.println(user_id + "<--user_id/minsert/m_update_pro.jsp");

Class.forName("com.mysql.jdbc.Driver");
//01단계 :드라이버 로딩 끝

try{
	
//02단계 :DB연결(Connection)시작
	String jdbcDriver = "jdbc:mysql://localhost:3306/devtravel1?" +
				"useUnicode=true&characterEncoding=euckr";
		String dbUser = "devtrid";
		String dbPass = "devtrpw";
	
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	pstmt = conn.prepareStatement(
			"UPDATE user SET user_pw=?,user_name=?,user_level=?,user_gender=?,user_ph=?,user_add=? WHERE user_id=?");
	System.out.println(pstmt + "<-- pstmt 1");
	System.out.println(pstmt.getClass() + "<-- pstmt.getClass() 1");

	
	pstmt.setString(1, user_pw);
	pstmt.setString(2, user_name);
	pstmt.setString(3, user_level);
	pstmt.setString(4, user_gender);
	pstmt.setString(5, user_ph);
	pstmt.setString(6, user_add);
	pstmt.setString(7, user_id);
	System.out.println(pstmt + "<-- pstmt 2");
	
	pstmt.executeUpdate();
	//response.sendRedirect(request.getContextPath()+"/mlist/m_list.jsp");
	response.sendRedirect(request.getContextPath()+"/user/user_list.jsp");

	
}finally{
	if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	if (conn != null) try { conn.close(); } catch(SQLException ex) {}
}
%>