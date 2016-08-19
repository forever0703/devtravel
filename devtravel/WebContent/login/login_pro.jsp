<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String user_id = request.getParameter("id");
String user_pw = request.getParameter("pw");
System.out.println(user_id + "<--id/minsert/m_insert_pro.jsp");
System.out.println(user_pw + "<--pw/minsert/m_insert_pro.jsp");
String dbid = null;
String dbpw = null;
String dbname = null;
String dblevel = null;
Class.forName("com.mysql.jdbc.Driver");
try{
	String jdbcDriver = "jdbc:mysql://localhost:3306/devtravel1?" +
			"useUnicode=true&characterEncoding=euckr";
	String dbUser = "devtrid";
	String dbPass = "devtrpw";
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		System.out.println(conn + "<-- conn");
		System.out.println(conn.getClass() + "<-- conn.getClass()");
		String sql = "select user_pw,user_name ,user_level from user where user_id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, user_id);
	
	rs = pstmt.executeQuery();
	if(rs.next()){
		System.out.println("01아이디일치");
		
		dbpw = rs.getString("user_pw");
		dbname = rs.getString("user_name");
		dblevel = rs.getString("user_level"); 
		
		if(user_pw.equals(dbpw)){
			System.out.println("03로그인성공");
			//session영역에 이름과 권한을 셋팅
			session.setAttribute("S_NAME", dbname);
			session.setAttribute("S_LEVEL", dblevel);
			//session영역에 이름과 권한을 셋팅
			//index.jsp로 이동
//response.sendRedirect(request.getContextPath()+"/user/index.jsp");
%>
<script type="text/javascript">
	alert("로그인성공");
	location.href = "<%= request.getContextPath() %>/user/loginAction.jsp";
</script>
<%		
		}else{
			System.out.println("04비번불일치");
%>
<script type="text/javascript">
	alert("비번불일치");
	location.href = "<%= request.getContextPath() %>/user/index.jsp";
</script>
<%			
		}
	}else{
		System.out.println("02아이디불일치");
%>
<script type="text/javascript">
	alert("아이디 불일치");
	location.href = "<%= request.getContextPath() %>/user/index.jsp";
</script>
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