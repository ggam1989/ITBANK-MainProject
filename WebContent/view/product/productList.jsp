<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>productList</title>
<script type="text/javascript">
function imgChange(imgPath) {
	
	var topImgId = document.getElementById("topImg");
	topImgId.src = imgPath;
	
}
</script>
</head>
<body>
	<table border="0" cellpadding="1" cellspacing="1" width="100%">
		<tr align="center">
<!-- 		<td width="130"></td>(5개 - 650) -->
			
			<td colspan="5" align="center">여기가 메인메뉴로다
			
				<!-- <div align="right">
				<a href ="productList">가격낮은순</a>
				<a href ="productList?p_price=desc">가격높은순</a>
				</div> -->
			
			</td>
		</tr>

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
								<a href ="productDetail?p_id=${list.p_id }&c_id=${list.c_id}"><img src="../view/product/${list.c_id }/${list.good }"
								onmouseover="imgChange('../view/product/${list.c_id }/${list.good }')"></a><br>
						</c:when>
						
						<c:when test="${list.c_id==Outer }">
								<a href ="productDetail?p_id=${list.p_id }&c_id=${list.c_id}"><img src="../view/product/${list.c_id }/${list.good }"
								onmouseover="imgChange('../view/product/${list.c_id }/${list.good }')"></a><br>
						</c:when>
						
						<c:when test="${list.c_id==Bags }">
								<a href ="productDetail?p_id=${list.p_id }&c_id=${list.c_id}"><img src="../view/product/${list.c_id }/${list.good }"
								onmouseover="imgChange('../view/product/${list.c_id }/${list.good }')"></a><br>
						</c:when>
						
						<c:when test="${list.c_id==Shose }">
								<a href ="productDetail?p_id=${list.p_id }&c_id=${list.c_id}"><img src="../view/product/${list.c_id }/${list.good }"
								onmouseover="imgChange('../view/product/${list.c_id }/${list.good }')"></a><br>
						</c:when>
						
						<c:when test="${list.c_id==Sale }">
								<a href ="productDetail?p_id=${list.p_id }&c_id=${list.c_id}"><img src="../view/product/${list.c_id }/${list.good }"
								onmouseover="imgChange('../view/product/${list.c_id }/${list.good }')"></a><br>
						</c:when>
						
						<c:otherwise>
								<a href ="productDetail?p_id=${list.p_id }&c_id=${list.c_id}">
									<img src="../view/product/${list.c_id }/${list.good }" 
									 onmouseover="imgChange('../view/product/${list.c_id }/${list.good }')">
								</a><br>
						</c:otherwise>
				</c:choose>
					
				${list.p_intro }<br>
				${list.price } 원<br>
				상품 조회수 : ${list.cnt }<br>
			
				</td>
			</c:forEach>
			
			</tr> 
			
	<c:if test="${bean.data ==null}">
		<tr align="center">
			<td colspan="5">데이터가 없습니다.</td>
		</tr>
	</c:if>
	
	</table>
</body>
</html>