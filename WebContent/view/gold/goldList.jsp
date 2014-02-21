<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<html>
<body>

<div>
	<h1><b>�����������</b></h1>
</div>

<div id= "gold">	
	<form id="ddd" method="post" enctype="multipart/form-data">

<c:set var="test" value="999"/>
<c:set var="chk" value=""/>
		
		<table border="0" cellpadding="1" cellspacing="1">
				<tr align="center">
					<td width="90">�����̵�</td><!-- j_id -->
					<td width="70">��ǰ��ȣ</td><!-- p_id -->
					<td width="80">Image</td><!-- good -->
					<td width="80">��ǰ�̸�</td><!-- p_intro -->
					<td width="250">������¥</td><!-- reg_date -->
					<td width="80">��ǰ����</td><!-- price -->
					<td width="80">���ΰ���</td><!-- sale -->
					<td width="70">��������</td><!-- cart coin -->
					<td width="50">����</td><!-- p_num -->
					<td width="80">�Ѱ����ݾ�</td><!-- sump -->
					
					<td width="80">��������</td><!-- sump -->
					
				</tr>

	<c:forEach items="${bean.data}" var="list" varStatus="no">	
			<c:if test="${ test == '999' }">
				<c:set var="test" value="${list.j_id }"/>
				<c:set var="chk" value="${list.chknum }"/>
				
			</c:if>
			
			<c:if test="${test != list.j_id }">
				<tr>
					<td colspan="10" align="center">
						----------------------------------------------------------------------------------------------
					</td>
				</tr>
			<c:set var="test" value="${list.j_id }" />
			<c:set var="chk" value="${list.chknum }" />
			</c:if>
			
			
			
					<tr align="center">	
						<td><!-- ���̵� -->
							<input readonly="readonly" type="hidden" id="j_id" value="${list.j_id }" size="6">
							${list.j_id}
						</td>
						
						<td><!-- ��ǰ��ȣ -->
							<input readonly="readonly" type="hidden" id="p_id" value="${list.p_id }" size="6">
							${list.p_id}
						</td>
						
						<td><!-- Image -->
							<img src="../view/product/${list.c_id}/${list.good }"  width="50" height="50"/>
						</td>
						
						<td><!-- ��ǰ�̸� -->
							<a href ="../product/productDetail?p_id=${list.p_id }&c_id=${list.c_id}">
							${list.p_intro }</a>
						</td>
							
						<td><!-- ������¥ -->
							<fmt:formatDate value="${list.reg_date }" pattern="yy-MM-dd (E) a hh:mm"/>
						</td>
						
						<td><!-- ��ǰ���� -->
							<input readonly="readonly" type="hidden" id="price" value="${list.price }" size="6">
							${list.price }
						</td>
						
						<td><!-- ���ΰ��� -->
							<input readonly="readonly" type="text" id="sale" value="${list.sale }" size="6">
						</td>
		
						<td><!-- �������� -->
							<input readonly="readonly" type="text" id="cartcoin" value="${list.cartcoin }" size="6">
						</td>
							
						<td><!-- ���� -->
							<input readonly="readonly" type="text" id="p_num" value="${list.p_num}" size="6">
						</td>
						
						<td><!-- �Ѱ����ݾ� -->
							<input readonly="readonly" type="text" id="pricert" value="${(list.price - list.sale) * list.p_num}" size="6">
						</td>
				
						<td>
						<!-- 1�϶�(�����Ϸ����)->�� Ȯ�� �� ����ؼ� 2��(��ۻ���)-->
						<!-- 4�϶�(������һ���)->�� Ȯ�� �� ȯ���ְ� 5��(�ŷ����)-->
							<c:choose>
							
								<c:when test="${list.chknum==1 }">
										<a href="goldRt?reg_date_str=${list.reg_date_str }&j_id=${list.j_id}&p_id=${list.p_id}"><font color="blue">�Ϸ�->Ȯ��</font></a> 
								</c:when>
							
								<c:otherwise>
										<a href="goldcc?reg_date_str=${list.reg_date_str }&j_id=${list.j_id}&p_id=${list.p_id}"><font color="red">���->Ȯ��</font></a> 
								</c:otherwise>
							
							</c:choose>
						</td>
					</tr>
	</c:forEach>
			
			
					
	
	
			</table>
	</form>
</div>

</body>
</html>