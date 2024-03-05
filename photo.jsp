<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file = "header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<center>
	<form action="photoUpload.jsp?code=<%=request.getParameter("code")%>" method="post" enctype="multipart/form-data">  
    
    <input type="hidden" value="<%=request.getParameter("code")%>" name="id"/> <br>
    Select File:<input type="file" name="photo" id=""><br>
    <h2></h2>
    <input type="submit" value="Submit">
    
    </form> 
</center>
<%@ include file = "footer.jsp" %>
</body>
</html>