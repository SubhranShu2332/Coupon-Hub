<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.text.SimpleDateFormat,java.util.Date"
%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@ include file = "conn.jsp" %>
<%@ page import="java.util.Collection" %>



    
<% if (session.getAttribute("user")!=null)
{
	System.out.println(request.getMethod());
	System.out.println(session.getAttribute("userId"));
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");

// Get the current date and time
	Date currentDate = new Date();

// Format the date as a string
   String id = dateFormat.format(currentDate);
   //String code=null;
   

   String code=request.getParameter("code");
   String org=request.getParameter("org");
   String type=(request.getParameter("type"));
   String title=request.getParameter("title");
   int price=Integer.parseInt(request.getParameter("price"));
   //int price=0;
   String inputDate=request.getParameter("edate");
   //SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
   //java.util.Date parsedDate = sdf.parse(inputDate);
   //java.sql.Date sqlDate = new java.sql.Date(parsedDate.getTime());
   //String photo=null;
   String photo=request.getParameter("photo");
   String tc=request.getParameter("tc");
   
   //MultipartRequest m=new MultipartRequest(request,"C:/Users/white/eclipse-workspace/CouponHub/src/main/webapp/photo");

	String qry = "insert into Coupons values(" + id + ",'"+session.getAttribute("userId")+"','" + code + "','" + org + "','" + type + "','" + title + "',"+price+",TO_DATE('"+inputDate+"','yyyy/mm/dd'),'"+photo+"','"+tc+"',0)";
	System.out.println(qry);
	int no = smt.executeUpdate(qry);
	if(no>0)
	    response.sendRedirect("photo.jsp?code="+id);
}
else{
	 response.sendRedirect("signin.jsp?val=1");
}
	
	%>