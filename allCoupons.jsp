<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ include file = "conn.jsp" %>
<% 
String qry = "select * from Coupons where status=1";
	System.out.println(qry);
	rs = smt.executeQuery(qry);
%>
<%@ include file = "header.jsp" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Coupon Cards</title>
    <link rel="stylesheet" href="styles/card.css" />
  </head>
  <body>
    <div class="main">
      <%
      while(rs.next())
      {
%>
       <a href="checkOut.jsp?id=<%=rs.getLong("cid")%>">
       <div class="cards">
        <div class="image">
          <img src="photo/<%=rs.getString("photo")%>" alt="" />
        </div>
        <div class="title">
          <h2><%=rs.getString("title")%></h2>
        </div>
        <div class="desc">
          <p><%=rs.getString("tc")%></p>
        </div>
      </div>
      </a>
      <%
      }
      %>
     </div>
     <%@ include file = "footer.jsp" %>
  </body>
</html>
    