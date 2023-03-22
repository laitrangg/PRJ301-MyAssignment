<%-- 
    Document   : login
    Created on : Mar 15, 2023, 2:37:30 AM
    Author     : My PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="./assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="./assets/css/bootstrap.css" rel="stylesheet">
        <link rel="stylesheet" href="./assets/css/style.css">
        <title>Document</title>
        <style>
            #bg {
                background-image: url('img/fptbackground.png');
                position: fixed;
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                background-size: cover;
            }
            body {
                font-family: 'Lato', sans-serif;
                color: #4A4A4A;
                display: flex;
                justify-content: left;
                align-items: center;
                min-height: 100vh;
                overflow: hidden;
                margin-left: 200px;
                padding: 0;
            }

            form {
                width: 350px;
                position: relative;
            }
            form .form-field::before {
                font-size: 20px;
                position: absolute;
                left: 15px;
                top: 17px;
                color: #888888;
                content: " ";
                display: block;
                background-size: cover;
                background-repeat: no-repeat;
            }
            form .form-field:nth-child(1)::before {
                background-image: url(img/user-icon.png);
                width: 20px;
                height: 20px;
            }
            form .form-field:nth-child(2)::before {
                background-image: url(img/lock-icon.png);
                width: 16px;
                height: 16px;
            }
            form .form-field {
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-pack: justify;
                -ms-flex-pack: justify;
                justify-content: space-between;
                -webkit-box-align: center;
                -ms-flex-align: center;
                align-items: center;
                margin-bottom: 1rem;
                position: relative;
            }
            form input {
                font-family: inherit;
                width: 100%;
                outline: none;
                background-color: #fff;
                border-radius: 4px;
                border: none;
                display: block;
                padding: 0.9rem 0.7rem;
                box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
                font-size: 17px;
                color: #4A4A4A;
                text-indent: 40px;
            }
            form .btn {
                outline: none;
                border: none;
                cursor: pointer;
                display: inline-block;
                margin: 0 auto;
                padding: 0.9rem 2.5rem;
                text-align: center;
                background-color: #47AB11;
                color: #fff;
                border-radius: 4px;
                box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
                font-size: 17px;
            }
        </style>
    </head>
    <body>
        <div id="bg"></div>
        <div class="body">           
            <form action="login" method="POST">
                <h1>FPT University Academic Portal</h1>
                <hr style="border-top: 1px solid black;">
                <div class="form-group">
                    <label for="exampleInputEmail1">Username</label>
                    <div class="form-field">
                        <input name="username" type="text" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Username">
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <div class="form-field">
                        <input name="password" type="password" id="exampleInputPassword1" placeholder="Password">
                    </div>
                </div>    
                <div class="form-field">
                    <button type="submit" class="btn btn-primary">Login</button> 
                </div> 
            </form>
            <h5 style="color: red; margin-top: 10px;
                <c:if test="${requestScope.failed == 1}">display: inline;</c:if>
                <c:if test="${requestScope.failed == 0}">display: none;</c:if>
                ">The Username or Password is Incorrect</h5>

        </div>



        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>

</html>
