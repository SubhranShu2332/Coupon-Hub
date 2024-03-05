<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.text.SimpleDateFormat,java.util.Date"
%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@ include file = "conn.jsp" %>
<%@ page import="java.util.Collection" %>



    
<% if (session.getAttribute("userId")!=null)
{
	System.out.println(request.getMethod());
	System.out.println(session.getAttribute("userId"));
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");

// Get the current date and time
	Date currentDate = new Date();

// Format the date as a string
   String oId = dateFormat.format(currentDate);
   //String code=null;
     dateFormat = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");  
    String created = dateFormat.format(currentDate); 
    dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
    String inputDate=dateFormat.format(currentDate); 

   String cId=request.getParameter("cid");
   
   
   
	String qry = "insert into Orders values(" + oId + ","+cId+"," + session.getAttribute("userId") + ",TO_DATE('"+inputDate+"','yyyy/mm/dd'))";
	System.out.println(qry);
	int no = smt.executeUpdate(qry);
	if(no>0)
	    response.sendRedirect("orders.jsp");
	String qry1 = "update Coupons set status=2 where CID="+cId;
	System.out.println(qry1);
	ResultSet rs1= smt1.executeQuery(qry1);
	
}
else{
	 response.sendRedirect("signin.jsp?val=1");
}
	
	%>