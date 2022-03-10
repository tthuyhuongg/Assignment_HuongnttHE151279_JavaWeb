<%-- 
    Document   : new
    Created on : Mar 9, 2022, 10:30:05 PM
    Author     : thuy huong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/styles.css">
<!DOCTYPE html>
<html>
   <div class="wrapper bg-white">
    <div class="h2 text-center">The Flower Shop</div>
    <div class="h4 text-muted text-center pt-2">Login</div>
    <form class="pt-3">
        <div class="form-group py-2">
            <div class="input-field"> <span class="far fa-user p-2"></span> <input type="text" placeholder="Username or Email Address" required class=""> </div>
        </div>
        <br>
        <div class="form-group py-1 pb-2">
            <div class="input-field"> <span class="fas fa-lock p-2"></span> <input type="text" placeholder="Enter your Password" required class=""> <button class="btn bg-white text-muted"> <span class="far fa-eye-slash"></span> </button> </div>
        </div>
        <br>
        <div class="d-flex align-items-start">
            <div class="remember"> <label class="option text-muted"> Remember me <input type="radio" name="radio"> <span class="checkmark"></span> </label> </div>
            <div class="ml-auto"> <a href="#" id="forgot">Forgot Password?</a> </div>
        </div>
        <br>
        <button class="btn btn-block text-center my-3">Log in</button>
        <div class="text-center pt-3 text-muted">Not a member? <a href="#">Sign up</a></div>
    </form>
</div>
</html>
