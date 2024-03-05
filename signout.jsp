<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
%>
<%@ include file = "conn.jsp" %>

    
<% 
    
			session.removeAttribute("user");
response.sendRedirect("index.jsp");	
	    
%>