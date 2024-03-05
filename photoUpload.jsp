<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>

<% MultipartRequest m=new MultipartRequest(request,"C:/Users/white/eclipse-workspace/CouponHub/src/main/webapp/photo");

%>
<%@ include file = "conn.jsp" %>
<%
System.out.println(request.getParameter("code"));
String qry = "update Coupons set status=1 where CID="+request.getParameter("code");

int no = smt.executeUpdate(qry);
if(no>0)
    response.sendRedirect("index.jsp?val=3");

%>