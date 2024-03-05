<!DOCTYPE html>
<%@ include file = "header.jsp" %>
<html lang="en">
  <head>
    
    <title>Login Page</title>
    <link rel="stylesheet" href="./styles/style2.css" />
    
  </head>
  <body>
    <div class="container">
      <div class="formBox">
        <form action="validateUser.jsp" name="FormFill" onsubmit="return validation()">
          <h2>Login</h2>
          <p id="result"></p>

          <div class="inputBox">
            <i class="fa-solid fa-envelope"></i>
            <input type="email" name="Email" placeholder="Email" />
          </div>

          <div class="inputBox">
            <i class="fa-solid fa-lock"></i>
            <input type="password" name="Password" placeholder="Password" />
          </div>

          <div class="button">
            <input
              type="submit"
              class="btn"
              onclick="validation()"
              value="Login"
            />
          </div>
          <div class="group">
            <span><a href="#">Forget Password</a></span>
            <span><a href="#">Login</a></span>
          </div>
        </form>
      </div>
      <!-- <div class="popup" id="popup">
        <i class="fa-solid fa-circle-check"></i>
        <h2>Congratulations!</h2>
        <p>You are sucessfully registered.</p>
        <a href="#"><button>OK</button></a>
      </div> -->
    </div>
    <%@ include file = "footer.jsp" %>
    <script src="index.js"></script>
  </body>
</html>
