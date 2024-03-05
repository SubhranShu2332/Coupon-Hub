<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file = "conn.jsp" %>
    <%@ include file = "header.jsp" %>
    <%
String search=request.getParameter("search");

String qry = "select * from orders where user_id="+session.getAttribute("userId");
System.out.println(qry);
rs= smt.executeQuery(qry);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.order {
        max-width: 1000px;
        margin: 5px auto;
        padding: 5px;
        background-color: #f4f4f4;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      }

      .order h2 {
        color: #333;
      }

      .order ul {
        list-style-type: none;
        padding: 0;
      }

      .order li {
        /* border-bottom: 1px solid #ddd; */
        padding: 5px 0px;
        display: flex;
        justify-content: space-between;
        align-items: start;
      }

      .order .product-image {
        max-width: 100px;
        max-height: 100px;
        margin-right: 10px;
      }

      .item1 img{
       padding-top: 30px;
      }
    
      .order.item2 {
        padding-left: 20px;
      }

      .order .grid-container {
        display: grid;
        grid-template-columns: 300px auto;

        /* gap: 10px; */
        background-color: white;
        padding: 20px;
        margin-top:20px;
      }
      .order .grid-container > div {
        background-color: rgba(255, 255, 255, 0.8);
        text-align: center;
        padding: 20px 0;
        font-size: 20px;
      }
      .order h1{
      font-size:39px
      }
</style>
</head>
<body>
<section class="order">
<h1>Past Orders</h1>
<% if(!rs.next())
{
	%><center><h2>No Order Found</h2></center><%
}
else
{
	rs.beforeFirst();
while(rs.next()){ 
	
%>
      <div class="grid-container">
      <%String qry1 = "select * from Coupons where cid="+rs.getLong("cid");
        	System.out.println(qry1);
        	ResultSet rs1= smt1.executeQuery(qry1);
        	rs1.next(); %>
        <div class="item1"><img src="photo/<%=rs1.getString("photo") %>" alt="" width="200px" /></div>
        <div class="item2">
          <ul>
            <li>#<%=rs.getString("oid") %><span align="right"><%=rs.getString("created_at") %></span></li>
            <li>Code -<%=rs1.getString("code") %></li>
            <li>Title -<%=rs1.getString("title") %></li>
            <li>Organization -<%=rs1.getString("org") %></li>
            <li>Price -<%=rs1.getInt("price") %></li>
            <li>Terms and Condition -<%=rs1.getString("tc") %></li>
          </ul>
        </div>
      </div>
      <%} }%>
    </section>
    <%@ include file = "footer.jsp" %>
    
</body>
</html>