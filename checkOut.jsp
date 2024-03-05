<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "header.jsp" %>
<%@ include file = "conn.jsp" %>
<%
	if(session.getAttribute("user")!=null)
	{
		String id=request.getParameter("id");

		String qry = "select * from Coupons where cid ="+id;
		System.out.println(qry);
		rs= smt.executeQuery(qry);
		rs.next();
%>
<html lang="en">
<head>
    <title></title>
</head>

<body>
    <section class="checkout">
        
        <center>
            <h1>Order Summery</h1>
            <div class="box1">
                    <table width="550px" cellpadding="15">
                        
                        <div class="boxImg"><img src="photo/<%=rs.getString("photo") %>" alt=""></div>
                        <h2><%=rs.getString("title") %></h2>
                        <tr>
                            <th align="left">Organization:</th>
                            <td><%=rs.getString("org") %></td>
                        </tr>
                        <tr>
                            <th align="left">Type:</th>
                            <td><%=rs.getString("type") %></td>
                        </tr>
                        <tr>
                            <th align="left">Price:</th>
                            <td><%=rs.getInt("price") %></td>
                        </tr>
                        <tr>
                            <th align="left">Expiration Date:</th>
                            <td><%=rs.getString("edate") %></td>
                        </tr>
                        <tr>
                            <th align="left">Terms and Conditions</th>
                            <td><%=rs.getString("tc") %></td>
                        </tr>
                    </table>
                
                <a href="addOrders.jsp?cid=<%=request.getParameter("id")%>"><span>Buy Now</span></a>
                
            </div>
        </center>
    </section>
    <%@ include file = "footer.jsp" %>
</body>

</html>
<%
	}
	else{
		response.sendRedirect("signin.jsp?val=1");
	}
%>