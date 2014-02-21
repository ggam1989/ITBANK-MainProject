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
						&nbsp; 카테고리 ${bean.c_id }  -  메뉴 ${bean.content } 의 상품 추가 &nbsp;  
				</td>
			</tr>
			
			<tr>
				<td class="td"> 상품 이름 : <input type="text" name="p_intro" maxlength="10"></td>
			</tr>
			
			<tr>
				<td class="td"> 상품 가격 : <input type="text" name="price" maxlength="10"></td>
			</tr>
			
			<tr>
				<td class="td"> 할인 가격 : <input type="text" name="sale" maxlength="10"></td>
			</tr>
			
			<tr>
				<td class="td"> 적립 금액 : <input type="text" name="cartcoin" maxlength="10"></td>
			</tr>
			
			<tr>
				<td class="td"> 카테고리 사진 : <input type="file" name="proupc"></td>
			</tr>
			
			<!-- 디테일 사진 1은 카테고리 사진이며 사이즈가 확장된 사진이다. -->
			<tr>
				<td class="td"> 디테일 사진-1 : <input type="file" name="proupd"></td>
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