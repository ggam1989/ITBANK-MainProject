<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style type="text/css">
	#join{margin-left: 50px;}
	#lol td {background-color : #E8D9FF;}
</style>

</head>
<body>
<%-- ${param.money } << ������ --%>
<br><br>

<div id= "cart">
	<form id="cartList" method="post" enctype="multipart/form-data">
		<table border="0" cellpadding="1" cellspacing="1">
				<tr align="center">
					<td width="70">��ǰ��ȣ</td><!-- p_id -->
					<td width="80">Image</td><!-- good -->
					<td width="80">��ǰ�̸�</td><!-- p_intro -->
					<td width="250">������¥</td><!-- reg_date -->
					<td width="80">����</td><!-- price -->
					<td width="80">����</td><!-- sale -->
					<td width="70">������</td><!-- cart coin -->
					<td width="70">����</td><!-- p_num -->
				</tr>
				
<!-- cartList -->
			<c:forEach items="${bean.cartdata }" var="cart" varStatus="no">
				<tr align="center">
					<td><!-- ��ǰ��ȣ -->
						${cart.p_id}
					</td>
					
					<td><!-- �̹��� -->
						<img src="../view/product/${cart.c_id}/${cart.good }"  width="50" height="50"/>
					</td>
					
					<td><!-- ��ǰ�̸� -->
						${cart.p_intro }
					</td>
					
					<td><!-- ������¥ -->
						<fmt:formatDate value="${cart.reg_date }" pattern="yy-MM-dd (E) a hh:mm"/>
					</td>
					
					<td><!-- ��ǰ���� -->
						${cart.price }
					</td>
					
					<td><!-- ���ΰ��� -->
						${cart.sale }
					</td>
					
					<td><!-- �����ݾ� : ������ * ���� -->
						${cart.cartcoin }
					</td>
					
					<td><!-- ���� -->
						${cart.p_num }
					</td>
					
				</tr>
			
				<c:if test="${no.last}">
					<tr>
						<td align="center" colspan="8">
							<font color="red" >
							 	�� �����ݾ� : ${param.money }
							</font>
						</td>
					</tr>
				</c:if>
			
			</c:forEach>
		</table>
	</form>
</div>

	<div align="left">
		<h1>�ֹ��� ����</h1>
	</div>

<div id= "join">
	<form id="joinList" method="post" enctype="multipart/form-data">
		<table border="0" cellpadding="1" cellspacing="1">
		
<!-- joinList -->

			<c:forEach items="${bean.joindata }" var="join" varStatus="no">
				<tr align="center">
							<td id="lol" width="50">�̸�  </td>
							<td width="500">
							<input type="hidden" id="name" value="${join.name }">
							${join.name }</td>
				</tr>
				
				<tr align="center">
							<td id="lol" width="50">�ּ�  </td>
							<td width="500">
							<input type="hidden" id="address" value="${join.address }">
							${join.address }</td>
				</tr>
				
				<tr align="center">
							<td id="lol" width="50">�̸���  </td>
							<td width="500">
							<input type="hidden" id="email" value="${join.email }">
							${join.email }</td>
				</tr>
				
				<tr align="center">
							<td id="lol" width="50">��ȭ��ȣ  </td>
							<td width="500">
							<input type="hidden" id="phone" value="${join.phone }">
							${join.phone }</td>			
				</tr>			
			</c:forEach>
			
		</table>
	</form>
</div>

	<div align="left">
		<h1>����� ���� AnD ���� ����</h1>
	</div>
	
<div id= "join">
	<form action="../info/payment?j_id=${sid }&chknum=1" method="post" enctype="multipart/form-data">
		<input type="hidden" id="money" value="${param.money }">
		<table border="0" cellpadding="1" cellspacing="1">
			<c:forEach items="${bean.joindata }" var="bye" varStatus="no">
				<tr>
					<td align="center">�� ��</td>
					<td><input value="${bye.name }" type="text" onFocus="this.value=''; return true;" name="name" size="10" maxlength="10"></td>
				</tr>
				
				<tr>
					<td align="center">�� ��</td>
					<td><input value="${bye.address }" type="text" onFocus="this.value=''; return true;" name="address"></td>
				</tr>
				
				<tr>
					<td align="center">�� �� ��</td>
					<td><input value="${bye.email }" type="text" onFocus="this.value=''; return true;" name="email" size="30" maxlength="20"></td>
				</tr>
				
				<tr>
					<td align="center">��ȭ��ȣ</td>
					<td><input value="${bye.phone }" type="text" onFocus="this.value=''; return true;" name="phone"></td>
				</tr>
				
				<tr>
					<td align="center">ī��ȸ��</td>
					<td>
						<select name="card">
							 <option value="">ī�弱��</option>
							 <option value="��������">��������</option>
							 <option value="�������" selected="selected">�������</option>
							 <option value="����">����</option>
						</select>
					
					</td>
				</tr>
				
				<tr>
					<td align="center">ī���ȣ</td>
					<td><input type="text" name="cardnum"></td>
				</tr>
				
				<tr>
					<td align="center">��й�ȣ</td>
					<td><input type="text" name="pw"></td>
				</tr>
				
				<tr>
					<td colspan="4" align="center">
						<input type="submit" value="�����Ϸ�">
						<input type="reset" value="�ٽ��ۼ�">
					</td>
				</tr>
				
			</c:forEach>
		</table>
	</form>
</div>		
	
			


</body>
</html>