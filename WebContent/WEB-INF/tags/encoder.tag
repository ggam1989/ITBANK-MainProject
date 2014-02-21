<%@tag import="java.net.URLEncoder"%>
<%@ tag body-content="empty" language="java" pageEncoding="EUC-KR"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ attribute name="str" required="true" %>
<%
	String res = URLEncoder.encode(str,"euc-kr");
	res = res.replace("+", " ");
%>
<%=res %>
