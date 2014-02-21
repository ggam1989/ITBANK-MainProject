<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ct" tagdir="/WEB-INF/tags" %>
   
<table border="1" cellpadding="1" cellspacing="1">
	<tr align="center">		
		<td >제목</td><td>${bean.title }</td>
	</tr>
	<tr align="center">
		<td >작성자</td><td>${bean.pname }</td>
	</tr>
	<tr align="center">
		<td >작성일</td>
		<td>
	<fmt:formatDate value="${bean.reg_date }" pattern="yy-MM-dd (E) a hh:mm"/>
		</td>
	</tr>
	<tr align="center">
		<td >조회</td><td>${bean.cnt }</td>
	</tr>
	<tr align="center">
		
		<td>내용</td><td>

		<ct:replace str="${bean.content }"/>
		</td>
	</tr>
	<c:if test="${bean.upfile!='null' && bean.upfile!=null}">
	
	<!-- 확장자 이미지 처리 custom tag -->
	<ct:ext str="${bean.upfile}" var="ext"/>
	<c:choose>

		<c:when test="${ext}">
			<tr align="center">
				<td >이미지</td><td>
					<!-- encoding 처리 custom tag -->
					<img src="../view/notice/up/<ct:encoder str='${bean.upfile }'/>" >
				</td>
			</tr>
		</c:when>
		<c:otherwise>
			<tr align="center">
				<td >파일</td><td>${bean.upfile }</td>
			</tr>
		</c:otherwise>
	</c:choose>
	</c:if>
	<tr align="center">
		<td colspan="2">
			<a href="boardPwForm?id=${bean.id}&url=boardModifyForm&page=${bean.page}">수정</a>		
			<a href="boardPwForm?id=${bean.id}&url=boardDelete&page=${bean.page}">삭제</a>
			<a href="boardReplyForm?id=${bean.id}&page=${bean.page}&last=${bean.last}">답변</a>
			<a href="boardList?page=${bean.page}">리스트로</a>
		</td>
	</tr>
</table>
