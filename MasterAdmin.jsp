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
    <script src="validation.js"></script>
  </head>

  <body>
    <ul class="nav-ul">
      <li class="nav-li active"><a class="nav-a" href="MasterAdmin.html">Master Admin</a></li>
    </ul>

    <h1 class="title">Leave Management System</h1>
    <div class="row main row-flex">
      <div class="col-md">
        <!-- <div class="card card-pad h-auto w-75 mx-auto card-shadow" style="border-color: #e00">
          <div class="row-flex">
            <div class="col-md-8">
              <h4 class="card-title">Naad Borole</h4>
              <h5 class="card-subtitle mb-2 text-muted">naadborole2000@gmail.com</h5>
              <h5 class="card-subtitle mb-2 text-muted">Assistant Professor</h5>
              <h5 class="card-subtitle mb-2 text-muted">FE</h5> 
            </div>
            <div class="col-md-4 my-auto">
              <h4 class="card-title">Request : Pending</h4> -->
              <!--<button class="btn btn-red mr-4" id="" onclick="">Accept</button>
              <button class="btn btn-red" id="" onclick="">Decline</button>
            </div>
          </div>
        </div> -->
        <br />
        <!-- <div class="card card-pad h-auto w-75 mx-auto card-shadow" style="border-color: #e00">
          <div class="row-flex">
            <div class="col-md-8">
              <h4 class="card-title">Aniket Rathod</h4>
              <h5 class="card-subtitle mb-2 text-muted">abr63499@gmail.com</h5>
              <h5 class="card-subtitle mb-2 text-muted">Assistant Professor</h5>
              <h5 class="card-subtitle mb-2 text-muted">FE</h5> 
            </div>
            <div class="col-md-4 my-auto">
               <h4 class="card-title">Request : Pending</h4> -->
              <!--<button class="btn btn-red mr-4" id="" onclick="">Accept</button>
              <button class="btn btn-red" id="" onclick="">Decline</button>
            </div>
          </div>  
        </div> -->
        <br />
      </div>
    </div>
  </body>

   <script>
    const arrData = ${arrMasterAdmin};
    console.log(arrData);
    insertList();
    function insertList()
    {
      for(var i = 0 ; i < arrData.length ; i++)
      {
        var div1 = document.createElement('div');
        div1.className = 'card card-pad h-auto w-75 mx-auto card-shadow';  
        div1.innerHTML = '<div class="row-flex"><div class="col-md-8"><h4 class="card-title" id="memberAdminName">'+arrMasterAdmin[i].FirstName+" "+arrMasterAdmin[i].LastName+'</h4><h5 class="card-subtitle mb-2 text-muted" id="memberAdminEmail">'+arrMasterAdmin[i].Email+'</h5> <h5 class="card-subtitle mb-2 text-muted" id="memberAdminTitle">'+arrMasterAdmin[i].Title+'</h5> <h5 class="card-subtitle mb-2 text-muted" id="memberAdminDept">'+arrMasterAdmin[i].Department+'</h5> </div><div class="col-md-4 my-auto"><button class="btn btn-red mr-4" id="acceptRequest" onclick="">Accept</button><button class="btn btn-red" id="rejectRequest" onclick="">Decline</button></div></div>';
        $(".col-md").append(div1);
        $(".col-md").append('<br/>')
      }
    }
  </script> 

</html>