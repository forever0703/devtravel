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
로그인 전 메뉴 <br>
<a href="<%= request.getContextPath() %>/mimsert/m_insert_form.jsp">01회원가입</a>
<a href="#">04상품리스트</a>
<form action="<%= request.getContextPath() %>/login/login_pro.jsp" method="post">
	아이디 : <input type="text" name="inputid">
	아이디 : <input type="password" name="inputpw">
	<input type="submit" value="로그인버튼">
</form>
<%}else{
	if(S_NAME.equals("관리자")){
%>
	관리자메뉴<br>
<a href="<%= request.getContextPath() %>/mimsert/m_insert_form.jsp">01회원가입</a>
<a href="<%= request.getContextPath() %>/user/user_list.jsp">02회원리스트</a>
<%-- <a href="<%= request.getContextPath() %>여행사 정보>00여행사 리스트</a> --%>
<a href="<%= request.getContextPath() %>/mimsert/m_insert_form.jsp">03상품등록</a>
<a href="#">04상품리스트</a>
<a href="#">05주문리스트</a><br>

<% }else if(S_NAME.equals("판매자")){ %>
		판매자 메뉴<br>
<a href="<%= request.getContextPath() %>/mimsert/m_insert_form.jsp">01회원가입</a>	
<%-- <a href="<%= request.getContextPath() %>여행사 정보>00여행사 리스트</a> --%>
<a href="<%= request.getContextPath() %>/mimsert/m_insert_form.jsp">03상품등록</a>	
<a href="#">04상품리스트</a>
<a href="#">05주문리스트</a><br>
<% }else if(S_NAME.equals("구매자")){ %>
		구매자 메뉴<br>
<a href="<%= request.getContextPath() %>/mimsert/m_insert_form.jsp">01회원가입</a>	
<%-- <a href="<%= request.getContextPath() %>여행사 정보>00여행사 리스트</a> --%>
<a href="#">04상품리스트</a>
<a href="#">05주문리스트</a><br>
<% } %>
<%= S_NAME %>님<%= S_LEVEL %>권한으로 로그인 중
<a href="<%= request.getContextPath() %>/login/logout.jsp">로그아웃</a>
<%} %>
</div>