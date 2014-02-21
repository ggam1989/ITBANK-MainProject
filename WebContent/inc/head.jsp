<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>template</title>
<script type="text/javascript">

function logoutWaringmsg() {
	var put=confirm("���� �α׾ƿ� �Ͻðڽ��ϱ�?");
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
				
				<input type="submit" value="�α���" />
				<input type="button" value="ȸ������"
					onclick="location.href='../info/myWriteForm'" />
			</c:when>
			
				<c:when test="${bean.logChkNum==7}">
					�����ڸ�� �Դϴ�.	<a href="javascript:logoutWaringmsg()">�α׾ƿ�</a>
				</c:when>
				<c:otherwise>
					${sid } �� �ȳ��ϼ���. <a href="javascript:logoutWaringmsg()">�α׾ƿ�</a>
			</c:otherwise>
		</c:choose>
</form>
</div>
	
		
	<!-- ------------------------------- admin --------------------------------------------- -->
<c:choose>
	<c:when test="${sid=='admin'}"><!-- �����ڸ� -->
		<div class="admin" align="center">
				<a href = "../join/joinList">
					<font color="Green" size="5">ȸ������</font></a>&nbsp;&nbsp;
				<a href = "../adminPro/adminProUp">
					<font color="Green" size="5">��ǰ����</font></a>&nbsp;&nbsp;
				<a href = "../gold/goldList">
					<font color="Green" size="5">��������</font></a>&nbsp;&nbsp;
				<a href = "../transfer/transferList">
					<font color="Green" size="5">��۰���</font></a>&nbsp;&nbsp;
		</div>
	</c:when>
</c:choose>

<!-- ------------------------------- form / user --------------------------------------------- -->

	<!-- �α��������� -->
<c:choose>
	<c:when test="${sid!=null}">
		<div class="user" align="center">
		
				<a href = "../product/productList">
					<font color="Green" size="5">��ǰ����Ʈ</font></a>&nbsp;&nbsp;
			
				<a href = "../cart/cartList?j_id=${sid}">
					<font color="Green" size="5">��ٱ���</font></a>&nbsp;&nbsp;
				
				<a href = "../info/myDetail?j_id=${sid }">
					<font color="Green" size="5">����������</font></a>&nbsp;&nbsp;
				
				<a href = "../notice/boardList">
					<font color="Green" size="5">���Խ���(��)</font></a>&nbsp;&nbsp;
		</div>
	</c:when>
</c:choose>

</body>
</html>