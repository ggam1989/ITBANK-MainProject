<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<form action="boardReply" method="post" enctype="multipart/form-data">
<input type="hidden" name="id" value="${bean.id }">
<input type="hidden" name="page" value="${bean.page }">
<input type="hidden" name="last" value="${bean.last }">
<table cellpadding="1" cellspacing="1" border="1">
<tr>
	<td>제목</td>
	<td><input type="text" name="title" value="${bean.title }"></td>
</tr>
<tr>
	<td>작성자</td>
	<td><input type="text" name="pname"></td>
</tr>
<tr>
	<td>암호</td>
	<td><input type="text" name="pw"></td>
</tr>
<tr>
	<td>내용</td>
	<td><textarea rows="5" cols="50" name="content">${bean.content }</textarea></td>
</tr>

<tr>
	<td colspan="2" align="center">
		<input type="submit" value="작성">
		<input type="reset" value="취소">
		<input type="button" value="뒤로" onclick="history.go(-1)">
	</td>
</tr>


</table>


</form>
