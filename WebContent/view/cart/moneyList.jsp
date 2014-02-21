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
<%-- ${param.money } << 나오냐 --%>
<br><br>

<div id= "cart">
	<form id="cartList" method="post" enctype="multipart/form-data">
		<table border="0" cellpadding="1" cellspacing="1">
				<tr align="center">
					<td width="70">제품번호</td><!-- p_id -->
					<td width="80">Image</td><!-- good -->
					<td width="80">제품이름</td><!-- p_intro -->
					<td width="250">담은날짜</td><!-- reg_date -->
					<td width="80">가격</td><!-- price -->
					<td width="80">할인</td><!-- sale -->
					<td width="70">적립금</td><!-- cart coin -->
					<td width="70">수량</td><!-- p_num -->
				</tr>
				
<!-- cartList -->
			<c:forEach items="${bean.cartdata }" var="cart" varStatus="no">
				<tr align="center">
					<td><!-- 제품번호 -->
						${cart.p_id}
					</td>
					
					<td><!-- 이미지 -->
						<img src="../view/product/${cart.c_id}/${cart.good }"  width="50" height="50"/>
					</td>
					
					<td><!-- 제품이름 -->
						${cart.p_intro }
					</td>
					
					<td><!-- 담은날짜 -->
						<fmt:formatDate value="${cart.reg_date }" pattern="yy-MM-dd (E) a hh:mm"/>
					</td>
					
					<td><!-- 제품가격 -->
						${cart.price }
					</td>
					
					<td><!-- 할인가격 -->
						${cart.sale }
					</td>
					
					<td><!-- 적립금액 : 적립금 * 수량 -->
						${cart.cartcoin }
					</td>
					
					<td><!-- 수량 -->
						${cart.p_num }
					</td>
					
				</tr>
			
				<c:if test="${no.last}">
					<tr>
						<td align="center" colspan="8">
							<font color="red" >
							 	총 결제금액 : ${param.money }
							</font>
						</td>
					</tr>
				</c:if>
			
			</c:forEach>
		</table>
	</form>
</div>

	<div align="left">
		<h1>주문자 정보</h1>
	</div>

<div id= "join">
	<form id="joinList" method="post" enctype="multipart/form-data">
		<table border="0" cellpadding="1" cellspacing="1">
		
<!-- joinList -->

			<c:forEach items="${bean.joindata }" var="join" varStatus="no">
				<tr align="center">
							<td id="lol" width="50">이름  </td>
							<td width="500">
							<input type="hidden" id="name" value="${join.name }">
							${join.name }</td>
				</tr>
				
				<tr align="center">
							<td id="lol" width="50">주소  </td>
							<td width="500">
							<input type="hidden" id="address" value="${join.address }">
							${join.address }</td>
				</tr>
				
				<tr align="center">
							<td id="lol" width="50">이메일  </td>
							<td width="500">
							<input type="hidden" id="email" value="${join.email }">
							${join.email }</td>
				</tr>
				
				<tr align="center">
							<td id="lol" width="50">전화번호  </td>
							<td width="500">
							<input type="hidden" id="phone" value="${join.phone }">
							${join.phone }</td>			
				</tr>			
			</c:forEach>
			
		</table>
	</form>
</div>

	<div align="left">
		<h1>배송지 정보 AnD 결제 정보</h1>
	</div>
	
<div id= "join">
	<form action="../info/payment?j_id=${sid }&chknum=1" method="post" enctype="multipart/form-data">
		<input type="hidden" id="money" value="${param.money }">
		<table border="0" cellpadding="1" cellspacing="1">
			<c:forEach items="${bean.joindata }" var="bye" varStatus="no">
				<tr>
					<td align="center">성 명</td>
					<td><input value="${bye.name }" type="text" onFocus="this.value=''; return true;" name="name" size="10" maxlength="10"></td>
				</tr>
				
				<tr>
					<td align="center">주 소</td>
					<td><input value="${bye.address }" type="text" onFocus="this.value=''; return true;" name="address"></td>
				</tr>
				
				<tr>
					<td align="center">이 메 일</td>
					<td><input value="${bye.email }" type="text" onFocus="this.value=''; return true;" name="email" size="30" maxlength="20"></td>
				</tr>
				
				<tr>
					<td align="center">전화번호</td>
					<td><input value="${bye.phone }" type="text" onFocus="this.value=''; return true;" name="phone"></td>
				</tr>
				
				<tr>
					<td align="center">카드회사</td>
					<td>
						<select name="card">
							 <option value="">카드선택</option>
							 <option value="국민은행">국민은행</option>
							 <option value="기업은행" selected="selected">기업은행</option>
							 <option value="농협">농협</option>
						</select>
					
					</td>
				</tr>
				
				<tr>
					<td align="center">카드번호</td>
					<td><input type="text" name="cardnum"></td>
				</tr>
				
				<tr>
					<td align="center">비밀번호</td>
					<td><input type="text" name="pw"></td>
				</tr>
				
				<tr>
					<td colspan="4" align="center">
						<input type="submit" value="결제완료">
						<input type="reset" value="다시작성">
					</td>
				</tr>
				
			</c:forEach>
		</table>
	</form>
</div>		
	
			


</body>
</html>