<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
ȸ�� ����Ʈ <br>
<table width="100%" border="1">
<tr>
	<td>�̸�</td><td>���̵�</td><td>����</td><td>�̸�</td><td>����</td><td>��ȭ��ȣ</td><td>�ּ�</td><td>����</td><td>����</td>
</tr>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	Class.forName("com.mysql.jdbc.Driver");

	try{
		String jdbcDriver = "jdbc:mysql://localhost:3306/devtravel1?" +
				"useUnicode=true&characterEncoding=euckr";
		String dbUser = "devtrid";
		String dbPass = "devtrpw";
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

		System.out.println(conn + "<-- conn m_list.jsp");
		if(conn != null){
			out.println("01 DB���� ����");
		}else{
			out.println("02 DB���� ����");
		}
		pstmt = conn.prepareStatement("select * from user");
		rs = pstmt.executeQuery();
		System.out.println(rs + "<-- rs m_list.jsp");
		while(rs.next()){
%>
		<tr>
			<td><%= rs.getString("user_id")%></td>
			<td><%= rs.getString("user_pw")%></td>
			<td><%= rs.getString("user_level")%></td>
			<td><%= rs.getString("user_name")%></td>
			<td><%= rs.getString("user_email")%></td>
			<td>
<a href="<%= request.getContextPath() %>/mupdate/m_update_form.jsp?send_id=<%= rs.getString("user_id")%>">����Ŭ��</a>			
			</td>
			<td>
<a href="<%= request.getContextPath() %>/mdelete/m_delete_pro.jsp?send_id=<%= rs.getString("user_id")%>">����Ŭ��</a>			
			</td>
		</tr>
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
</table>