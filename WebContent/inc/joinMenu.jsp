<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


   	<div>
	   	<ul>
		   	<c:choose>
			   	<c:when test="${sid=='admin'}"><!-- 관리자만 -->
			   	<li>회원관리</li>
			   	</c:when>
		   	</c:choose>
	   	</ul>
	</div>