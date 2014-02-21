<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	pageContext.setAttribute("crcn", "\r\n");
	pageContext.setAttribute("br", "<br>");
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">


<title>Insert title here</title>
<style type="text/css" title="">
	
	#detail .box_1 {padding:30px 19px;border:0px}
	#detail .box_1 .img {float:left; width:500px; text-align:left;}
	#detail .box_1 .prdinfo {float:left; width:400px; text-align:left;}
	#detail .box_1 .prdinfo table .th {width:40%; padding:5px 0 5px 13px; text-align:left; background:url('../imgimg/bullet_dot.gif') no-repeat left 45%;}
	#detail .box_1 .prdinfo table .td {width:60%; padding:5px 0; text-align:left;}

#dddddd {
	float: inherit;
}

</style>


<script type="text/javascript" src="../view/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" LANGUAGE=javascript>
function wmsg() {
/* 		 alert($('#p_num').attr('value'));  */
		var put = confirm("장바구니에 담으시겠습니까?");
		var inint = $('#p_num').attr('value');
			if(${sid == null || sid == '' }){
				if(put==true) alert("로그인을 하세용");
			}
				
			if(${sid != null || sid != '' }){
				if (put == true) {
					ccc.action="../cart/cartIn?p_num="+inint;
					
			}
		}
	}

function in_1111() {
	var inin = $('#in_12').attr('value');
	$('#in_12').val(parseInt(inin)+1);
 	 var pp = ${bean.price-bean.sale} * (parseInt(inin)+1);
 	$('#price').val(pp); 
 	$('#price22').val(pp);
 	
 	var pnum=$('#in_12').attr('value');
 	$('#p_num').val(pnum);
	
}
function in_2222() {
	
	var inin = $('#in_12').attr('value');
	if (inin > 1) {
		$('#in_12').val(parseInt(inin)-1);
	 	 var pp = ${bean.price-bean.sale} * (parseInt(inin)-1);
		$('#price').val(pp);
		$('#price22').val(pp); 
		
	var pnum=$('#in_12').attr('value');
	 	$('#p_num').val(pnum);
			
	}
}
</script>
	
</head>
<body>



<div id= "detail">
	<div class = "box_1" >
			<div class="img" style="width:524px text-align: center" >
				<img name = 'big_img' src = "../view/${bean.menu}/${bean.c_id}/${bean.good_d }" width="500px" height="500px" alt="" title="" />
			</div>		
				
			<div class=prdinfo>
		
			<form id="ccc">	
				<input type="hidden" name="j_id" value="${sid }">
				<input type="hidden" name="p_id" value="${bean.p_id }">
				<input type="hidden" name="c_id" value="${bean.c_id }">
			
				<table border="0" cellspacing="0" cellpadding="0" style="width:100%;">
					<tr align="center">
						<td >
						<font style='color:#555555;font-size:14px;font-style:;font-weight:bold;text-decoration:'>
						<font color=#5F00FF ><b>★${bean.p_intro}★</font></b></font></td>
					<tr align="center">
						<td>
							<input type="hidden" id="content" value="${bean.content }">
						<b><font color=#FF0000>구매하고싶은 ${bean.content }</font></b></td>
					</tr>
			
					<tr>
						<th class="th" >상품 명 </th>
						<td class="td"><font style='color:#555555;font-size:12px;font-style:normal;font-weight:;text-decoration:'>
							<input type="hidden" id="p_intro" value="${bean.p_intro }">
						${bean.p_intro }</font></td>
					</tr>
				
					<tr>
						<th class="th" >판매 가격</th>
						<td class="td"><font style='color:#555555;font-size:12px;font-style:normal;font-weight:;text-decoration:'>
							<input type="hidden" id="price" value="${bean.price }">
						${bean.price}</font></td>
			
					</tr>
				
					<tr>
						<th class="th" >할인 가격</th>
						<td class="td"><font style='color:#555555;font-size:12px;font-style:normal;font-weight:;text-decoration:'>
							<input type="hidden" id="sale" value="${bean.sale }">
						${bean.sale }</font></td>
					</tr>
				
					<tr>
						<th class="th" >적립 코인</th>
						<td class="td"><font style='color:#555555;font-size:12px;font-style:normal;font-weight:;text-decoration:'>
							<input type="hidden" id="cartcoin" value="${bean.cartcoin }">
						${bean.cartcoin }</font></td>
					</tr>
					
					<tr>   
						<th class="th" >조회 수</th>
						<td class="td"><font style='color:#555555;font-size:12px;font-style:normal;font-weight:;text-decoration:'>
						${bean.cnt }</font></td>
					</tr>
				
				<tr>
					<th class="th">수량</th>
					<td class="td">
						<input type="text" readonly="readonly" id="in_12"  value="1" style="width:50px;">개
						<input type="hidden" id="p_num" name="p_num" value="1" style="width:50px;">
					
						<a href="javascript:in_1111()"><img src="../view/img/basket_up.gif"></a>
						<a href="javascript:in_2222()"><img src="../view/img/basket_down.gif"></a>
					</td>
				</tr>
													
					<tr>
						<th class="th" >총 금액 </th>
						<th class="td" ><input readonly="readonly" id="price22" value="${bean.price-bean.sale}"> </th>
					</tr>
				
					<tr>
						<td colspan="3" align="center">
					 	<input type="submit" onclick="wmsg()" value="장바구니" > 
						</td>
					</tr>
					
				</table>
			</form>
		</div>
		
	</div>
</div>

</body>
</html>
