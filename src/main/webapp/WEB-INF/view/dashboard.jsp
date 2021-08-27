<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="UTF-8" />
    <title>NEO | Dashboard </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <%@include file="header_src.jsp"%>

</head>

<!-- END HEAD -->
<!-- LOGO SECTION -->
<header class="navbar-header">

    <a href="index.html" class="navbar-brand">
        <img src="//assets/img/logo.png" alt="" /></a>
</header>
<!-- BEGIN BODY -->
<body class="padTop53 " >

<!-- MAIN WRAPPER -->
<div id="wrap" >
    <!-- HEADER SECTION -->
    <%@include file="header.jsp"%>
    <!-- END HEADER SECTION -->

    <!-- MENU SECTION -->
    <%@include file="left.jsp"%>
    <!--END MENU SECTION -->

    <!--PAGE CONTENT -->
    <div id="content">
        <div class="inner" style="min-height: 700px;">
            <div class="row">
                <div class="col-lg-12">
                    <h1 style="color: #8a7d7d"> NEO </h1>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-lg-12">
                    <div style="text-align: center;">

                        <h1 class="media-heading"> Welcome
                            <span id="user"><%
                                if (currentUser == null) {
                                    response.sendRedirect("http://localhost:8081/");

                                } else {%>
                     <%= currentUser.getFirstName()%>
			<% } %>
                   </span></h1>

                        <a class="quick-btn" href="/user/insertPage">
                            <i class="icon-edit-sign icon-4x"></i>
                            <span style="font-size: medium">New Registration</span>
                        </a>



                        <br/>



                    </div>
                </div>
            </div>
            <!--END BLOCK SECTION -->
            <hr />
        </div>
    </div>
    <!--END PAGE CONTENT -->
</div>
<!--END MAIN WRAPPER -->
<!-- FOOTER -->
<%@include file="footer.jsp"%>
<!--END FOOTER -->
<%@include file="footer_src.jsp"%>
</body>
<!-- END BODY -->
</html>
