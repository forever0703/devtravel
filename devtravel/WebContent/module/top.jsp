<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<div id="wrapper">
<%
	String S_NAME = (String)session.getAttribute("S_NAME");
	String S_LEVEL = (String)session.getAttribute("S_LEVEL");
	System.out.println(S_NAME + "<-- S_NAME top.jsp");
	System.out.println(S_LEVEL + "<-- S_LEVEL top.jsp");
%>	

	<div id="header">
	/module/top.jsp<br>
<br>
<% 
if(S_NAME == null){
%>
�α��� �� �޴� <br>
<a href="<%= request.getContextPath() %>/mimsert/m_insert_form.jsp">01ȸ������</a>
<a href="#">04��ǰ����Ʈ</a>
<form action="<%= request.getContextPath() %>/login/login_pro.jsp" method="post">
	���̵� : <input type="text" name="inputid">
	���̵� : <input type="password" name="inputpw">
	<input type="submit" value="�α��ι�ư">
</form>
<%}else{
	if(S_NAME.equals("������")){
%>
	�����ڸ޴�<br>
<a href="<%= request.getContextPath() %>/mimsert/m_insert_form.jsp">01ȸ������</a>
<a href="<%= request.getContextPath() %>/user/user_list.jsp">02ȸ������Ʈ</a>
<%-- <a href="<%= request.getContextPath() %>����� ����>00����� ����Ʈ</a> --%>
<a href="<%= request.getContextPath() %>/mimsert/m_insert_form.jsp">03��ǰ���</a>
<a href="#">04��ǰ����Ʈ</a>
<a href="#">05�ֹ�����Ʈ</a><br>

<% }else if(S_NAME.equals("�Ǹ���")){ %>
		�Ǹ��� �޴�<br>
<a href="<%= request.getContextPath() %>/mimsert/m_insert_form.jsp">01ȸ������</a>	
<%-- <a href="<%= request.getContextPath() %>����� ����>00����� ����Ʈ</a> --%>
<a href="<%= request.getContextPath() %>/mimsert/m_insert_form.jsp">03��ǰ���</a>	
<a href="#">04��ǰ����Ʈ</a>
<a href="#">05�ֹ�����Ʈ</a><br>
<% }else if(S_NAME.equals("������")){ %>
		������ �޴�<br>
<a href="<%= request.getContextPath() %>/mimsert/m_insert_form.jsp">01ȸ������</a>	
<%-- <a href="<%= request.getContextPath() %>����� ����>00����� ����Ʈ</a> --%>
<a href="#">04��ǰ����Ʈ</a>
<a href="#">05�ֹ�����Ʈ</a><br>
<% } %>
<%= S_NAME %>��<%= S_LEVEL %>�������� �α��� ��
<a href="<%= request.getContextPath() %>/login/logout.jsp">�α׾ƿ�</a>
<%} %>
</div>