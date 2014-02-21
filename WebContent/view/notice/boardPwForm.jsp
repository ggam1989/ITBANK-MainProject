<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<form action="boardPw" method="post">
<input type="hidden" name="url" value="${bean.url }">
<input type="hidden" name="id" value="${bean.id }">
<input type="hidden" name="page" value="${bean.page }">
<table cellpadding="1" cellspacing="1" border="1">
<tr>
	<td>암호</td>
	<td><input type="password" name="pw"></td>
</tr>
<tr>
	<td colspan="2" align="center">
		<input type="submit" value="확인">
		<input type="button" value="뒤로" onclick="history.go(-1)">
	</td>
</tr>


</table>


</form>
