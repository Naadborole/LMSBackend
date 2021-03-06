<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Leave Management System</title>
    <link rel="stylesheet" href="Basic.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="validation.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  </head>

  <body>
    <ul class="nav-ul">
      <li class="nav-li active"><a class="nav-a" href="Home">Home</a></li>
      <li class="nav-li">
        <a class="nav-a" href="EmployeeDashboard.jsp">Dashboard</a>
      </li>
    </ul>
    <h1 class="title">Leave Management System</h1>
    <div class="row main row-flex">
      <div class="col-md-5">
        <div class="card card-pad" style="border-color: #e00">
          <h3 style="color: #e00; font-weight: 800">Leave Application</h3>
          <br />
          <form class="needs-validation-1" id="form1" action="ReqEnter" method = "POST">
            <div class="mb-3 form-outline">
              <div class="form-row">
                <div class = "form-group col-6">
                  <label for="Email1" class="form-label">Email</label>
                  <input
                    type="email"
                    class="form-control"
                    id="Email1"
                    aria-describedby="emailHelp"
                    name = "toem"
                  />
                  <div class="valid-feedback" id="valid-for-Email1">
                    Looks good!
                  </div>
                  <div class="invalid-feedback" id="invalid-for-Email1">
                    Please choose an upcoming date.
                  </div>
                </div>
                <div class = "form-group col-6">
                  <label for="typeselect" class="form-label">Type</label>
                  <select class="form-control selectpicker" id="typeselect" name = "type">
                    <option value="Medical">Medical</option>
                    <option value="Maternity">Maternity</option>
                    <option value="Personal">Personal</option>
                    <option value="Other">Other</option>
                  </select>
                  <div class="valid-feedback" id="valid-for-Email1">
                    Looks good!
                  </div>
                  <div class="invalid-feedback" id="invalid-for-Email1">
                    Please choose a valid option
                  </div>
                </div>  
              </div>
            </div>
            <div class="mb-3">
              <label for="Subject1" class="form-label">Subject</label>
              <input type="text" class="form-control" id="Subject1" name = "sub"/>
              <div class="valid-feedback" id="valid-for-Subject1">
                Looks good!
              </div>
              <div class="invalid-feedback" id="invalid-for-Subject1">
                Please choose an upcoming date.
              </div>
            </div>
            <div class="mb-3">
              <label for="example-date-input" class="col-2 col-form-label"
                >Date</label
              >
              <div class="row">
                <div class="col-sm-5 col-md-3 col-lg-5">
                  <input
                    class="form-control"
                    type="date"
                    id="dtfrom"
                    name = "dtfrom"
                  />
                </div>
                <div class="col-sm-2 col-lg-2 text-center my-auto">to</div>
                <div class="col-sm-5 col-md-3 col-lg-5">
                  <input
                    class="form-control"
                    type="date"
                    id="dt2"
                    name = "dtto"
                  />
                </div>
              </div>
            </div>
            <div class="mb-3">
              <label for="exampleFormControlTextarea1" class="form-label"
                >Reason</label
              >
              <textarea
                class="form-control"
                id="exampleFormControlTextarea1"
                rows="3"
                name = "reason"
              ></textarea>
            </div>
            <br />
            <button type="submit" id="subtn" class="btn btn-red center-btn">
              Submit
            </button>
          </form>
        </div>
      </div>
      <div class="col-md">
        <div class="card card-pad h-100" style="border-color: #e00">
          <h3 style="color: #e00; font-weight: 800">Application Status</h3>
          <br />
          <!-- First Entry -->
          <div class="row h-25" style="margin-bottom: 15px">
            <div class="card w-100 h-100 card-shadow" id="entry1">
              <div class="card-body" style="padding: 0px" >
                <div class="row h-100" style="margin: 0px">
                  <div
                    class="col d-flex flex-column justify-content-lg-center"
                    style="padding-right: 10px; padding-top: 0px"
                  >
                    <h3
                      class="text-left smallfont"
                      style="margin-bottom: 4px"
                      id="name1"
                    >
                      Aniket Rathod
                    </h3>
                    <p
                      class="
                        text-muted
                        d-lg-flex
                        align-self-start
                        justify-content-lg-start
                        align-items-lg-center
                        smallfontem
                      "
                      id="email1"
                    >
                      naad.borole2000@gmail.com
                    </p>
                  </div>
                  <div
                    class="
                      col
                      d-flex
                      flex-column
                      justify-content-center
                      align-items-lg-center
                    "
                    style="padding-right: 7px; padding-left: 7px"
                  >
                    <p
                      class="text-muted smallfontem"
                      style="margin-bottom: 8px"
                    >
                      From
                    </p>
                    <p id="from1" class="smallfontem">21 Jul 2021</p>
                  </div>
                  <div
                    class="
                      col
                      d-flex
                      flex-column
                      justify-content-center
                      align-items-lg-center
                    "
                    style="
                      padding-top: 0px;
                      padding-right: 7px;
                      padding-left: 7px;
                    "
                  >
                    <p
                      class="text-muted smallfontem"
                      style="margin-bottom: 8px"
                    >
                      To
                    </p>
                    <p id="to1" class="smallfontem">24 Jul 2021</p>
                  </div>
                  <div
                    class="
                      col
                      d-flex
                      flex-column
                      justify-content-center
                      align-items-lg-center
                    "
                    style="padding-right: 7px; padding-left: 7px"
                  >
                    <p
                      class="text-muted smallfontem"
                      style="margin-bottom: 8px"
                    >
                      Type
                    </p>
                    <p id="Type1" class="smallfontem">Medical</p>
                  </div>
                  <div
                    class="
                      col
                      d-flex
                      flex-column
                      justify-content-center
                      align-items-lg-center
                    "
                  >
                    <p style="margin-bottom: 8px" class="smallfontem">Status</p>
                    <h3
                      class="text-info justify-content-center smallfontem2"
                      id="Status1"
                    >
                      Pending
                    </h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- SECOND ENTRY -->
          <div class="row h-25" style="margin-bottom: 15px">
            <div class="card w-100 h-100 card-shadow" id="entry2">
              <div class="card-body" style="padding: 0px" >
                <div class="row h-100" style="margin: 0px">
                  <div
                    class="col d-flex flex-column justify-content-lg-center"
                    style="padding-right: 10px; padding-top: 0px"
                  >
                    <h3
                      class="text-left smallfont"
                      style="margin-bottom: 4px"
                      id="name2"
                    >
                      Aniket Rathod
                    </h3>
                    <p
                      class="
                        text-muted
                        d-lg-flex
                        align-self-start
                        justify-content-lg-start
                        align-items-lg-center
                        smallfontem
                      "
                      id="email2"
                    >
                      naad.borole2000@gmail.com
                    </p>
                  </div>
                  <div
                    class="
                      col
                      d-flex
                      flex-column
                      justify-content-center
                      align-items-lg-center
                    "
                    style="padding-right: 7px; padding-left: 7px"
                  >
                    <p
                      class="text-muted smallfontem"
                      style="margin-bottom: 8px"
                    >
                      From
                    </p>
                    <p id="from2" class="smallfontem">21 Jul 2021</p>
                  </div>
                  <div
                    class="
                      col
                      d-flex
                      flex-column
                      justify-content-center
                      align-items-lg-center
                    "
                    style="
                      padding-top: 0px;
                      padding-right: 7px;
                      padding-left: 7px;
                    "
                  >
                    <p
                      class="text-muted smallfontem"
                      style="margin-bottom: 8px"
                    >
                      To
                    </p>
                    <p id="to2" class="smallfontem">24 Jul 2021</p>
                  </div>
                  <div
                    class="
                      col
                      d-flex
                      flex-column
                      justify-content-center
                      align-items-lg-center
                    "
                    style="padding-right: 7px; padding-left: 7px"
                  >
                    <p
                      class="text-muted smallfontem"
                      style="margin-bottom: 8px"
                    >
                      Type
                    </p>
                    <p id="Type2" class="smallfontem">Medical</p>
                  </div>
                  <div
                    class="
                      col
                      d-flex
                      flex-column
                      justify-content-center
                      align-items-lg-center
                    "
                  >
                    <p style="margin-bottom: 8px">Status</p>
                    <h3
                      class="text-info justify-content-center smallfontem2"
                      id="Status2"
                    >
                      Pending
                    </h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Third Entry -->
          <div class="row h-25">
            <div class="card w-100 h-100 card-shadow"  id="entry3">
              <div class="card-body" style="padding: 0px">
                <div class="row h-100" style="margin: 0px">
                  <div
                    class="col d-flex flex-column justify-content-lg-center"
                    style="padding-right: 10px; padding-top: 0px"
                  >
                    <h3
                      class="text-left smallfont"
                      style="margin-bottom: 4px"
                      id="name3"
                    >
                      Aniket rathod
                    </h3>
                    <p
                      class="
                        text-muted
                        d-lg-flex
                        align-self-start
                        justify-content-lg-start
                        align-items-lg-center
                        smallfontem
                      "
                      id="email3"
                    >
                      naad.borole2000@gmail.com
                    </p>
                  </div>
                  <div
                    class="
                      col
                      d-flex
                      flex-column
                      justify-content-center
                      align-items-lg-center
                    "
                    style="padding-right: 7px; padding-left: 7px"
                  >
                    <p
                      class="text-muted smallfontem"
                      style="margin-bottom: 8px"
                    >
                      From
                    </p>
                    <p id="from3" class="smallfontem">21 Jul 2021</p>
                  </div>
                  <div
                    class="
                      col
                      d-flex
                      flex-column
                      justify-content-center
                      align-items-lg-center
                    "
                    style="
                      padding-top: 0px;
                      padding-right: 7px;
                      padding-left: 7px;
                    "
                  >
                    <p
                      class="text-muted smallfontem"
                      style="margin-bottom: 8px"
                    >
                      To
                    </p>
                    <p id="to3" class="smallfontem">24 Jul 2021</p>
                  </div>
                  <div
                    class="
                      col
                      d-flex
                      flex-column
                      justify-content-center
                      align-items-lg-center
                    "
                    style="padding-right: 7px; padding-left: 7px"
                  >
                    <p
                      class="text-muted smallfontem"
                      style="margin-bottom: 8px"
                    >
                      Type
                    </p>
                    <p id="Type3" class="smallfontem">Medical</p>
                  </div>
                  <div
                    class="
                      col
                      d-flex
                      flex-column
                      justify-content-center
                      align-items-lg-center
                    "
                  >
                    <p style="margin-bottom: 8px" class="smallfontem">Status</p>
                    <h3
                      class="text-info justify-content-center smallfontem2"
                      id="Status3"
                    >
                      Pending
                    </h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row row-flex mt-4 justify-content-center">
            <button class="btn btn-red mr-4" id="prev" onclick="prev()">
              Prev
            </button>
            <button class="btn btn-red" id="next" onclick="next()">Next</button>
          </div>
        </div>
      </div>
    </div>
  </body>
  <script>
    const AppList = ${arr};
    let currstartind = 0;
    console.log(AppList);
    $("#prev").attr("disabled", true);
    if(AppList.length-1 <= currstartind+2){
      $("#next").attr("disabled", true);
    }
    updateUIList(AppList, 0);
    function prev(){
      currstartind -= 3;
      currstartind = Math.max(0, currstartind);
      updateUIList(AppList, currstartind);
      if(currstartind == 0){
        $("#prev").attr("disabled", true);
      }
      else{
        $("#prev").attr("disabled", false);
      }
      if(currstartind < AppList.length){
        $("#next").attr("disabled", false);
      }
    }

function next(){
  currstartind += 3;
  currstartind = Math.min(AppList.length-1, currstartind);
  updateUIList(AppList, currstartind);
  if(currstartind == AppList.length-1){
    $("#next").attr("disabled", true);
  }
  else{
    $("#next").attr("disabled", false);
  }
  if(currstartind>=2){
    $("#prev").attr("disabled", false);
  }
}

function updateUIList(Applist, indexstart){
    $("#entry1").hide();
    $("#entry2").hide();
    $("#entry3").hide();
    indexstart = Math.min(Applist.length-1, indexstart);
    indexEnd = Math.min(indexstart+2, Applist.length-1);
    let entrynum = 1;
    for(let i = indexstart; i<=indexEnd; i++){
      let obj = Applist[i];
      $("#entry"+entrynum).show();
      $("#name"+entrynum).html(obj.Name);
      $("#email"+entrynum).html(obj.From);
      $("#from"+entrynum).html(obj.DateFrom);
      $("#to"+entrynum).html(obj.DateTo);
      $("#Type"+entrynum).html(obj.Type);
      $("#Status"+entrynum).html(obj.Status);
      $("#Status"+entrynum).removeClass("text-info");
      $("#Status"+entrynum).removeClass("text-danger");
      $("#Status"+entrynum).removeClass("text-success");
      console.log(obj._id.$oid);
      switch(obj.Status){
        case "Approved":{
          $("#Status"+entrynum).addClass("text-success");
        } break;
        case "Pending":{
          $("#Status"+entrynum).addClass("text-info");
        } break;
        case "Rejected":{
          $("#Status"+entrynum).addClass("text-danger");
        } break;
      }
      $("#entry" + entrynum).click(function(){
        window.location.replace("http://localhost/ProjectBackend/Request.php?reqid=" + obj._id.$oid);
      })
      entrynum++;
    }
    if(entrynum < 4){
      for(let i=entrynum; i<=3; i++){
        $("#entry"+i).hide();
      }
    }
}

document.getElementById("subtn").addEventListener("click", function(event){
  if(!CheckValidityRequestForm()){
    event.preventDefault();
    event.stopPropagation();
  }
  else{
  }
})

  </script>
  <script>
   $(".selectpicker").selectpicker("refresh");
  </script>
</html>
