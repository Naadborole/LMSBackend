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

  <body>
    <ul class="nav-ul">
      <li class="nav-li"><a class="nav-a" href="Home">Home</a></li>
      <li class="nav-li active"><a class="nav-a" href="">Dashboard</a></li>
    </ul>
    <div class="row main row-flex" style = "margin-top: 3em;">
        <div class = "col-8" >
            <div class="card" >
                <table class = "table" id="majortab" >
                    <thead class = "text-white" style="background-color: #e00;">
                        <tr>
                            <th class="text-center">Type</th>
                            <th class="text-center">Days Allocated</th>
                            <th class="text-center">Days Used</th>
                            <th class="text-center">Days Remaining</th>
                        </tr>
                    </thead>
                    <tbody id="inr">

                    </tbody>
                </table>
            </div>
        </div>
    </div>
  </body>
  <script src="DaysUsedUpdate.js"></script>
</html>
