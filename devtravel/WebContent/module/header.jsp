<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><a href="#">별빛이야기</a></h1>
		</div>
		<div id="menu">
			<ul>
				<li><a href="javascript:void(0)" accesskey="1" title="">전체메뉴</a></li>
				<li><a href="javascript:void(0)" accesskey="2" title="">여행사</a></li>
				<li><a href="javascript:void(0)" accesskey="3" title="">상품리스트</a></li>
				<li><a href="javascript:void(0)" accesskey="4" title="">회원수기</a></li>
				<li><a href="javascript:void(0)" accesskey="5" title="">로그인</a></li>
				<li><a href="<%= request.getContextPath() %>/minsert/m_insert_form.jsp">회원가입</a></li>
			</ul>
		</div>
	</div>
</div>
<div id="featured-wrapper">
	<div id="featured" class="container">
		<div class="box box1"><a href="#" class="image image-full"><img src="images/pic02.jpg" alt="" /></a></div>
		<div class="box box2"><a href="#" class="image image-full"><img src="images/pic03.jpg" alt="" /></a></div>
		<div class="box box3"><a href="#" class="image image-full"><img src="images/pic04.jpg" alt="" /></a></div>
		<div class="box box4"><a href="#" class="image image-full"><img src="images/pic05.jpg" alt="" /></a></div>
		<div class="box box5"><a href="#" class="image image-full"><img src="images/pic06.jpg" alt="" /></a></div>
		<div class="box box6"><a href="#" class="image image-full"><img src="images/pic07.jpg" alt="" /></a></div>
	</div>
</div>

<!-- 상위 전체 메뉴와 꽃사진 코드를 가지고 있는 jsp 수정가능 -->