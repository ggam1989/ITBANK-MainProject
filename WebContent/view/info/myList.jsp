<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>productList</title>
<script type="text/javascript">
function imgChange(imgPath) {
	
	var topImgId = document.getElementById("topImg");
	topImgId.src = imgPath;
	
}
</script>
</head>
<body>

<form action="joinWrite" method="post" enctype="multipart/form-data">

	<table border="0" cellpadding="1" cellspacing="1" width="100%">
 		<tr align="center">
		<c:forEach items="${bean.data }" var="list" varStatus="no">
			
			<tr>
				<td colspan="2" align="center" bgcolor="fff000">ȸ������</td>
			</tr>
			
			<tr>
				<td align="center">�� ��</td>
				<td><input type="text" name="name" size="10" maxlength="7">${list.name}</td>
			</tr>
			
			<tr>
				<td align="center">�� �� ��</td>
				<td><input type="text" name="j_id" size="10" maxlength="7">
					<!-- <input type="button" name="j_id_h" size="50" value="ID�ߺ�Ȯ��"> --></td>
			<tr>

			<tr>
				<td align="center">�н�����</td>
				<td><input type="password" name="pass" size="30" maxlength="20"></td>
			</tr>

			<tr>
				<td align="center">�� �� ��</td>
				<td><input type="text" name="email" size="30" maxlength="20"></td>
			</tr>
			
			<tr>
				<td align="center">�� ��</td>
				<td><input type="text" name="address"></td>
			</tr>
			
			<tr>
				<td align="center">����</td>
				<td><input type="text" name="birth"></td>
			</tr>
			
			<tr>
				<td align="center">�� ��</td>
				<td><input type="radio" name="sex" value="m" >����
 					<input type="radio" name="sex" value="fm" >����</td>
			</tr>

			<tr>
				<td align="center">��ȭ��ȣ</td>
				<td><input type="text" name="phone"></td>
			</tr>
			
			
			<%-- <td  align="center">
				<ul>
					<li><h1>ȸ������</h1></li>
					<li>${list.name }</li>
					<li>${list.j_id }</li>
					<li>${list.pass }</li>
					<li>${list.email }</li>
					<li>${list.address }</li>
					<li>${list.birth }</li>
					<li>${list.sex }</li>
					<li>${list.phone }</li>			
				</ul>		
			</td> --%>
			
		</c:forEach>
		</tr> 
			
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="����">
			</td>
		</tr>
	
	</table>
	</form>
</body>
</html>