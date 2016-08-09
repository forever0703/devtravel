<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="main.css" />

<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
}
</style>


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

System.out.println(user_id + "<-- user_id");
System.out.println(user_pw + "<-- user_pw");
System.out.println(user_name + "<-- user_name");
System.out.println(user_level + "<-- user_level");
System.out.println(user_gender + "<-- user_gender");
System.out.println(user_ph + "<-- user_ph");
System.out.println(user_add + "<-- user_add");
%>			       
<table style="width:100%">
  <tr>
       <th>아이디</th>
    <th>비번</th>
    <th>이름</th>
    <th>권한</th>
    <th>성별</th>
    <th>전화번호</th>
    <th>주소</th>
    <th>수정버튼</th>
    <th>삭제버튼</th>
  </tr>
  <tr>
    <td><%= user_id %></td>
    <td><%= user_pw %></td>
    <td><%= user_name %></td>
    <td><%= user_level %></td>
    <td><%= user_gender %></td>
    <td><%= user_ph %></td>
    <td><%= user_add %></td>
    <td>
    	<a href="user_update_form.jsp?user_id=<%= user_id %>&user_pw=<%= user_pw %>&user_name=<%= user_name %>&user_level=<%= user_level %>&user_gender=<%= user_gender %>&user_ph=<%= user_ph %>%>&user_add=<%= user_add %>">수정</a>
    </td>
	<td>
    	<a href="user_list_delete.jsp">삭제</a>
    </td>
  </tr>

</table>
	          		 
		 
