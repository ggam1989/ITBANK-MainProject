<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>template</title>

<style type="text/css">
body{margin:0 auto;}
#menu{position: absolute; width: 15%; height: 800px; background: #fff}
#main{position: absolute; margin-left:15%; width: 85%; height: 800px; background: #fff}
#banner{display:block; margin: 0 auto; }
#cmarq{margin-left: 5%; margin-right: 5%; text-align: center;}

</style>

<script type="text/javascript">
	window.onload = function() {

		var logChked = ${bean.logChkNum}
		  if (logChked == 1) {
			alert('로그인 하셨습니다.');
		} else if(logChked==7) {
			alert('관리자모드 로그인 시작합니다.');						
		} else if (logChked == 2) {
			alert('아이디 또는 비밀번호가 일치하지 않습니다.\n\n다시 입력해 주십시오.');
		} else if (logChked == 3) {
			alert('로그아웃 하셧습니다.');
		}
	}
	
</script>
</head>
<body>

<div id="header">
	<table>
		<tr>
			<td><a href="../product/productList"><img src="../img/logo.png" border=0/></a></td>
			<td class="cmarq">	<marquee><marquee id="maq" behavior=alternate direction="up" width=1500; height="30"><b>어서오세요  </b></marquee></marquee>	</td>
			<td><a href="../product/productList"><img src="../img/logo.png" border=0/></a></td>
		</tr>
	</table>
</div>
<div>
		<img id="banner" src="../img/bock.jpg" width="700" height="100" >
</div>

	<div id="head" width="10%" align="right">
		<jsp:include page="inc/head.jsp" />
	</div>


	<div id="top" >
	<c:if test="${bean.menu.equals('product')}"> 
		<jsp:include page="inc/top.jsp" />
	</c:if>
	</div>
	
	<div id="menu" >
		<jsp:include page="inc/${bean.menu}Menu.jsp" />
	</div>
		 
	<div id="main"> 		 
		 	<jsp:include page="view/${bean.menu }/${bean.command }.jsp" />
	</div>

<div id = "bottom" align="center">
<jsp:include page="inc/bottom.jsp" />
</div>

</table>


</body>
</html>