 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="errorpages/errorswr.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="home.jsp">
        <span class="fa fa-code" style="font-size: 40px"></span>
  </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.jsp"><span class="fa fa-slideshare"></span> Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="commingsoon.jsp"><span class="fa fa-address-card-o"></span> About</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="commingsoon.jsp"><span class="fa fa-envelope"></span> Contact</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="commingsoon.jsp"><span class="fa fa-briefcase"></span> Work</a>
        </li>
      </ul>
        <ul class="navbar-nav me-right" >
        <li class="nav-item">
            <a href="login.jsp" class="btn btn-outline-light nav-link"><span class="fa fa-user-circle fa-spin"></span> Login</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
    </body>
</html>
