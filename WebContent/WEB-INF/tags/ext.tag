<%@ tag body-content="scriptless" language="java" pageEncoding="EUC-KR"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ attribute name="str" required="true" %>
<%@ attribute name="var" rtexprvalue="false" required="true" %>
<%@ variable name-from-attribute="var" alias="res" scope="AT_END"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
String ext =  str.substring(str.lastIndexOf(".")+1).toLowerCase();
Boolean res= ext.equals("jpg") || ext.equals("gif") || ext.equals("bmp") || ext.equals("png");
	
%>
<c:set var="res" value="<%=res %>" />
