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
		String sql = "select user_pw,user_level,user_name from user whereuser_id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, user_id);
	
	rs = pstmt.executeQuery();
	if(rs.next()){
		System.out.println("01���̵���ġ");
		
		dbpw = rs.getString("m_pw");
		dbname = rs.getString("m_name");
		dblevel = rs.getString("m_level"); 
		
		if(user_pw.equals(dbpw)){
			System.out.println("03�α��μ���");
			//session������ �̸��� ������ ����
			session.setAttribute("S_NAME", dbname);
			session.setAttribute("S_LEVEL", dblevel);
			//session������ �̸��� ������ ����
			//index.jsp�� �̵�
//response.sendRedirect(request.getContextPath()+"/user/index.jsp");
%>
<script type="text/javascript">
	alert("�α��μ���");
	location.href = "<%= request.getContextPath() %>/user/index.jsp";
</script>
<%		
		}else{
			System.out.println("04�������ġ");
%>
<script type="text/javascript">
	alert("�������ġ");
	location.href = "<%= request.getContextPath() %>/user/index.jsp";
</script>
<%			
		}
	}else{
		System.out.println("02���̵����ġ");
%>
<script type="text/javascript">
	alert("���̵� ����ġ");
	location.href = "<%= request.getContextPath() %>/user/index.jsp";
</script>
<%		
	}
	
} catch(SQLException ex) {
	out.println(ex.getMessage());
	ex.printStackTrace();
} finally {
	// 6. ����� Statement ����
	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	
	// 7. Ŀ�ؼ� ����
	if (conn != null) try { conn.close(); } catch(SQLException ex) {}
}	
	
	
%>