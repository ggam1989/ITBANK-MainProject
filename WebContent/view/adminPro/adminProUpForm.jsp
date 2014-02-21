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

</style>
	
</head>
<body>

<div id= "detail">
	<div class = "box_1" >
			<div class="img" style="width:524px text-align: center" >
				<img name = 'big_img' src = "../view/product/${bean.c_id}/${bean.good_d }" width="500px" height="500px" alt="" title="" />
			</div>		
				
			<div class=prdinfo>
				<font style='color:#555555;font-size:14px;font-style:;font-weight:bold;text-decoration:'>
						<b><font color=#5F00FF>★${bean.p_intro}★</font></b></font>
					<br>
						<b><font color=#FF0000>구매하고싶은 ${bean.content }</font></b>
			
		<form name="frm" action="adminProUpdate?p_id=${bean.p_id }" method="post" enctype="multipart/form-data">
		<table cellspacing="0" cellpadding="0" style="width:100%;">
			
			
			<tr>   
				<th class="th" >조회 수</th>
				<td class="td"><font style='color:#555555;font-size:12px;font-style:normal;font-weight:;text-decoration:'>${bean.cnt }</font></td>
			</tr>
			
			<tr>
				<th class="th" >상품 명 </th>
				<td class="td"><input type="text" name="p_intro" maxlength="7" value="${bean.p_intro }"></td>
			</tr>
		
			<tr>
				<th class="th" >판매 가격</th>
					<td class="td"><input type="text" name="price" maxlength="7" value="${bean.price }"></td>
	
			</tr>
		
			<tr>
				<th class="th" >할인 가격</th>
					<td class="td"><input type="text" name="sale" maxlength="7" value="${bean.sale }"></td>
			</tr>
			
			<tr>
				<th class="th" >적립 코인</th>
					<td class="td"><input type="text" name="cartcoin" maxlength="7" value="${bean.cartcoin }"></td>
			</tr>
			
			<tr>
				<th class="th"> 수정하기</th>
				<td class="td" ><input type="image" src="../img/btn_confirm.gif" > </td>
			</tr>
			
		</table>
		</form>
		</div>
		
	</div>
</div>

</body>
</html>


<%-- <br>생산년도 : 
 			<fmt:formatDate value="${data.reg_date }" pattern="yy-MM-dd (E) a hh:mm"/> --%>