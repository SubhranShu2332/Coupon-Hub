<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
%>
<%@ include file = "conn.jsp" %>

    
<% 
    String email=request.getParameter("Email");
   //long phone=Long.parseLong(request.getParameter("Phone"));
   	String password=request.getParameter("Password");

	String qry = "Select * from USERS where email= '"+email+" ' and password= '"+password+" ' ";
	rs = smt.executeQuery(qry);
	System.out.println(qry);
	//System.out.println(rs.next());
	if(rs.next())
	{
			String name = rs.getString("name");
			long id = rs.getLong("USER_ID");
			session.setAttribute("user",name);
			session.setAttribute("userId",id);
			//System.out.println(rs.getString("name"));	
			System.out.println(session.getAttribute("user"));	
			System.out.println(session.getAttribute("userId"));
			response.sendRedirect("index.jsp");	
	}
	    
%>