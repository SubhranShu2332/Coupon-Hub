<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.text.SimpleDateFormat,java.util.Date"
%>
<%@ include file = "conn.jsp" %>

    
<% SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");

// Get the current date and time
	Date currentDate = new Date();

// Format the date as a string
   String id = dateFormat.format(currentDate);
   System.out.println(id);
   String name=request.getParameter("Name");
   String email=request.getParameter("Email");
   long phone=Long.parseLong(request.getParameter("Phone"));
   String password=request.getParameter("Password");

%>
	<%
	String qry = "insert into USERS values(" + id + " , '" + name + " ','" + email + " ', " + phone + " , '" + password + " ')";
	int no = smt.executeUpdate(qry);
	if(no>0)
	    response.sendRedirect("signin.jsp");
	
	%>