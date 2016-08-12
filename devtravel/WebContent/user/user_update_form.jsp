<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="main.css" />
</head>

<body>


<%
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String user_name = request.getParameter("user_name");
String user_level = request.getParameter("user_level");
String user_gender = request.getParameter("user_gender");
String user_ph = request.getParameter("user_ph");
String user_add = request.getParameter("user_add");

System.out.println(user_id + "<-- u_id");
System.out.println(user_pw + "<-- user_pw");
System.out.println(user_name + "<-- user_name");
System.out.println(user_level + "<-- user_level");
System.out.println(user_gender + "<-- user_gender");
System.out.println(user_ph + "<-- user_ph");
System.out.println(user_add + "<-- user_add");
%>			       
		       
		       
		       회원수정 화면 <br><br>
<form action="user_list_update.jsp" method="post">
	아이디 : <input type="text" name="user_id" value="<%= user_id %>" readonly><br>
	비번 : <input type="password" name="user_pw" value="<%= user_pw %>"><br>
	이름 : <input type="text" name="user_name" value="<%= user_name %>"><br>
	성별 : <input type="text" name="user_gender" value="<%= user_gender %>"><br>
	전화번호 : <input type="text" name="user_ph" value="<%= user_ph %>"><br>
	주소 : <input type="text" name="user_add" value="<%= user_add %>"><br><br>

	<input type="submit" value="수정버튼">
</form>		       
		       
