<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
     <style type="text/css">
   		
   	    #proMenu li{
   			margin-top: 20px;  
   			border:0px;
   			list-style: none;
   		}
   		#proMenu li a{
   			padding: 5px 5px 5px 25px;
   			text-decoration: none;
   			background: 5px 7px;
   	
   		}

   		#proMenu li a:hover{
   			background:#FFE6E6;
   			color: red;
   		}
    </style> 
    
	<h1 align="center"><font color="pink">${bean.c_id} </font></h1>
  
	<c:forEach items="${bean.promenu }" var="menu" varStatus="no">
	<%-- 	${menu.content } --%>
	
		<div id="proMenu">
			<c:choose>
				<c:when test="${bean.c_id !=null }">
					<ul>
						<li><a href="../product/productList?c_id=${bean.c_id}&content=${menu.content}">${menu.content}</a></li>
					</ul>
				</c:when>
			</c:choose>
		</div>
	</c:forEach>

  
	<%--   <div id="proMenu">
		<c:choose>
			<c:when test="${bean.c_id.equals('Top')}">
				<ul>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Top1">����/����</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Top2">�μҸ�</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Top3">������</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Top4">�ĵ�Ƽ</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Top5">PKƼ</a></li>
				</ul>
			</c:when>
	
			<c:when test="${bean.c_id.equals('Bottom')}">
				<ul>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bottom1">û����</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bottom2">�����</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bottom3">��ĿƮ</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bottom4">���ǽ�</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bottom5">��Ű��</a></li>
				</ul>
			</c:when>
	
			<c:when test="${bean.c_id.equals('Outer')}">
				<ul>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Outer1">����(�ĵ�)</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Outer2">�����</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Outer3">�ٶ�����</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Outer4">�߱�����</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Outer5">��Ʈ</a></li>
				</ul>
			</c:when>
	
			<c:when test="${bean.c_id.equals('Bags')}">
				<ul>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bags1">����</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bags2">���/��Ʈ</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bags3">ũ�ν���</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bags4">Ŭ��ġ</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bags5">��Ʈ�Ϲ�</a></li>
				</ul>
			</c:when>
	
			<c:when test="${bean.c_id.equals('Shoes')}">
				<ul>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Shoes1">����/�̵�ž</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Shoes2">�ο�ž</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Shoes3">����ȭ</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Shoes4">ĵ����ȭ</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Shoes5">��Ŀ</a></li>
				</ul>
			</c:when>
	
			<c:when test="${bean.c_id.equals('Sale')}">
				<ul>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Sale1"></a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Sale2"></a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Sale3"></a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Sale4"></a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Sale5"></a></li>
				</ul>
			</c:when>
		</c:choose>
	</div> --%>