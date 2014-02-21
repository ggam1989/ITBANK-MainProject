<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     

<table border="0" cellpadding="1" cellspacing="1">
	<tr align="center">
		<td width="50">번호</td>
		<td width="300">제목</td>
		<td width="70">작성자</td>
		<td width="200">작성일</td>
		<td width="50">조회</td>
	</tr>
<c:forEach items="${bean.data}" var="list" varStatus="no">	
	<tr align="center">
		<%-- <td>${(bean.page-1)*bean.limit+no.index+1}</td> --%>
		<td>${bean.cnt-((bean.page-1)*bean.limit+no.index)}</td>
		<td  align="center">
			<c:forEach begin="1" end="${list.ref }">
			&nbsp;&nbsp;
			</c:forEach>
			<c:if test="${list.ref!=0 }">
			┗
			</c:if>
			
			<a href="boardDetail?id=${list.id }&page=${bean.page}<c:if test="${bean.limit==no.index+1}">&last=${bean.page+1}</c:if>">
			${list.title }</a>
			
		</td>
		<td>${list.pname }</td>
		<td>
	<fmt:formatDate value="${list.reg_date }" pattern="yy-MM-dd (E) a hh:mm"/>
		</td>
		<td>${list.cnt }</td>
	</tr>
</c:forEach>
	<tr align="center"><td colspan="5">
	<c:if test="${bean.startPage>1 }">
		<a href="?page=1">◀◀</a>&nbsp;&nbsp;
		<a href="?page=${bean.startPage-1}">◀</a>
	</c:if>
	
	<c:forEach begin="${bean.startPage}" end="${bean.endPage}" var="i">
	<c:choose>
		<c:when test="${bean.page==i }">
			[${i}]
		</c:when>
		<c:otherwise>
		<a href="?page=${i}">${i}</a> &nbsp;
		</c:otherwise>
	</c:choose>
	</c:forEach>
	<c:if test="${bean.endPage<bean.maxPage }">
		<a href="?page=${bean.endPage+1}">▶</a>&nbsp;&nbsp;
		<a href="?page=${bean.maxPage }">▶▶</a>
	</c:if>
	</td></tr>

<c:if test="${bean.data==null }">
	<tr align="center"><td colspan="5">데이터가 없습니다.</td></tr>
</c:if>
	<tr align="right"><td colspan="5"><a href="boardWriteForm">글쓰기</a></td></tr>
</table>
