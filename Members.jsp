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
      <li class="nav-li "><a class="nav-a" href="AdminDashboard.jsp">Home</a></li>
      <li class="nav-li active"><a class="nav-a" href="Members.jsp">Members</a></li>
      <li class="nav-li "><a class="nav-a" href="Requests.html">Requests</a></li>
    </ul>
    <h1 class="title">Leave Management System</h1>
    <div class="row main row-flex">
      <div class="col-md">
        <!--<div class="card card-pad h-auto w-75 mx-auto" style="border-color: #e00">
          <div class="row-flex">
            <div class="col-md-8">
              <h4 class="card-title" id="memberName">Aniket</h4>
              <h5 class="card-subtitle mb-2 text-muted" id="memberEmail">qwerfgh</h5> 
            </div>
            <div class="col-md-4 my-auto">
              <h4 class="card-title" id="Leaves">20</h4>
            </div>
          </div>
        </div>-->
        <br />
        <!--<div class="card card-pad h-auto w-75 mx-auto" style="border-color: #e00">
          <div class="row-flex">
            <div class="col-md-8">
              <h4 class="card-title">Aniket Rathod</h4>
              <h5 class="card-subtitle mb-2 text-muted">abr63499@gmail.com</h5> 
            </div>
            <div class="col-md-4 my-auto">
              <h4 class="card-title">Total Leaves Available : 20</h4>
            </div>
          </div>  
        </div>
        <br />-->
      </div>
    </div>
  </body>
  <script>
    const arrData = ${arrAdmin};
    console.log(arrData);
    insertList();
    function insertList()
    {
      for(var i = 0 ; i < arrData.length ; i++)
      {
        var div1 = document.createElement('div');
        div1.className = 'card card-pad h-auto w-75 mx-auto card-shadow';  
        div1.innerHTML = '<div class="row-flex"><div class="col-md-8"><h4 class="card-title" id="memberName">'+arrData[i].FirstName+" "+arrData[i].LastName+'</h4><h5 class="card-subtitle mb-2 text-muted" id="memberEmail">'+arrData[i].Email+'</h5> </div><div class="col-md-4 my-auto"><h4 class="card-title" id="Leaves">Total Leaves available :  '+ arrData[i].AvailableLeaves.Total+'</h4></div></div>';
        $(".col-md").append(div1);
        $(".col-md").append('<br/>')
      }
    }
  </script>
  <script src="MemberList.js"></script>
</html>