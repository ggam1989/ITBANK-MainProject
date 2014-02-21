<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<html>
<body>
<div>
	<h1><b>결제 정보</b></h1>
</div>


<div id= "cart">	
	<form id="ddd" method="post" enctype="multipart/form-data">
	
		<table border="0" cellpadding="1" cellspacing="1">
				<tr align="center">
					<td width="70">제품번호</td><!-- p_id -->
					<td width="80">Image</td><!-- good -->
					<td width="80">제품이름</td><!-- p_intro -->
					<td width="250">담은날짜</td><!-- reg_date -->
					<td width="80">제품가격</td><!-- price -->
					<td width="80">할인가격</td><!-- sale -->
					<td width="70">적립코인</td><!-- cart coin -->
					<td width="50">수량</td><!-- p_num -->
					<td width="80">총결제금액</td><!-- sump -->
					<td width="80">결제정보</td><!-- 결제정보 -->
				</tr>

<!-- chknum-1 -->


	<c:forEach items="${bean.data}" var="list" varStatus="no">	
					<tr align="center">	
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
						
						<td><!-- 결제정보 -->
							<c:choose>
								<c:when test="${list.chknum==1 }">
									결제완료						
								</c:when>
								
								<c:when test="${list.chknum==5 }">
									결제취소							
								</c:when>
								
							</c:choose>
						</td>
					</tr>
	</c:forEach>
	
			</table>
	</form>
</div>

</body>
</html>