<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ct" tagdir="/WEB-INF/tags" %>

	<h1>ȸ������</h1>

<style type="text/css">
	
	#join{position:absolute;top:100px;left:100px;border:1 solid #aaaaaa;} 
	#join table .jointd{padding:5px 0; text-align:center;}
	
</style>

<div id=join>
	<table border="0" cellpadding="1" cellspacing="1">
		
		<tr class="jointr" align="center">	
			<td class="jointd">���̵�</td><td class="jointd">${bean.j_id }</td>
		</tr>
		
		<tr class="jointr" align="center">
			<td class="jointd">�̸�</td><td class="jointd">${bean.name }</td>
		</tr>
		
		<tr class="jointr" align="center">
			<td class="jointd">����</td><td class="jointd">${bean.birth }</td>
		</tr>
		
	 	<tr class="jointr" align="center">
			<td class="jointd">��й�ȣ</td><td class="jointd">${bean.pass }</td>
		</tr> 
		
		<tr class="jointr" align="center">
			<td class="jointd">�ּ�</td><td class="jointd">${bean.address }</td>
		</tr>
		
		<tr class="jointr" align="center">
			<td class="jointd">��ȭ��ȣ</td><td class="jointd">${bean.phone }</td>
		</tr>
		
		<tr class="jointr" align="center">
			<td class="jointd">�̸���</td><td class="jointd">${bean.email }</td>
		</tr>
		
		<tr class="jointr" align="center">
			<td class="jointd">����</td><td class="jointd">${bean.sex }</td>
		</tr>
		
	
		<tr class="jointr" align="center">	
				<td class="jointd" colspan="2">
				   <a href="joinModifyForm?j_id=${bean.j_id}">��������</a>
				   <a href="joinDelete?j_id=${bean.j_id}">����</a>
				   <a href="joinList">ȸ������Ʈ��</a>
			   </td>
		</tr>
		
	</table>
	</div>
