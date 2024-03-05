<!DOCTYPE html>
<%@ include file = "header.jsp" %>
<html lang="en">
  <head>
   	<link rel="stylesheet" href="styles/style2.css">
   	    <title>Register</title>

  </head>
  <body>
    <!-- sign-up -->
    <div class="container">
      <div class="formBox">
        <form action="addUser.jsp" name="FormFill" onsubmit="return validation()">
          <h2>Sign-Up</h2>
          <p id="result"></p>
          <div class="inputBox">
            <i class="fa-solid fa-user"></i>
            <input type="text" name="Name" placeholder="Name" />
          </div>
          <div class="inputBox">
            <i class="fa-solid fa-envelope"></i>
            <input type="email" name="Email" placeholder="Email" />
          </div>
          <div class="inputBox">
            <i class="fa-solid fa-phone"></i>
            <input type="text" name="Phone" placeholder="Phone" />
          </div>
          <div class="inputBox">
            <i class="fa-solid fa-lock"></i>
            <input type="password" name="Password" placeholder="Password" />
          </div>
          <div class="inputBox">
            <i class="fa-solid fa-lock"></i>
            <input
              type="password"
              name="ConfirmPassword"
              placeholder="ConfirmPassword"
            />
          </div>
          <div class="button">
            <input
              type="submit"
              class="btn"
              onclick="validation()"
              value="Sign-Up"
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
    <script src="index.js"></script>
    <%@ include file = "footer.jsp" %>
  </body>
</html>
