<%-- 
    Document   : singup
    Created on : Mar 10, 2022, 9:47:12 PM
    Author     : thuy huong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/styles.css">
<!DOCTYPE html>
<html>
   <div class="wrapper bg-white">
       <div class="h2 text-center">The Flower Shop Sign Up</div><br>
    <div class="h4 text-muted text-center pt-2"></div>
    <form action="signup" method="post">
        <p class="text-danger">${messs}</p>
        <div class="form-group py-2">
            <div class="input-field"> <span class="far fa-user p-2"></span> <input type="text" name="username" placeholder="Enter your Username " required class=""> </div>
        </div>
        <br>
         <div class="form-group py-1 pb-2">
            <div class="input-field"> <span class="fas fa-lock p-2"></span> <input type="text" name="name" placeholder="Enter your name" required class=""> <button class="btn bg-white text-muted"> <span class="far fa-eye-slash"></span> </button> </div>
        </div>
        <br>
         <div class="form-group py-1 pb-2">
            <div class="input-field"> <span class="fas fa-lock p-2"></span> <input type="text" name="roles" placeholder="You can choose enter user or admin" required class=""> <button class="btn bg-white text-muted"> <span class="far fa-eye-slash"></span> </button> </div>
        </div>
        <br>
        <div class="form-group py-1 pb-2">
            <div class="input-field"> <span class="fas fa-lock p-2"></span> <input type="password" name="password" placeholder="Enter your Password" required class=""> <button class="btn bg-white text-muted"> <span class="far fa-eye-slash"></span> </button> </div>
        </div>
        <br>
        <div class="form-group py-1 pb-2">
            <div class="input-field"> <span class="fas fa-lock p-2"></span> <input type="password" name="repassword" placeholder="Enter Re-Password" required class=""> <button class="btn bg-white text-muted"> <span class="far fa-eye-slash"></span> </button> </div>
        </div>
        <br>
        <button class="btn btn-block text-center my-3">Sign Up</button>
        <div class="text-center pt-3 text-muted">You are a member? <a href="Login.jsp">Login</a></div>
    </form>
</div>
</html>
