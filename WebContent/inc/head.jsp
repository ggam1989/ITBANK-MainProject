<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>template</title>
<script type="text/javascript">

function logoutWaringmsg() {
	var put=confirm("정말 로그아웃 하시겠습니까?");
	if (put==true) location.href='../${bean.menu }/logOut?logCommand=${bean.command }&c_id=${bean.c_id}&p_id=${bean.p_id}';
}

</script>
<style type="text/css">
input:hover {
	background-color:#cf0;
}

input:focus {
	background-color:#ff1493;
	border:5px solid #000;
	color:fff;
}
</style>
</head>
<body>

<div align="right">
	<form name="frm" action="../${bean.menu }/loginChk?logCommand=${bean.command }&c_id=${bean.c_id}&p_id=${bean.p_id}" method="post">
		<c:choose>
			<c:when test="${sid == null || sid == '' }">
				ID <input type="text" name="j_id" size="10" />
				PASS <input type="password" name="pass" size="12" />
				
				<input type="submit" value="로그인" />
				<input type="button" value="회원가입"
					onclick="location.href='../info/myWriteForm'" />
			</c:when>
			
				<c:when test="${bean.logChkNum==7}">
					관리자모드 입니다.	<a href="javascript:logoutWaringmsg()">로그아웃</a>
				</c:when>
				<c:otherwise>
					${sid } 님 안녕하세요. <a href="javascript:logoutWaringmsg()">로그아웃</a>
			</c:otherwise>
		</c:choose>
</form>
</div>
	
		
	<!-- ------------------------------- admin --------------------------------------------- -->
<c:choose>
	<c:when test="${sid=='admin'}"><!-- 관리자만 -->
		<div class="admin" align="center">
				<a href = "../join/joinList">
					<font color="Green" size="5">회원관리</font></a>&nbsp;&nbsp;
				<a href = "../adminPro/adminProUp">
					<font color="Green" size="5">상품관리</font></a>&nbsp;&nbsp;
				<a href = "../gold/goldList">
					<font color="Green" size="5">결제관리</font></a>&nbsp;&nbsp;
				<a href = "../transfer/transferList">
					<font color="Green" size="5">배송관리</font></a>&nbsp;&nbsp;
		</div>
	</c:when>
</c:choose>

<!-- ------------------------------- form / user --------------------------------------------- -->

	<!-- 로그인했을때 -->
<c:choose>
	<c:when test="${sid!=null}">
		<div class="user" align="center">
		
				<a href = "../product/productList">
					<font color="Green" size="5">상품리스트</font></a>&nbsp;&nbsp;
			
				<a href = "../cart/cartList?j_id=${sid}">
					<font color="Green" size="5">장바구니</font></a>&nbsp;&nbsp;
				
				<a href = "../info/myDetail?j_id=${sid }">
					<font color="Green" size="5">마이페이지</font></a>&nbsp;&nbsp;
				
				<a href = "../notice/boardList">
					<font color="Green" size="5">고객게시판(상)</font></a>&nbsp;&nbsp;
		</div>
	</c:when>
</c:choose>

</body>
</html>