<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>
<%
	request.setCharacterEncoding("euc-kr");// 한글사용
	Connection conn = null;
	PreparedStatement pstmt = null;
	//초기값을 설정!! 
	//입력할 목록-->드라이버로딩-->DB연결-->쿼리실행을 위한 준비-->실행-->결과-->종료
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("pw");
	String user_name = request.getParameter("name");
	String user_level = request.getParameter("level");
	String user_gender = request.getParameter("gender");
	String user_ph = request.getParameter("ph");
	String user_add = request.getParameter("add");
	System.out.println(user_id + "<--id/minsert/m_insert_pro.jsp");
	System.out.println(user_pw + "<--pw/minsert/m_insert_pro.jsp");
	System.out.println(user_name + "<--name/minsert/m_insert_pro.jsp");
	System.out.println(user_level + "<--level/minsert/m_insert_pro.jsp");
	System.out.println(user_gender + "<--gender/minsert/m_insert_pro.jsp");
	System.out.println(user_ph + "<--ph/minsert/m_insert_pro.jsp");
	System.out.println(user_add + "<--add/minsert/m_insert_pro.jsp");
	
	Class.forName("com.mysql.jdbc.Driver");
	try{
		String jdbcDriver = "jdbc:mysql://localhost:3306/devtravel?" +
				"useUnicode=true&characterEncoding=euckr";
		String dbUser = "dev21tr";
		String dbPass = "dbpw09yji";
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		System.out.println(conn + "<-- conn");
		System.out.println(conn.getClass() + "<-- conn.getClass()");
		pstmt = conn.prepareStatement(
				"INSERT INTO tb_member VALUES (?, ?, ?, ?, ?,?,?)");
		System.out.println(pstmt + "<-- pstmt 1");
		System.out.println(pstmt.getClass() + "<-- pstmt.getClass() 1");

		pstmt.setString(1, user_id);
		pstmt.setString(2, user_pw);
		pstmt.setString(3, user_name);
		pstmt.setString(4, user_level);
		pstmt.setString(5, user_gender);
		pstmt.setString(6, user_ph);
		pstmt.setString(7, user_add);
		
		System.out.println(pstmt + "<-- pstmt 2");
		

		pstmt.executeUpdate();

response.sendRedirect(request.getContextPath()+"/user/user_list.jsp");
	
	}finally{
	
		if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	
		if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	}
%>