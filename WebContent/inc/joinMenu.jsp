<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


   	<div>
	   	<ul>
		   	<c:choose>
			   	<c:when test="${sid=='admin'}"><!-- �����ڸ� -->
			   	<li>ȸ������</li>
			   	</c:when>
		   	</c:choose>
	   	</ul>
	</div>