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
	<form action="adminProNewccForm">
	<input type="hidden" name="c_id" value="${param.c_id }">
		<table border="0">
			<tr>
				<td>
				${param.c_id} ī�װ��� ���ο� �޴� ���� �� ��ǰ�߰� : 
					<input type="text" name="content" />
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