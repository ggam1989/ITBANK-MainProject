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
						href="../product/productList?c_id=${bean.c_id}&content=Top1">남방/셔츠</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Top2">민소매</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Top3">맨투맨</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Top4">후드티</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Top5">PK티</a></li>
				</ul>
			</c:when>
	
			<c:when test="${bean.c_id.equals('Bottom')}">
				<ul>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bottom1">청바지</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bottom2">면바지</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bottom3">스커트</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bottom4">원피스</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bottom5">스키니</a></li>
				</ul>
			</c:when>
	
			<c:when test="${bean.c_id.equals('Outer')}">
				<ul>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Outer1">집업(후드)</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Outer2">가디건</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Outer3">바람막이</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Outer4">야구자켓</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Outer5">코트</a></li>
				</ul>
			</c:when>
	
			<c:when test="${bean.c_id.equals('Bags')}">
				<ul>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bags1">백팩</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bags2">숄더/토트</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bags3">크로스백</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bags4">클러치</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Bags5">노트북백</a></li>
				</ul>
			</c:when>
	
			<c:when test="${bean.c_id.equals('Shoes')}">
				<ul>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Shoes1">하이/미드탑</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Shoes2">로우탑</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Shoes3">런닝화</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Shoes4">캔버스화</a></li>
					<li><a
						href="../product/productList?c_id=${bean.c_id}&content=Shoes5">워커</a></li>
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