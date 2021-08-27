<!DOCTYPE html>
<head>
    <meta charset="UTF-8" />

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="../../resources/static/css/login.css"></script>
    <style>
        body, html {
            height: 100%;
            margin: 0;
        }
    </style>

    <%@ page import="com.example.demo.Entity.User" %>
    <% User currentUser = (User) (session.getAttribute("user"));%>
</head>
<body>

                <div class="banner-sec">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img class="d-block img-fluid" src="../../resources/static/assets/img/solar.jpg" alt="First slide">
                                <div style="left: 52%;" class="carousel-caption d-none d-md-block">
                                    <div style="alignment: right; width: 570px; background: #000000; border-radius: 3px; overflow: hidden; opacity: 0.6; padding: 20px" class="wrap-login100 banner-text">
                                        <h2 class="text-center">Login Now</h2>
                                        <form class="login-form" name="loginForm" action="/doLogin" id="loginForm">
                                            <div class="form-group">

                                                <label class="text-uppercase">Username</label>
                                                <input type="text" name="email" class="form-control" placeholder="">

                                            </div>
                                            <div class="form-group">
                                                <label class="text-uppercase">Password</label>
                                                <input id="password" type="password"  name="password" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">

                                            </div>


                                            <div class="form-check">
                                                <label class="form-check-label">


                                                </label>



                                                <button style="margin: 5px" type="submit" onclick="encrpt()" class="btn btn-login float-right" >Login</button>

                                                <a href="/user/insertPage"><button type="button" style="margin: 5px"
                                                                                        class="btn btn-register float-right">Register</button></a>
                                            </div>

                                        </form>
<%--                                        <h2>This is Heaven</h2>--%>
<%--                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>--%>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
</div>


                <script src="https://cdnjs.cloudflare.com/ajax/libs/blueimp-md5/2.5.0/js/md5.min.js"></script>


</body>
</html>