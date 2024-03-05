<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="styles/style.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script
      src="https://kit.fontawesome.com/b424fd6c4e.js"
      crossorigin="anonymous"
    ></script>

</head>
<body>
	<header>
        <nav>
            <ul>
                <li class="left">
                    <a href="index.jsp"><img class="logo" src="./media/logo.jpg" alt=""></a>
                </li>
                <li class="right">
                    <a href="allCoupons.jsp">
                        Coupons
                        <i class="fa-solid fa-list"></i>
                    </a>
                </li>
                
                <%
                String st=(String)session.getAttribute("user");
                if (st!=null)
                	{
                	System.out.println(session.getAttribute("user"));	
                	%>
                	<li class="right">
                    <a href="./orders.jsp">
                       Your Orders

						<i class="fa-solid fa-box"></i>
                    </a>
                </li>
               <li class="right">
                    <a href="./index.jsp">
                        Welcome, <%=session.getAttribute("user") %>

                        <i class="fa-solid fa-user"></i>
                    </a>
                </li>
                
                <li class="right">
                    <a href="./signout.jsp">
                        Sign out

                        <i class="fa-solid fa-right-from-bracket"></i>
                    </a>
                </li>
                
               <% }
                else
            	   {%>
            	   
                 <li class="right">
                    <a href="./signin.jsp">
                        Sign in
                        <i class="fa-solid fa-right-to-bracket"></i>
                    </a>
                </li>
                <li class="right">
                    <a href="./signup.jsp">
                        Sign up

                        <i class="fa-solid fa-user"></i>
                    </a>
                </li>
               <%} %>
                
            </ul>
        </nav>
    </header>
</body>
</html>