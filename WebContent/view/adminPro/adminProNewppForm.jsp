<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Insert title here</title>

<style type="text/css">
	#dd{position:absolute;top:100px;left:100px;border:1 solid #aaaaaa;} 
</style>

</head>
<body>

<div id="dd">

	<form name="adminProNewWrite" action="adminProNewWrite" method="post" enctype="multipart/form-data">
		<input type="hidden" name="c_id" value="${bean.c_id }">
		<input type="hidden" name="content" value="${bean.content }">
		<input type="hidden" name="cnt" value=0>
		
		<table border="0" cellpadding="1" cellspacing="1">
		
			<tr>
				<td>
						&nbsp; ī�װ� ${bean.c_id }  -  �޴� ${bean.content } �� ��ǰ �߰� &nbsp;  
				</td>
			</tr>
			
			<tr>
				<td class="td"> ��ǰ �̸� : <input type="text" name="p_intro" maxlength="10"></td>
			</tr>
			
			<tr>
				<td class="td"> ��ǰ ���� : <input type="text" name="price" maxlength="10"></td>
			</tr>
			
			<tr>
				<td class="td"> ���� ���� : <input type="text" name="sale" maxlength="10"></td>
			</tr>
			
			<tr>
				<td class="td"> ���� �ݾ� : <input type="text" name="cartcoin" maxlength="10"></td>
			</tr>
			
			<tr>
				<td class="td"> ī�װ� ���� : <input type="file" name="proupc"></td>
			</tr>
			
			<!-- ������ ���� 1�� ī�װ� �����̸� ����� Ȯ��� �����̴�. -->
			<tr>
				<td class="td"> ������ ����-1 : <input type="file" name="proupd"></td>
			</tr>
			
			<tr>
				<td align="center">
					<input type="image" src="../img/btn_confirm.gif">
	 				<input type="image" src="../img/btn_cancel.gif" onclick="document.adminProNewWrite.reset()" >
				</td>
			</tr>

		
		
		</table>
	</form>		
</div>
		
</body>
</html>