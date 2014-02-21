<%@page import="java.util.TreeSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<style type="text/css">
		#Top {
			border: 0px;
			list-style: none;
		}
		
		#Top a {
			padding: 5px 5px 5px 25px;
			text-decoration: none;
			background: 5px 7px;
		}
		
		#Top a:hover {
			background: #FFE6E6;
			color: red;
		}
	</style>

<div id="top" align="center" >
	<c:forEach items="${bean.procg }" var="list" varStatus="no">
		<c:if test="${no.index %7 ==0 }">	
			<br>
		</c:if>
		
		<c:choose>
			<c:when test="${list.c_id != null && list.c_id!='Sale'}">
				<a href = "../product/productList?c_id=${list.c_id }">
				<font size="5">${list.c_id }</font></a>
			</c:when>
		</c:choose> 
		
	<%-- 	<c:choose>
			<c:when test="${no.last }">
					<a href = "../product/productList?c_id=Sale">
					<font size="6" color="red">Sale</font></a>
			</c:when>
		</c:choose> --%>
	</c:forEach>
</div>



