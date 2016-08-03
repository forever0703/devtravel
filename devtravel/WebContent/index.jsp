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
		index.jsp 시작화면
	</div>
<%@ include file="/module/hadan.jsp" %>
</body>
</html>
<!--1단계 레이아웃 준비
	2단계 list 및 insert만들기
	3단계 login 준비
	------------------------------1주차~2주
	4단계 DB연결해서 date 입력 확인하기
	------------------------------2주차~3주
	5단계 수정,삭제,조회 만들기
	------------------------------3주차~4주
	6단계 각각의 코드를 축소화 하기  
	단. 기간은 해당 단계가 완료되는 시점. 완료 전까지 무기한 작업 일수임.-->