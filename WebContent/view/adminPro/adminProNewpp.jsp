<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<html>
<head>
<title>Insert title here</title>

<style type="text/css">
	#dd{position:absolute;top:100px;left:100px;border:1 solid #aaaaaa;} 
</style>

</head>
<body>

<div id="dd"	>
	<form action="adminProNewppForm">
	<input type="hidden" name="c_id"  value="${bean.c_id }">
	<table border="0">
		<tr>
			<td>
				 ${bean.c_id } 카테고리의 새로운 메뉴 생성 후 상품추가 : 
					<input type="text" name="content" />
			</td>
			<td>
					<input type="image" src="../img/btn_confirm.gif" onClick="this.disabled=true; this.form.submit()">
			</td>
		</table>
	</form>	
	
	<form action="adminProNewppForm">	
	<input type="hidden" name="c_id"  value="${bean.c_id }">
		<table border="0">
		<tr>	
			<td>
				 ${bean.c_id } 카테고리의 기존 메뉴에 상품 추가 :
				<select name="content">
					<c:forEach items="${bean.data }" var="list" varStatus="no">
						<option value="${list.content }">${list.content }</option>
					</c:forEach>
				</select>
			</td>
			<td>
					<input type="image" src="../img/btn_confirm.gif" onClick="this.disabled=true; this.form.submit()">
			</td>
			
			</td>
		</tr>	
	</table>	
	</form>
</div>	


</body>
</html>