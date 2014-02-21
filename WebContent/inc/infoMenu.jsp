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
    
		 <h1 align="center"><font color="pink">login ${bean.j_id} </font></h1>


	<c:choose>
		<c:when test="${bean.j_id!=null }">  			  			
		  	<div id="proMenu">
					<ul>
						<li><a href="../info/myDetail?j_id=${sid }">나의 정보</a></li>
						
						<li><a href="../cart/cartList?j_id=${sid }">장 바구니</a></li>
						
						<li><a href="../info/payment?j_id=${sid }">결제 정보</a></li>
						
						<li><a href="../info/sendList?j_id=${sid }">배송 정보</a></li>
					</ul>
			</div>
		</c:when>
	</c:choose>