<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<form action="boardPw" method="post">
<input type="hidden" name="url" value="${bean.url }">
<input type="hidden" name="id" value="${bean.id }">
<input type="hidden" name="page" value="${bean.page }">
<table cellpadding="1" cellspacing="1" border="1">
<tr>
	<td>��ȣ</td>
	<td><input type="password" name="pw"></td>
</tr>
<tr>
	<td colspan="2" align="center">
		<input type="submit" value="Ȯ��">
		<input type="button" value="�ڷ�" onclick="history.go(-1)">
	</td>
</tr>


</table>


</form>
