<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<h1>회원리스트</h1>
	
<style type="text/css">
	#join{position:absolute;top:100px;left:100px;border:1 solid #aaaaaa;} 
	#join table .jointd{padding:5px 0; text-align:center;}
	
</style>


<div id=join>
	<table border="0" cellpadding="1" cellspacing="1">
	
	<tr class="jointr" align="right">
		<td align="right" colspan="5">
			<a href = "joinWriteForm">회원추가</a>
		</td>
		
	</tr>
	
	<tr class="jointr" align="center">
		<td class="jointd" width="50"></td>
		<td class="jointd" width="100">아이디</td>
		<td class="jointd" width="250">이름</td>
		<td class="jointd" width="100">주소</td>
		<td class="jointd" width="200">전화번호</td>
	</tr>
	
	

			<c:forEach items="${bean.data }" var="list" varStatus="no">

	<tr class="jointr" align="center">
			
			<td class="jointd">
			 ${no.index+1 }
			</td>
			
			<td class="jointd" align="center">
			<a href ="joinDetail?j_id=${list.j_id }">
			${list.j_id }</a></td>
			
			<td class="jointd" align="center">${list.name }</td>
			<td class="jointd" align="center">${list.address }</td>
			<td class="jointd" align="center">${list.phone }</td>			
		</tr>
			</c:forEach>
			
	<c:if test="${bean.data ==null}">
		<tr class="jointr" align="center">
			<td class="jointd" colspan="5">데이터가 없습니다.</td>
		</tr>
	</c:if>
	
	</table>
	</div>
