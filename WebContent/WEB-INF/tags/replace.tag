<%@ tag body-content="empty" language="java" pageEncoding="EUC-KR"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ attribute name="str" required="true" %>
<%
	String res = str.replaceAll("\r\n", "<br>");
%>
<%=res %>
