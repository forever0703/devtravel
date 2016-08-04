<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<%@ include file="/msearch/m_search_form.jsp" %>
회원 리스트 <br>
<table width="100%" border="1">
<tr>
	<td>이름</td><td>아이디</td><td>권한</td><td>이름</td><td>성별</td><td>전화번호</td><td>주소</td><td>수정</td><td>삭제</td>
</tr>

<%
request.setCharacterEncoding("euc-kr");
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
//JDBC 프로그램 순서
//01단계 :드라이버 로딩 시작
Class.forName("com.mysql.jdbc.Driver");
String sk = request.getParameter("sk");
String sv = request.getParameter("sv");
System.out.println(sk + "<-- sk m_search_list.jsp");
System.out.println(sv + "<-- sv m_search_list.jsp");
try{
	String jdbcDriver = "jdbc:mysql://localhost:3306/devtravel1?" +
			"useUnicode=true&characterEncoding=euckr";
	String dbUser = "devtrid";
	String dbPass = "devtrpw";
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	if(sk == null & sv == null){
		out.println("01 sk 널 sv 널인 조건");
		pstmt = conn.prepareStatement("select * from user");
	}else if(sk != null & sv.equals("")){
		out.println("02 sk 값있고 sv 공백 조건");
		pstmt = conn.prepareStatement("select * from user");
	}else if(sk != null & sv != null){
		out.println("03 sk sv 둘다 있는 조건");
		pstmt = conn.prepareStatement("select * from user where "+sk+"=?");
		pstmt.setString(1, sv);
	}
	out.println("<br>"+pstmt + "<--- pstmt");
	rs = pstmt.executeQuery();
	System.out.println(rs + "<-- rs m_list.jsp");
	while(rs.next()){
%>
		<tr>
			<td><%= rs.getString("user_id")%></td>
			<td><%= rs.getString("user_pw")%></td>
			<td><%= rs.getString("user_level")%></td>
			<td><%= rs.getString("user_name")%></td>
			<td><%= rs.getString("user_gender")%></td>
			<td><%= rs.getString("user_ph")%></td>
			<td><%= rs.getString("user_add")%></td>
			<td>
<a href="<%= request.getContextPath() %>/mupdate/m_update_form.jsp?send_id=<%= rs.getString("user_id")%>">수정클릭</a>			
			</td>
			<td>
<a href="<%= request.getContextPath() %>/mdelete/m_delete_pro.jsp?send_id=<%= rs.getString("user_id")%>">삭제클릭</a>			
			</td>
		</tr>
<%	
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