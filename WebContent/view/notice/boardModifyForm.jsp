<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ct" tagdir="/WEB-INF/tags" %>

<script type="text/javascript">

function file_del()
{
	if(confirm("파일을 삭제할까요?"))
	{
		var frm = document.frm;
		frm.action ="boardFileDelete";
		frm.submit();
	}
}


</script>

<form name="frm" action="boardModify" method="post" enctype="multipart/form-data">
<input type="hidden" name="id"  value="${bean.id }">
<input type="hidden" name="page"  value="${bean.page }">

<table cellpadding="1" cellspacing="1" border="1">
<tr>
	<td>제목</td>
	<td><input type="text" name="title" value="${bean.title }"></td>
</tr>
<tr>
	<td>작성자</td>
	<td><input type="text" name="pname" value="${bean.pname }"></td>
</tr>
<tr>
	<td>내용</td>
	<td><textarea rows="5" cols="50" name="content" >${bean.content }</textarea></td>
</tr>

<c:choose>
<c:when test="${bean.upfile!=''}">
	<input type="hidden" name="upfile"  value="${bean.upfile }">
	<!-- 확장자 이미지 처리 custom tag -->
	<ct:ext str="${bean.upfile}" var="ext"/>
	<c:choose>
	
		<%-- <c:when test="${data.extImg}"> --%>
		<c:when test="${ext}">
			<tr align="center">
				<td >이미지</td><td>
				
					<%-- <img src="up/${data.en_upfile }" > --%>
					<!-- encoding 처리 custom tag -->
					<img src="../view/notice/up/<ct:encoder str='${bean.upfile }'/>" >
					<input type="button" value="삭제" onclick="file_del()">
				</td>
			</tr>
		</c:when>
		<c:otherwise>
			<tr align="center">
				<td >파일</td><td>${bean.upfile }</td>
			</tr>
		</c:otherwise>
	</c:choose>
	</c:when>
	<c:otherwise>
		<tr>
			<td>파일</td>
			<td><input type="file" name="up"></td>
		</tr>
	</c:otherwise>
</c:choose>

<tr>
	<td colspan="2" align="center">
		<input type="submit" value="작성">
		<input type="button" value="취소"
		onclick="location.href='boardModifyForm?id=${bean.id}'">
		<input type="button" value="뒤로" 
		onclick="location.href='boardDetail?id=${bean.id}'">
	</td>
</tr>


</table>
</form>


