<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>productList</title>


<!-- 이미지 위에 커서 있을 때 확대 기능 ,  검색창 초기화 -->
<script type="text/javascript">

	function imgChange(imgPath) {
		
		var topImgId = document.getElementById("topImg");
		topImgId.src = imgPath;
		
	}
	
	function clearText(field)
	 {
	   if(field.defaultValue==field.value)
	    field.value="";
	 }
	
</script>
<script type="text/javascript">
if( ${param.p_idno}==1 ){
	alert("제품번호가 맞지 않습니다.");}
	</script>
</head>
<body>

		<h1 align="center">기존 상품 관리</h1>
		
		<div align="right">
			<form action="adminProUpForm">
				제품 번호 : &nbsp;
				<input type="text" name="p_id" value="제품번호로 검색하세요" onfocus="clearText(this)"/>
				<input type="submit" value="검색">
			</form>
		</div>
		
	
		<table border="0" cellpadding="1" cellspacing="1" width="100%">

<tr>
<td colspan="5" align="center">
<c:forEach items="${bean.data }" var="list" varStatus="no">
<c:if test="${no.index == 0 }">
	<img src="../view/product/${list.c_id }/${list.good }" width="30%" height="30%" id="topImg">
</c:if>
</c:forEach>
</td>
</tr>

 		<tr align="center">
		<c:forEach items="${bean.data }" var="list" varStatus="no">
			<c:if test="${((no.index)%5)==0 }">
			<tr></tr>
			</c:if>
			
			<td  align="center">
				<%-- <a href ="productDetail?p_id=${bean.p_id }&c_id=${bean.c_id }"></a>--%>
				<c:choose>
						<c:when test="${list.c_id==Bottom}">
						<%-- ?c_id=${list.c_id } --%>
								<a href ="adminProUpForm?p_id=${list.p_id }&c_id=${list.c_id}"><img width="50" height="50" src="../view/product/${list.c_id }/${list.good }"
								onmouseover="imgChange('../view/product/${list.c_id }/${list.good }')"></a><br>
						</c:when>
						
						<c:when test="${list.c_id==Outer }">
								<a href ="adminProUpForm?p_id=${list.p_id }&c_id=${list.c_id}"><img width="50" height="50" src="../view/product/${list.c_id }/${list.good }"
								onmouseover="imgChange('../view/product/${list.c_id }/${list.good }')"></a><br>
						</c:when>
						
						<c:when test="${list.c_id==Bags }">
								<a href ="adminProUpForm?p_id=${list.p_id }&c_id=${list.c_id}"><img width="50" height="50" src="../view/product/${list.c_id }/${list.good }"
								onmouseover="imgChange('../view/product/${list.c_id }/${list.good }')"></a><br>
						</c:when>
						
						<c:when test="${list.c_id==Shose }">
								<a href ="adminProUpForm?p_id=${list.p_id }&c_id=${list.c_id}"><img width="50" height="50" src="../view/product/${list.c_id }/${list.good }"
								onmouseover="imgChange('../view/product/${list.c_id }/${list.good }')"></a><br>
						</c:when>
						
						<c:when test="${list.c_id==Sale }">
								<a href ="adminProUpForm?p_id=${list.p_id }&c_id=${list.c_id}"><img width="50" height="50" src="../view/product/${list.c_id }/${list.good }"
								onmouseover="imgChange('../view/product/${list.c_id }/${list.good }')"></a><br>
						</c:when>
						
						<c:otherwise>
								<a href ="adminProUpForm?p_id=${list.p_id }&c_id=${list.c_id}">
									<img width="50" height="50" src="../view/product/${list.c_id }/${list.good }"
									onmouseover="imgChange('../view/product/${list.c_id }/${list.good }')">
								</a><br>
						</c:otherwise>
				</c:choose>
					제품번호 : ${list.p_id} / 분류 : ${list.c_id }<br>
			</td>
		</c:forEach>
		</tr>

	
		
<%-- 	<tr align="center">
		<c:forEach items="${bean.data }" var="list" varStatus="no">

			<td align="center">
				<c:if test="${list.c_id == 'Bottom' }">	
							<a href ="adminProUpdate?p_id=${list.p_id }&c_id=${list.c_id}"><img src="../view/product/${list.c_id }/${list.good }"></a>
				</c:if>									
			</td>
				<c:if test="${(no.index + 1) % 5 == 0 }">
					<tr></tr>
				</c:if>
		</c:forEach>
	</tr>
	
	<tr align="center">
		<c:forEach items="${bean.data }" var="list" varStatus="no">

			<td align="center">
				<c:if test="${list.c_id == 'Outer' }">	
							<a href ="adminProUpdate?p_id=${list.p_id }&c_id=${list.c_id}"><img src="../view/product/${list.c_id }/${list.good }"></a>
				</c:if>									
			</td>
				<c:if test="${(no.index + 1) % 5 == 0 }">
					<tr></tr>
				</c:if>
		</c:forEach>
	</tr>
	
	<tr align="center">
		<c:forEach items="${bean.data }" var="list" varStatus="no">

			<td align="center">
				<c:if test="${list.c_id == 'Bags' }">	
							<a href ="adminProUpdate?p_id=${list.p_id }&c_id=${list.c_id}"><img src="../view/product/${list.c_id }/${list.good }"></a>
				</c:if>									
			</td>
				<c:if test="${(no.index + 1) % 5 == 0 }">
					<tr></tr>
				</c:if>
		</c:forEach>
	</tr>
	
	<tr align="center">
		<c:forEach items="${bean.data }" var="list" varStatus="no">

			<td align="center">
				<c:if test="${list.c_id == 'Shoes' }">	
							<a href ="adminProUpdate?p_id=${list.p_id }&c_id=${list.c_id}"><img src="../view/product/${list.c_id }/${list.good }"></a>
				</c:if>									
			</td>
				<c:if test="${(no.index + 1) % 5 == 0 }">
					<tr></tr>
				</c:if>
		</c:forEach>
	</tr>
	
		<tr align="center">
		<c:forEach items="${bean.data }" var="list" varStatus="no">

			<td align="center">
				<c:if test="${list.c_id == 'Sale' }">	
							<a href ="adminProUpdate?p_id=${list.p_id }&c_id=${list.c_id}"><img src="../view/product/${list.c_id }/${list.good }"></a>
				</c:if>									
			</td>
				<c:if test="${(no.index + 1) % 5 == 0 }">
					<tr></tr>
				</c:if>
		</c:forEach>
	</tr> --%>

			
	</table>
</body>
</html>