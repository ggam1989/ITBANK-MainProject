<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<html>
<head>
<title>Insert title here</title>

<style type="text/css">
	#dd{position:absolute;top:100px;left:100px;} 
</style>

</head>
<body>

	<div id="dd">
	<form action="adminProNewcc">
		<table border="0">
			<tr>
				<td>
				새로운 카테고리 생성 상품추가 : 
					<input type="text" name="c_id">
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