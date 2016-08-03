<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />
<script>


</script>
</head>
<body>
<%@ include file="/module/top.jsp" %>
<%@ include file="/module/left.jsp" %>
		
		 <div id="rightcolumn">
		 
<form action="<%= request.getContextPath() %>/minsert/m_insert_pro.jsp" method="post">
<table border="1">
	<tr>
		<td>아이디</td>
		<td>
		<input id="id" name="id" type="text">
		<span id=Idhelper></span>
		</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td>
			<input id="pw" name="pw" type="password">
			<span id=Pwhelper></span>
		</td>
	</tr>	
	<tr>
		<td>권한</td>
		<td>
			<input id="level" name="level" type="text">
			<span id=Levelhelper></span>
		</td>
	</tr>	
	<tr>
		<td>성별</td>
		<td>
			<input id="gender" name="gender" type="text">
			<span id=Genderhelper></span>
		</td>
	</tr>	
	<tr>
		<td>전화번호</td>
		<td>
			<input id="ph" name="ph" type="text">
			<span id=Phhelper></span>
		</td>
	</tr>
	<tr>
		<td>주소</td>
		<td>
			<input id="add" name="add" type="text">
			<span id=Addhelper></span>
		</td>
	</tr>	

</form>
		 </div>
		 <!-- End Right Column -->
<%@ include file="/module/hadan.jsp" %>
</body>
</html>