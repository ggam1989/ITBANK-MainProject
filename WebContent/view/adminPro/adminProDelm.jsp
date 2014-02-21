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
	<form action="adminProDelname">	
	<input type="hidden" name="c_id"  value="${bean.c_id }">
		<table border="0">
			<tr>	
				<td>
					삭제할 상품의 ${bean.c_id } 카테고리의 메뉴 선택 :
					<select name="content">
						<c:forEach items="${bean.data }" var="list" varStatus="no">
							<option value="${list.content }">${list.content }</option>
						</c:forEach>
					</select>
				</td>
				
				<td>
					<input type="image" src="../img/btn_confirm.gif" onClick="this.disabled=true; this.form.submit()">
				</td>
				
			</tr>	
		</table>	
	</form>
</div>	


</body>
</html>