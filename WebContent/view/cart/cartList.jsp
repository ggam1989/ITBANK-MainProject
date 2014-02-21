<%@page import="dao.ParamBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	ParamBean bean = (ParamBean)request.getAttribute("bean");
	List list = (List)bean.getData();
	int xx = list.size();
%>
<c:set var="maxp" value="<%=xx %>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>

<style type="text/css">
	#cart{position:absolute;top:100px;border:1 solid #aaaaaa;} 
	
</style>

<script type="text/javascript" src="../view/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" LANGUAGE=javascript>
window.onload=function(){
	sumsum(<%= xx %>);
}
function CartWaringmsg() {
	var put=confirm("정말 삭제하시겠습니까??");
	if (put==true) location.href='../cart/cartOut?j_id=${sid}';

}
function CartWaringmsgOne(a,b) {
	var put=confirm("정말 삭제하시겠습니까??");
	if (put==true) location.href='../cart/cartOutOne?reg_date_str='+a+'&j_id=${sid}&p_id='+b;

}

function wmsg() {
		var put = confirm("결제하시겠습니까?");
		var inint = $('#sump').attr('value');
				if (put == true) {
					ddd.action="../cart/moneyList?money="+inint;
					
		}
	}
	
function in_up(pnum, maxs){
	var pp = document.getElementById("pnum"+pnum);
	var prt = document.getElementById("pricert"+pnum);
	var sa = document.getElementById("price"+pnum);
	var ss = document.getElementById("sale"+pnum);
	var ppid = document.getElementById("p_id"+pnum);
		pp.value++;
	prt.value= (sa.value-ss.value)*pp.value;
	var allp = document.getElementById("sump");
	allp.value=Number(allp.value)+Number(sa.value-ss.value);
	ddd.action="../cart/cartIn_r?p_num="+pp.value+"&p_id="+ppid.value;
	
}	
function in_down(pnum, maxs){
	var pp = document.getElementById("pnum"+pnum);
	var prt = document.getElementById("pricert"+pnum);
	var sa = document.getElementById("price"+pnum);
	var ss = document.getElementById("sale"+pnum);
	var ppid = document.getElementById("p_id"+pnum);
		if(pp.value>1){
			pp.value--;
		}
	prt.value= (sa.value-ss.value)*pp.value;
	var allp = document.getElementById("sump");
	allp.value=Number(allp.value)-Number(sa.value-ss.value);
	ddd.action="../cart/cartIn_r?p_num="+pp.value+"&p_id="+ppid.value;
	
}	

function sumsum(listsize){
	var allp = document.getElementById("sump");
	for(var i = 1; i<=listsize; i++){
		var pp = document.getElementById("pricert"+i);
		allp.value= Number(allp.value)+ Number(pp.value);
	}
}

function sumsum2(listsize){
	var aa  = 0;
	var allp = document.getElementById("sump");
	for(var i = 1; i<=listsize; i++){
		var pp = document.getElementById("pricert"+i);
		aa+=Number(pp.value);
	}
	allp.value= Number(allp.value)-Number(aa);
}
</script>
</head>
<body>

<h1>결제정보</h1>

<div id= "cart">
	<form id="ddd" method="post" enctype="multipart/form-data">
	
		<table border="0" cellpadding="1" cellspacing="1">
				<tr align="center">
					<td width="70">제품번호</td><!-- p_id -->
					<td width="80">Image</td><!-- good -->
					<td width="80">제품이름</td><!-- p_intro -->
					<td width="250">담은날짜</td><!-- reg_date -->
					<td width="80">가격</td><!-- price -->
					<td width="80">할인</td><!-- sale -->
					<td width="70">적립금</td><!-- cart coin -->
					<td width="50">수량</td><!-- p_num -->
					<td width="80">총결제금액</td><!-- sump -->
					<td width="80">삭제</td><!-- 삭제 -->
					
				</tr>
		<c:forEach items="${bean.data}" var="list" varStatus="no">	
			
			<tr align="center">	
			
				<td><!-- 제품번호 -->
					<input readonly="readonly" type="hidden" id="p_id${no.index+1 }" value="${list.p_id }" size="6">
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
					<input readonly="readonly" type="hidden" id="price${no.index+1 }" value="${list.price }" size="6">
					${list.price }
				</td>
				
				<td><!-- 할인가격 -->
					<input readonly="readonly" type="text" id="sale${no.index+1 }" value="${list.sale }" size="6">
				</td>
					
				<td><!-- 적립금액 : 적립금 * 수량 -->
					<input readonly="readonly" type="text" id="cartcoin${no.index+1 }" value="${list.cartcoin}" size="6">
				</td>
				
				<td >
					<input type="text" readonly="readonly" id="pnum${no.index+1 }"  value="${list.p_num }" style="width:50px;">
					<input type="image" onclick="in_up('${no.index+1 }','${maxp }')" src="../view/img/basket_up.gif">
					<input type="image" onclick="in_down('${no.index+1 }','${maxp }')" src="../view/img/basket_down.gif">
						<%-- <a href="javascript:in_up('${no.index+1 }','${maxp }')"><img src="../view/img/basket_up.gif"></a>	   --%>
						<%-- <a href="javascript:in_down('${no.index+1 }','${maxp }')"><img src="../view/img/basket_down.gif"></a> --%>
				</td>
		
			 		
		 		<td>
		 			<input readonly="readonly" id="pricert${no.index+1 }" value="${(list.price * list.p_num)-(list.sale * list.p_num)}">
		 		</td>
		 		
		 		<td>
		 			<a href="javascript:CartWaringmsgOne('${list.reg_date_str} }','${list.p_id }')">삭제</a>
		 		</td>
	
			
			</tr>
		
				<c:if test="${no.last }">
				<tr align="right">
				<td colspan="3" align="center"><a href="javascript:CartWaringmsg()"> 장바구니 비우기</a></td>
				<td colspan="3" align="right">총 금액 : &nbsp;</td>
				<td><input readonly="readonly" type="text" name="sump" id="sump"></td><td align="center">won</td></tr>
					<tr><td colspan="10" align="center"><input type="submit" onclick="wmsg()" value="결제하기" > </td></tr>
				</c:if>
			
			</c:forEach>
			
		</table>
	</form>
</div>


</body>
</html>
