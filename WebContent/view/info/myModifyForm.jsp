<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="ct" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<h1>���� ����</h1>

<style type="text/css">
	
	#mine{position:absolute;top:100px;left:100px;border:1 solid #aaaaaa;} 
	
</style>

<div id="mine">
	<form name="frm" action="myModify" method="post" enctype="multipart/form-data">
	<input type="hidden" name="j_id"  value="${bean.j_id }">
		<table cellpading="1" cellspacing="1" border="0">
	
			<tr>
					<td colspan="2" align="center" bgcolor="yellow"><font size="5" color="red">��������</font></td>
			</tr>
			
				<tr>
					<td align="center">�� ��</td>
					<td><input type="text" name="name" size="10" maxlength="7"></td>
				</tr>
	
				<tr>
					<td align="center">�н�����</td>
					<td><input type="password" name="pass" size="30" maxlength="20"></td>
				</tr>
	
				<tr>
				<td align="center">�� �� ��</td>
					<td><input type="text" name="email" size="30" maxlength="20"></td>
				</tr>
				
				<tr>
					<td align="center">����</td>
					<td><input type="text" name="birth">
					</td>
				</tr>
				
				<tr>
					<td align="center">�� ��</td>
					<td><input type="radio" name="sex" value="m">����
	 					<input type="radio" name="sex" value="fm">����
					</td>
				</tr>
	
			
				<tr>
					<td align="center">��ȭ��ȣ</td>
					<td><input type="text" name="phone"></td>
				</tr>
			
				<tr>
					<td align="center">�ּ�</td>
					<td><input type="text" name="address" size="60" maxlength="50"></td>
				</tr>
	
			<tr>
				<td></td>
				<td colspan="2" align="center">
					<input type="submit" value="�ۼ�">
					<input type="button" value="���" onclick="location.href='myModifyForm?j_id=${bean.j_id}'">
					<input type="button" value="�ڷ�" onclick="location.href='myDetail?j_id=${bean.j_id}'"></td>
			</tr>
	
		</table>
	</form>
</div>
