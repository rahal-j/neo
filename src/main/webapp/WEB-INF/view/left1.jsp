
<%@ page import="com.example.demo.Entity.User" %>
<% User currentUser = (User) (session.getAttribute("user"));%>

<div id="left" >
    <div class="media user-media well-small">
        <a class="user-link" href="#">
            <img style="height: 100px" class="media-object img-thumbnail user-img" alt="User Picture" src="../../resources/static/assets/img/user-avatar.jpg" />
        </a>
        <br />
        <div class="media-body">
            <h5 class="media-heading"> Welcome
                 <span id="user">
                   </span></h5>
            <h5 class="media-heading"> </h5>
            <ul class="list-unstyled user-info">

                <li>
                    <a class="btn btn-success btn-xs btn-circle" style="width: 10px;height: 12px;"></a> Online

                </li>

            </ul>
        </div>
        <br />
    </div>


</div>























<%--<div id="left" >
    <div class="media user-media well-small">
        <a class="user-link" href="#">
            <img class="media-object img-thumbnail user-img" alt="User Picture" src="../../resources/static/assets/img/user.gif" />
        </a>
        <br />
        <div class="media-body">
            <h5 class="media-heading"> Joe Romlin</h5>
            <ul class="list-unstyled user-info">

                <li>
                    <a class="btn btn-success btn-xs btn-circle" style="width: 10px;height: 12px;"></a> Online

                </li>

            </ul>
        </div>
        <br />
    </div>

    <ul id="menu" class="collapse">


        <li class="panel active">
            <a href="index.html" >
                <i class="icon-table"></i> Dashbord


            </a>
        </li>



        <li class="panel ">
            <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#component-nav">
                <i class="icon-tasks"> </i> Quick menu

                <span class="pull-right">
                          <i class="icon-angle-left"></i>
                        </span>
                &nbsp; <span class="label label-default">10</span>&nbsp;
            </a>
            <ul class="collapse" id="component-nav">

                <li class=""><a href="/member/"><i class="icon-angle-right"></i> Add Member</a></li>
                <li class=""><a href="/payment/"><i class="icon-angle-right"></i> Add Payment </a></li>
                <li class=""><a href="/exercise/"><i class="icon-angle-right"></i> Add Exercise </a></li>
                <li class=""><a href="/schedule/"><i class="icon-angle-right"></i> Add Schedule </a></li>
                <li class=""><a href="/product/"><i class="icon-angle-right"></i> Add Product </a></li>
                <li class=""><a href="/subscription/"><i class="icon-angle-right"></i> Add Subscription </a></li>
                <li class=""><a href="/userRole/"><i class="icon-angle-right"></i> Add User Role </a></li>
                <li class=""><a href="/stocks/"><i class="icon-angle-right"></i> Add Stocks </a></li>
            </ul>
        </li>







    </ul>

</div>--%>





