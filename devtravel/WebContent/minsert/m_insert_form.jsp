<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

<script type="text/javascript">
	$(document).ready(function(){
		
		$('#Btn').click(function(){
			
			$('form').submit();
			
		});
		
	});
</script>
<style>
	div{padding:5px 0;}
	/* input[type="text"]{width:200px; height:50px;}
	input[type="password"]{width:200px; height:50px;} */
</style>
</head>
<body>
		 
<%@ include file="/module/header.jsp" %>



<div id="page" class="container" style="margin:0 auto;">
	<div id="content" style="margin:0 auto; clear:both;">
		<form action="<%= request.getContextPath() %>/minsert/m_insert_pro.jsp" method="post">
		<table>
		
		<h1>ȸ������</h1>

		<tr>
			<td><label for="id">���̵� : </label></td>
			<td><input id="id" name="id" type="text" size="20"></td>
		</tr>
		<tr>
			<td><label for="pw">��й�ȣ : </label></td>
			<td><input id="pw" name="pw" type="password" size="20"></td>
		</tr>
			<tr>
			<td><label for="name">�̸� : </label></td>
			<td><input id="name" name="name" type="text" size="20"></td>
		</tr>
		<tr>
			<td><label for="level">���� : </label></td>
			<td><input id="level" name="level" type="text" size="20"></td>
		</tr>
		<tr>
			<td><label for="gender">���� : </label></td>
			<td><input id="gender" name="gender" type="text" size="20"></td>
		</tr>
		<tr>
			<td><label for="ph">��ȭ��ȣ : </label></td>
			<td><input id="ph" name="ph" type="text" size="20"></td>
		</tr>
		<tr>
			<td><label for="add">�ּ� : </label></td>
			<td><input id="add" name="add" type="text" size="20"></td>
		</tr>
		<tr>
			<td><input id="Btn" name="Btn" type="submit" size="20" value="�Է¹�ư"></td>
		</tr>
	</table>
	</form>
	</div>
	</div>
	<%@ include file="/module/footer-wrapper.jsp" %>
</body>
</html>
