<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ct" tagdir="/WEB-INF/tags" %>

<style type="text/css">
	
	#mine{position:absolute;top:100px;left:100px;border:1 solid #aaaaaa;} 
	#mine table .minetd{padding:5px 0; text-align:center; width: 10%}
	
</style>

		<h1>���� ����</h1>

<div id=mine>

	<c:forEach items="${bean.data }" var="list" varStatus="no">
		<table border="0" cellpadding="1" cellspacing="1">
			
					
			<tr align="right">	
					<td colspan="2" align="right">
					   <a href="myModifyForm?j_id=${list.j_id}">��������</a>
					   <a href="myDelete?j_id=${list.j_id}">Ż��</a>
				   </td>
			</tr>
			
			<tr class="minetr" align="center">	
				<td class="minetd">���̵�</td><td class="minetd">${list.j_id }</td>
			</tr>
			
			<tr class="minetr" align="center">
				<td class="minetd">�̸�</td><td class="minetd">${list.name }</td>
			</tr>
			
			<tr class="minetr" align="center">
				<td class="minetd">����</td><td class="minetd">${list.birth }</td>
			</tr>
			
		 	<tr class="minetr" align="center">
				<td class="minetd">��й�ȣ</td><td class="minetd">${list.pass }</td>
			</tr> 
			
			<tr class="minetr" align="center">
				<td class="minetd">�ּ�</td><td class="minetd">${list.address }</td>
			</tr>
			
			<tr class="minetr" align="center">
				<td class="minetd">��ȭ��ȣ</td><td class="minetd">${list.phone }</td>
			</tr>
			
			<tr class="minetr" align="center">
				<td class="minetd">�̸���</td><td class="minetd">${list.email }</td>
			</tr>
			
			<tr class="minetr" align="center">
				<td class="minetd">����</td><td class="minetd">${list.sex }</td>
			</tr>
			
		</table>
	</c:forEach>
	</div>
