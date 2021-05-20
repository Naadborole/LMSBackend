<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Leave Management System</title>
    <link rel="stylesheet" href="Basic.css" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <script src="validation.js"></script>
  </head>
  <body class="black-back">
    <h1 class="title threeD">Leave Management System</h1>
    <br />
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <div
            class="card card-pad card-shadow h-100"
            style="
              border-color: #e00;
              border-top-width: 6px;
              border-radius: 10px;
            "
          >
         <div class="my-auto">     <!--to bring login to centre-->
            <h3 style="color: #e00; font-weight: 800; text-align: center">
              LOGIN
            </h3>
            <br />
            <!-- LOGIN FORM
            -----
            ------
            --------
            -->
            <form class = "needs-validation" id="LoginForm" action="AdminAuth" method="POST">
              <div class="mb-3">
                <label for="Email1" class="form-label"
                  >Email address</label
                >
                <input
                  type="email"
                  class="form-control"
                  id="Email1"
                  aria-describedby="emailHelp"
                  name="email"
                />
                <div class="valid-feedback" id="valid-for-Email1">Looks good!</div>
                <div class="invalid-feedback" id="invalid-for-Email1">Please choose a username.</div>
              </div>
              <div class="mb-3">
                <label for="passwd1" class="form-label">Password</label>
                <input
                  type="password"
                  class="form-control"
                  id="passwd1"
                  aria-describedby="emailHelp"
                  name="password"
                />
                <div class="valid-feedback" id="valid-for-passwd1">Looks good!</div>
                <div class="invalid-feedback" id="invalid-for-passwd1">Please choose a username.</div>
              </div>
              <br />
              <button type="submit" class="btn btn-red center-btn" onclick="checkValidityLogin('Email1', 'passwd1') " id="adminLogin">Login</button>
            </form>
            <!-- LOGIN FORM END
            --------
            ----------
            -----------
            -->
          </div>
         </div>
        </div>
        <div class="col-md-6">
          <div
            class="card card-pad"
            style="
              border-color: #e00;
              border-top-width: 6px;
              border-radius: 10px;
            "
          >
            <h3 style="color: #e00; font-weight: 800; text-align: center">
              Register
            </h3>
            <br />
            <!-- REGISTER FORM
            -----
            ------
            -------
            -->
            <form class="needs-validation" action="AdSignUp" method="POST">
              <div class="mb-3">
                <label for="Email2" class="form-label"
                  >Email address</label
                >
                <input
                  type="email"
                  class="form-control"
                  id="Email2"
                  aria-describedby="emailHelp"
                  name="AdminEmail"
                  required
                />
                <div class="valid-feedback" id="valid-for-Email2">Looks good!</div>
                <div class="invalid-feedback" id="invalid-for-Email2">Please choose a username.</div>
              </div>
              <div class="mb-3">
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label for="fname">First Name</label>
                    <input type="text" class="form-control" id="fname" name="Adminfname" />
                    <div class="valid-feedback" id="valid-for-fname">Looks good!</div>
                    <div class="invalid-feedback" id="invalid-for-fname">This field cannot be empty</div>
                  </div>
                  <div class="form-group col-md-6">
                    <label for="lname">Last Name</label>
                    <input type="text" class="form-control" id="lname" name="Adminlname" />
                    <div class="valid-feedback" id="valid-for-lname">Looks good!</div>
                    <div class="invalid-feedback" id="invalid-for-lname">This field cannot be empty</div>
                  </div>
                </div>
              </div>
              <div class="mb-3">
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label for="dept">Department</label>
                    <input type="text" class="form-control" id="dept" name="Admindept" />
                    <div class="valid-feedback" id="valid-for-dept">Looks good!</div>
                    <div class="invalid-feedback" id="invalid-for-dept">This field cannot be empty</div>
                  </div>
                  <div class="form-group col-md-6">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" id="title" name="Admintilte" />
                    <div class="valid-feedback" id="valid-for-title">Looks good!</div>
                    <div class="invalid-feedback" id="invalid-for-title">This field cannot be empty</div>
                  </div>
                </div>
              </div>
              <div class="mb-3">
                <label for="passwd2" class="form-label">Password</label>
                <input
                  type="password"
                  class="form-control"
                  id="passwd2"
                  aria-describedby="emailHelp"
                  name="AdminPass"
                />
                <div class="valid-feedback" id="valid-for-passwd2">Looks good!</div>
                <div class="invalid-feedback" id="invalid-for-passwd2">Please choose a username.</div>
              </div>
              <br />
              <button type="submit" class="btn btn-red center-btn" onclick="checkValidityLogin('Email2', 'passwd2')" id="AdminRegbtn">Register</button>
            </form>
            <!-- REGISTER FORM END
            ---------
            -----------
            ------------
            -->
          </div>
        </div>
      </div>
    </div>
  </body>
  <script>
      (() => {
        "use strict";

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        const forms = document.querySelectorAll(".needs-validation");

        // Loop over them and prevent submission
        Array.prototype.slice.call(forms).forEach((form) => {
          form.addEventListener(
            "submit",
            (event) => {
              if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add("was-validated");
            },
            false
          );
        });
      })();

    let mssg = "${AdminErrorMsg}";
    if(mssg != "" && mssg != "null"){
      alert(mssg);
    }
      document.getElementById("adminLogin").addEventListener("click", function(event){
      if(!CheckValidityRequestForm()){
        event.preventDefault();
        event.stopPropagation();
      }
      else{
      }
    })

    document.getElementById("AdminRegbtn").addEventListener("click", function(event){
      if(!CheckValidityLogin()){
        event.preventDefault();
        event.stopPropagation();
      }
      else{
      }
    })
  </script>
</html>
