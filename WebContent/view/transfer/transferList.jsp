<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<html>
<body>

<div id= "trans">	
	<form id="ddd" method="post" enctype="multipart/form-data">

<c:set var="test" value="999"/>
		
		<table border="0" cellpadding="1" cellspacing="1">
				<tr align="center">
					<td width="90">고객아이디</td><!-- j_id -->
					<td width="70">제품번호</td><!-- p_id -->
					<td width="80">Image</td><!-- good -->
					<td width="80">제품이름</td><!-- p_intro -->
					<td width="250">담은날짜</td><!-- reg_date -->
					<td width="80">제품가격</td><!-- price -->
					<td width="80">할인가격</td><!-- sale -->
					<td width="70">적립코인</td><!-- cart coin -->
					<td width="50">수량</td><!-- p_num -->
					<td width="80">총결제금액</td><!-- sump -->
					<td width="80">도착정보</td><!-- 도착정보 -->
				</tr>

	<c:forEach items="${bean.cartdata}" var="list" varStatus="no">	
			<c:if test="${ test == '999' }">
				<c:set var="test" value="${list.j_id }"/>
			</c:if>
			
			<c:if test="${test != list.j_id }">
				<tr>
					<td colspan="10" align="center">
						----------------------------------------------------------------------------------------------
					</td>
				</tr>
			
			<c:set var="test" value="${list.j_id }" />
			</c:if>
			
					<tr align="center">	
						<td><!-- 아이디 -->
							<input readonly="readonly" type="hidden" id="j_id" value="${list.j_id }" size="6">
							${list.j_id}
						</td>
						
						<td><!-- 제품번호 -->
							<input readonly="readonly" type="hidden" id="p_id" value="${list.p_id }" size="6">
							${list.p_id}
						</td>
						
						<td><!-- Image -->
							<img src="../view/product/${list.c_id}/${list.good }"  width="50" height="50"/>
						</td>
						
						<td><!-- 제품이름 -->
							<a href ="../product/productDetail?p_id=${list.p_id }&c_id=${list.c_id}">
							${list.p_intro }</a>
						</td>
							
						<td><!-- 담은날짜 -->
							<fmt:formatDate value="${list.reg_date }" pattern="yy-MM-dd (E) a hh:mm"/>
						</td>
						
						<td><!-- 제품가격 -->
							<input readonly="readonly" type="hidden" id="price" value="${list.price }" size="6">
							${list.price }
						</td>
						
						<td><!-- 할인가격 -->
							<input readonly="readonly" type="text" id="sale" value="${list.sale }" size="6">
						</td>
		
						<td><!-- 적립코인 -->
							<input readonly="readonly" type="text" id="cartcoin" value="${list.cartcoin }" size="6">
						</td>
							
						<td><!-- 수량 -->
							<input readonly="readonly" type="text" id="cartcoin" value="${list.p_num}" size="6">
						</td>
						
						<td><!-- 총결제금액 -->
							<input readonly="readonly" type="text" id="cartcoin" value="${(list.price - list.sale) * list.p_num}" size="6">
						</td>
						
						<td>
							<!-- 배송중인 chknum = 2를 가져와서 배송 택배회사 확인했다하면 도착확인하고 chknum을 3으로 줄꼬얌 -->
							<a href="transRt?reg_date_str=${list.reg_date_str }&j_id=${list.j_id}&p_id=${list.p_id}"><font color="blue">도착완료</font></a>
						</td>
					</tr>
						
	</c:forEach>
					
	
	
			</table>
	</form>
</div>

</body>
</html>