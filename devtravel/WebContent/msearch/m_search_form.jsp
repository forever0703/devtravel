<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<form action="<%=request.getContextPath()%>/msearch/m_search_list.jsp" method="post">
	<select name="sk">
	    <option value="user_id">���̵�</option>
	    <option value="user_level">����</option>
	    <option value="user_name">�̸�</option>
	    <option value="user_gender">����</option>
	    <option value="user_ph">��ȭ��ȣ</option>
	    <option value="user_add">�ּ�</option>
	</select>
	<input type="text" name="sv">
	<input type="submit" value="�˻���ư">
</form>
