
<%@page import="com.web.app.entities.User"%>
<%@page import="jakarta.servlet.*"%>
<%@page errorPage="errorpages/errorswr.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    User user = (User) session.getAttribute("currentUser");

    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/styles.css" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body style="background-color: #020a13; color: #fffefe">
        <!--navbar start-->

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
                    <ul class="navbar-nav me-right">
                        <li class="nav-item">
                            <button type="button" class="btn btn-outline-light nav-link" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                <span class="fa fa-user"></span> <%= user.getName()%>
                            </button> </li>
                        <li>
                            <a href="LogoutServlet" class="btn btn-outline-light nav-link"><span class="fa fa-user-circle fa-spin"></span> Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!--navbar ends here-->
        <!--home starts here-->
        <br>
        <div class="container-fluid p-0 m-0" style="background-color: #020a13; color:#fffefe">
            <div class="jumbotron">
                <div class="container">
                    <p style="color: greenyellow"><span style="color:" class="fa fa-hand-spock-o"></span>Hi i am</p>
                    <p><h1 class="display-3"><span class="fa fa-medkit"></span> Dr.code</h1>
                    <p style="color: #0fa">I speak in <span style="color: yellow">&lt;code/&gt;</span> so you don't have to</p>

                </div>
            </div>
            <br>
            <div class="container" >
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
        </div>
        <!--home ends here-->    

        <!--profile modal starts here-->

        <!-- Button trigger modal -->


        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" style="color: black">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel"><span class="fa fa-code" style="font-size: 40px"></span> </h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body" style="background-color: #020a13; color: lightgreen">

                        <!--form detail-->

                        <div id="form-detail">
                            <img src="img/<%= user.getProfile()%>" class="text-center" style="height: 20%; width: 30%; border-radius: 50%"><br> <br>
                            <span class="fa fa-user"></span> <%= user.getName()%><br>
                            <span class="fa fa-envelope"></span> <%= user.getEmail()%><br>
                            <span class="fa fa-intersex"></span> <%= user.getGender()%>
                        </div>
                        <!--edit file-->
                        <div id="form-edit" style="display: none">

                            <form id="reg-form" action="UpdateUser" method="POST">
                                <div class="mb-3">
                                    <label for="user_name" class="form-label">User Name</label>
                                    <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp">
                                </div>

                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                                    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                </div>

                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1">
                                </div>
                                <div class="mb-3">
                                    <label for="profile" class="form-label">Profile</label>
                                    <input name="profile" type="file" class="form-control" aria-describedby="examplHelp">
                                </div>

                                <div class="mb-3">
                                    <label for="gender" class="form-label">Select Gender</label><br>
                                    <input type="radio" id="gender" name="gender" value="male">Male<br>
                                    <input type="radio" id="gender" name="gender" value="female">Female<br>
                                </div>

                                <div class="container text-center">
                                    <span class="fa fa-spinner fa-spin fa-4x" id="loader" style="display: none"></span>
                                </div>
                                <button type="submit" class="btn btn-primary" id="submit-btn">Save</button>
                            </form>

                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" id="edit" class="btn btn-secondary">Edit</button>
                    </div>
                </div>
            </div>
        </div>

        <!--profile modal ends here-->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

        <script>

            $(document).ready(function () {
                let editStatus = false;

                $('#edit').click(function () {
                    if (editStatus == false) {
                        $("#form-detail").hide()
                        $("#form-edit").show()
                        editStatus = true
                        $(this).text("Back")
                    } else {
                        $("#form-detail").show()
                        $("#form-edit").hide()
                        editStatus = true
                        $(this).text("Edit")
                    }
                    $('#reg-form').on('submit', function (event) {
                        event.preventDefault(); // Prevent the form from submitting normally

                        $("#submit-btn").hide(); // Hide the submit button
                        $("#loader").show();     // Show the loader animation

                        let form = new FormData(this); // Create a FormData object from the form

                        // Send data to servlet using AJAX
                        $.ajax({
                            url: "UpdateUser", // URL of the servlet to handle the registration
                            method: 'POST',
                            data: form, // Data to be sent (the FormData object)
                            processData: false, // Prevent jQuery from processing the data
                            contentType: false, // Prevent jQuery from setting content type
                            success: function (data, textStatus, jqXHR) {
                                // Upon successful registration
                                console.log(data);  // Log the data received from the servlet
                                $("#submit-btn").show();  // Show the submit button
                                $("#loader").hide();      // Hide the loader animation

                                // Show a success message using SweetAlert
                                swal("Your data has been updated successfully!")
                            },
                            error: function (jqXHR, textStatus, errorThrown) {
                                // If there's an error during registration
                                console.error("Error:", textStatus, errorThrown);  // Log the error
                                swal("There has been some error! Sorry for the inconvenience...");
                            }
                        });
                    })
                })

            });

        </script>

    </body>
</html>
