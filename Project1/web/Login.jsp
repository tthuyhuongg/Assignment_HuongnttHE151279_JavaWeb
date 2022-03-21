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
    <div class="h2 text-center">The Flower Shop Login</div><br>
    <div class="h4 text-muted text-center pt-2"></div>
    <form action="login" method="post">
        <p class="text-danger">${mess}</p>
        <div class="form-group py-2">
            <div class="input-field"> <span class="far fa-user p-2"></span> <input type="text" name="username" value="${usern}" placeholder="Nhập tên đăng nhập " required class=""></div>
        </div>
        <br>
        <div class="form-group py-1 pb-2">
            <div class="input-field"> <span class="fas fa-lock p-2"></span> <input type="text" name="password" value="${passw}" placeholder="Nhập mật khẩu" required class=""> <button class="btn bg-white text-muted"> <span class="far fa-eye-slash"></span> </button> </div>
        </div>
        <br>
<!--        <div class="d-flex align-items-start">
            <div class="remember"> <label class="option text-muted"> Remember me <input type="radio" name="remember"> <span class="checkmark"></span> </label> </div>
        </div>
        <br>-->
        <button class="btn btn-block text-center my-3">Đăng Nhập</button>
        <div class="text-center pt-3 text-muted">Not a member? <a href="singup.jsp">Sign up</a></div>
    </form>
</div>
</html>
