<%@page errorPage="errorpages/errorswr.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/styles.css">
        <style>
            @keyframes ring {
  0% { transform: rotate(0); }
  20% { transform: rotate(10deg); }
  40% { transform: rotate(-10deg); }
  60% { transform: rotate(10deg); }
  80% { transform: rotate(-10deg); }
  100% { transform: rotate(0); }
}
        </style>
        <link href="css/styles.css" rel="stylesheet">
    </head>
    <body>
        <br>
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron">
                <div class="container">
                    <p style="color: greenyellow"><span style="color:" class="fa fa-hand-spock-o"></span>Hi i am</p>
                    <p><h1 class="display-3"><span class="fa fa-medkit"></span> Dr.code</h1>
                    <p style="color: #0fa">I speak in <span style="color: yellow">&lt;code/&gt;</span> so you don't have to</p>
                    <a href="register.jsp" id="login" class="btn btn-outline-light"><span class="fa fa-bell-o" style="animation: ring 1s linear infinite;"></span> Register for demo</a>
                    <a href="login.jsp" id="register" class="btn btn-outline-light"><span class="fa fa-user-circle fa-spin"></span> Login</a>
                </div>
            </div>
        </div>
        <br>
        <div class="container">
            <h1> My Weapons <span class="fa fa-wrench"></span></h1>
            <br>
            <div class="row">
                <div class="col-md-4">
                    <div class="card" style="background-color:darkslategrey;color:#0fa;">
                        <div class="card-body">
                            <h5 class="card-title">Core Java</h5>
                            <p class="card-text color-light">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="commingsoon.jsp" class="btn btn-secondry">Read more...</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" style="background-color:darkslategrey;color:#0fa;">
                        <div class="card-body">
                            <h5 class="card-title">OOPs</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="commingsoon.jsp" class="btn btn-secondry">Read more...</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" style="background-color:darkslategrey;color:#0fa;">
                        <div class="card-body">
                            <h5 class="card-title">HTML/CSS</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="commingsoon.jsp" class="btn btn-secondry">Read more...</a>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-md-4">
                    <div class="card" style="background-color:darkslategrey;color:#0fa;">
                        <div class="card-body">
                            <h5 class="card-title">Hibernate</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="commingsoon.jsp" class="btn btn-secondry">Read more...</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" style="background-color:darkslategrey;color:#0fa;">
                        <div class="card-body">
                            <h5 class="card-title">JavaScript</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="commingsoon.jsp" class="btn btn-secondry">Read more...</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" style="background-color:darkslategrey;color:#0fa;">
                        <div class="card-body">
                            <h5 class="card-title">JDBC/JSP/Servlets</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="commingsoon.jsp" class="btn btn-secondry">Read more...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        
        <script src="js/transition.js"></script>
    </body>
</html>
