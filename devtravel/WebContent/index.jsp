<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />
</head>
<body>
<%@ include file="/module/top.jsp" %>
<%@ include file="/module/left.jsp" %>
	<div id="rightcolumn">	
		index.jsp ����ȭ��
	</div>
<%@ include file="/module/hadan.jsp" %>
</body>
</html>
<!--1�ܰ� ���̾ƿ� �غ�
	2�ܰ� list �� insert�����
	3�ܰ� login �غ�
	------------------------------1����~2��
	4�ܰ� DB�����ؼ� date �Է� Ȯ���ϱ�
	------------------------------2����~3��
	5�ܰ� ����,����,��ȸ �����
	------------------------------3����~4��
	6�ܰ� ������ �ڵ带 ���ȭ �ϱ�  
	��. �Ⱓ�� �ش� �ܰ谡 �Ϸ�Ǵ� ����. �Ϸ� ������ ������ �۾� �ϼ���.-->