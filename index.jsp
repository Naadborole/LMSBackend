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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
            <h3 style="color: #e00; font-weight: 800; text-align: center">
              LOGIN
            </h3>
            <br />
            <!-- LOGIN FORM
            -----
            ------
            --------
            -->
            <form class = "needs-validation" id="LoginForm" action = "Auth" method="post">
              <div class="mb-3">
                <label for="Email1" class="form-label"
                  >Email address</label
                >
                <input
                  type="email"
                  class="form-control"
                  id="Email1"
                  name = "email"
                  aria-describedby="emailHelp"
                />
                <div class="valid-feedback" id="valid-for-Email1">Looks good!</div>
                <div class="invalid-feedback" id="invalid-for-Email1">Please choose a username.</div>
              </div>
              <div class="mb-3">
                <label for="passwd1" class="form-label">Password</label>
                <input
                  type="password"
                  class="form-control"
                  name = "password"
                  id="passwd1"
                  aria-describedby="emailHelp"
                />
                <div class="valid-feedback" id="valid-for-passwd1">Looks good!</div>
                <div class="invalid-feedback" id="invalid-for-passwd1">Please choose a username.</div>
              </div>
              <br />
              <button type="submit" id = "subtn" class="btn btn-red center-btn" onclick="checkValidityLogin('Email1', 'passwd1')">Login</button>
            </form>
            <br>
            <span> Not an employee?<a href = "/ProjectBackend/AdminIndex.jsp"> Login as admin</a></span>
            
            <!-- LOGIN FORM END
            --------
            ----------
            -----------
            -->
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
            <form class="needs-validation" action = "ESignUp" method="POST">
              <div class="mb-3">
                <label for="Email2" class="form-label"
                  >Email address</label
                >
                <input
                  type="email"
                  class="form-control"
                  id="Email2"
                  aria-describedby="emailHelp"
                  name= "regEm"
                  required
                />
                <div class="valid-feedback" id="valid-for-Email2">Looks good!</div>
                <div class="invalid-feedback" id="invalid-for-Email2">Please choose a username.</div>
              </div>
              <div class="mb-3">
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label for="fname">First Name</label>
                    <input type="text" class="form-control" id="fname" name = "fname"/>
                    <div class="valid-feedback" id="valid-for-fname">Looks good!</div>
                    <div class="invalid-feedback" id="invalid-for-fname">This field cannot be empty</div>
                  </div>
                  <div class="form-group col-md-6">
                    <label for="lname">Last Name</label>
                    <input type="text" class="form-control" id="lname" name = "lname"/>
                    <div class="valid-feedback" id="valid-for-lname">Looks good!</div>
                    <div class="invalid-feedback" id="invalid-for-lname">This field cannot be empty</div>
                  </div>
                </div>
              </div>
              <div class="mb-3">
                <label for="passwd2" class="form-label">Password</label>
                <input
                  type="password"
                  class="form-control"
                  id="passwd2"
                  name = "regpasswd"
                  aria-describedby="emailHelp"
                />
                <div class="valid-feedback" id="valid-for-passwd2">Looks good!</div>
                <div class="invalid-feedback" id="invalid-for-passwd2">Please choose a username.</div>
              </div>
              <br />
              <button type="submit" id="regbtn" class="btn btn-red center-btn" onclick="checkValidityLogin('Email2', 'passwd2')">Register</button>
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
  <script src="validation.js"></script>
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

let mssg = "${error}";
if(mssg != "" && mssg != "null"){
  alert(mssg);
}

document.getElementById("subtn").addEventListener("click", function(event){
  if(!CheckValidityRequestForm()){
    event.preventDefault();
    event.stopPropagation();
  }
  else{
  }
})

document.getElementById("regbtn").addEventListener("click", function(event){
  if(!CheckValidityLogin()){
    event.preventDefault();
    event.stopPropagation();
  }
  else{
  }
})

  </script>
</html>
