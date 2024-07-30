
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="errorpages/errorswr.jsp" %>
<%@page import="com.web.app.helper.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="css/styles.css" >
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body style="background-color: darkslategrey; color:#fffefe;">
        <%@include file="nav.jsp" %>
        <main class="p-1">
            <div class="container">

                <div class="col-md-6 offset-md-3">

                    <div class="card">
                        <div class="card-header text-center">
                            <span class="fa fa-3x fa-user-circle fa-spin"></span>
                            <br>
                            Register Here
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="RegisterServlet" method="POST">
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
<!--                                 <div class="mb-3">
                                    <label for="exampleInputProfile" class="form-label">Profile</label>
                                    <input name="profile" type="text" class="form-control" id="examplHelp">
                                </div>-->
                                
                                <div class="mb-3">
                                    <label for="gender" class="form-label">Select Gender</label><br>
                                    <input type="radio" id="gender" name="gender" value="male">Male<br>
                                    <input type="radio" id="gender" name="gender" value="female">Female<br>
                                </div>
                                
                                <div class="mb-3 form-check">
                                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Agree to terms and condition</label>
                                </div>
                                <div class="container text-center">
                                    <span class="fa fa-spinner fa-spin fa-4x" id="loader" style="display: none"></span>
                                </div>
                                <button type="submit" class="btn btn-primary" id="submit-btn">Submit</button>
                            </form>
                        </div>
                        <div class="card-footer">

                        </div>
                    </div>
                </div>
            </div>
        </main>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
         <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="js/newjs.js"></script>
  <script>
    $(document).ready(function () {
    console.log("Document loaded...");

    $('#reg-form').on('submit', function (event) {
        event.preventDefault(); // Prevent the form from submitting normally
        
        $("#submit-btn").hide(); // Hide the submit button
        $("#loader").show();     // Show the loader animation
        
        let form = new FormData(this); // Create a FormData object from the form
        
        // Send data to servlet using AJAX
        $.ajax({
            url: "RegisterServlet",  // URL of the servlet to handle the registration
            method: 'POST',
            data: form,              // Data to be sent (the FormData object)
            processData: false,      // Prevent jQuery from processing the data
            contentType: false,      // Prevent jQuery from setting content type
            success: function (data, textStatus, jqXHR) {
                // Upon successful registration
                console.log(data);  // Log the data received from the servlet
                $("#submit-btn").show();  // Show the submit button
                $("#loader").hide();      // Hide the loader animation
                
                // Show a success message using SweetAlert
                swal("You have been registered! Redirecting to login page.")
                .then((value) => {
                    window.location = "login.jsp";  // Redirect to the login page
                });
            },
            error: function (jqXHR, textStatus, errorThrown) {
                // If there's an error during registration
                console.error("Error:", textStatus, errorThrown);  // Log the error
                swal("There has been some error! Sorry for the inconvenience...");
            }
        });
    });
});
        </script>
    </body>
</html>
