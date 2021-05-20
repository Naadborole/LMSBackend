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
      <li class="nav-li active"><a class="nav-a" href="AdminDashboard.jsp">Home</a></li>
      <li class="nav-li "><a class="nav-a" href="EmployeeUnderAdmin?email=${email}">Members</a></li>
      <li class="nav-li "><a class="nav-a" href="Requests.jsp">Requests</a></li>
    </ul>
    <h1 class="title">Leave Management System</h1>
    <div class="row main row-flex">
        <div class="col-md">
            <div class="card card-pad h-100" style="border-color: #e00">
                <h3 style="color: #e00; font-weight: 800">Pending Leaves</h3>
                <br />
                <div class="row h-25" style="margin-bottom: 15px">
                  <div class="card w-100 h-100 card-shadow">
                    <div class="card-body" style="padding: 0px" id="entry1">
                      <div class="row h-100" style="margin: 0px">
                        <div class="col d-flex flex-column justify-content-lg-center"
                          style="padding-right: 10px; padding-top: 0px">
                          <h3 class="text-left smallfont" style="margin-bottom: 4px" id="name1">
                            Aniket Rathod
                          </h3>
                          <p class="
                                text-muted
                                d-lg-flex
                                align-self-start
                                justify-content-lg-start
                                align-items-lg-center
                                smallfontem
                              " id="email1">
                            naad.borole2000@gmail.com
                          </p>
                        </div>
                        <div class="
                              col
                              d-flex
                              flex-column
                              justify-content-center
                              align-items-lg-center
                            " style="padding-right: 7px; padding-left: 7px">
                          <p class="text-muted smallfontem" style="margin-bottom: 8px">
                            From
                          </p>
                          <p id="from1" class="smallfontem">21 Jul 2021</p>
                        </div>
                        <div class="
                              col
                              d-flex
                              flex-column
                              justify-content-center
                              align-items-lg-center
                            " style="
                              padding-top: 0px;
                              padding-right: 7px;
                              padding-left: 7px;
                            ">
                          <p class="text-muted smallfontem" style="margin-bottom: 8px">
                            To
                          </p>
                          <p id="to1" class="smallfontem">24 Jul 2021</p>
                        </div>
                        <div class="
                              col
                              d-flex
                              flex-column
                              justify-content-center
                              align-items-lg-center
                            " style="padding-right: 7px; padding-left: 7px">
                          <p class="text-muted smallfontem" style="margin-bottom: 8px">
                            Type
                          </p>
                          <p id="Type1" class="smallfontem">Medical</p>
                        </div>
                        <div class="
                              col
                              d-flex
                              flex-column
                              justify-content-center
                              align-items-lg-center
                            ">
                          <p style="margin-bottom: 8px" class="smallfontem">Status</p>
                          <h3 class="text-info justify-content-center smallfontem2" id="Status1">
                            Pending
                          </h3>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- SECOND ENTRY -->
                <div class="row h-25" style="margin-bottom: 15px">
                  <div class="card w-100 h-100 card-shadow">
                    <div class="card-body" style="padding: 0px" id="entry2">
                      <div class="row h-100" style="margin: 0px">
                        <div class="col d-flex flex-column justify-content-lg-center"
                          style="padding-right: 10px; padding-top: 0px">
                          <h3 class="text-left smallfont" style="margin-bottom: 4px" id="name2">
                            Aniket Rathod
                          </h3>
                          <p class="
                                text-muted
                                d-lg-flex
                                align-self-start
                                justify-content-lg-start
                                align-items-lg-center
                                smallfontem
                              " id="email2">
                            naad.borole2000@gmail.com
                          </p>
                        </div>
                        <div class="
                              col
                              d-flex
                              flex-column
                              justify-content-center
                              align-items-lg-center
                            " style="padding-right: 7px; padding-left: 7px">
                          <p class="text-muted smallfontem" style="margin-bottom: 8px">
                            From
                          </p>
                          <p id="from2" class="smallfontem">21 Jul 2021</p>
                        </div>
                        <div class="
                              col
                              d-flex
                              flex-column
                              justify-content-center
                              align-items-lg-center
                            " style="
                              padding-top: 0px;
                              padding-right: 7px;
                              padding-left: 7px;
                            ">
                          <p class="text-muted smallfontem" style="margin-bottom: 8px">
                            To
                          </p>
                          <p id="to2" class="smallfontem">24 Jul 2021</p>
                        </div>
                        <div class="
                              col
                              d-flex
                              flex-column
                              justify-content-center
                              align-items-lg-center
                            " style="padding-right: 7px; padding-left: 7px">
                          <p class="text-muted smallfontem" style="margin-bottom: 8px">
                            Type
                          </p>
                          <p id="Type2" class="smallfontem">Medical</p>
                        </div>
                        <div class="
                              col
                              d-flex
                              flex-column
                              justify-content-center
                              align-items-lg-center
                            ">
                          <p style="margin-bottom: 8px">Status</p>
                          <h3 class="text-info justify-content-center smallfontem2" id="Status2">
                            Pending
                          </h3>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Third Entry -->
                <div class="row h-25">
                  <div class="card w-100 h-100 card-shadow">
                    <div class="card-body" style="padding: 0px" id="entry3">
                      <div class="row h-100" style="margin: 0px">
                        <div class="col d-flex flex-column justify-content-lg-center"
                          style="padding-right: 10px; padding-top: 0px">
                          <h3 class="text-left smallfont" style="margin-bottom: 4px" id="name3">
                            Aniket rathod
                          </h3>
                          <p class="
                                text-muted
                                d-lg-flex
                                align-self-start
                                justify-content-lg-start
                                align-items-lg-center
                                smallfontem
                              " id="email3">
                            naad.borole2000@gmail.com
                          </p>
                        </div>
                        <div class="
                              col
                              d-flex
                              flex-column
                              justify-content-center
                              align-items-lg-center
                            " style="padding-right: 7px; padding-left: 7px">
                          <p class="text-muted smallfontem" style="margin-bottom: 8px">
                            From
                          </p>
                          <p id="from3" class="smallfontem">21 Jul 2021</p>
                        </div>
                        <div class="
                              col
                              d-flex
                              flex-column
                              justify-content-center
                              align-items-lg-center
                            " style="
                              padding-top: 0px;
                              padding-right: 7px;
                              padding-left: 7px;
                            ">
                          <p class="text-muted smallfontem" style="margin-bottom: 8px">
                            To
                          </p>
                          <p id="to3" class="smallfontem">24 Jul 2021</p>
                        </div>
                        <div class="
                              col
                              d-flex
                              flex-column
                              justify-content-center
                              align-items-lg-center
                            " style="padding-right: 7px; padding-left: 7px">
                          <p class="text-muted smallfontem" style="margin-bottom: 8px">
                            Type
                          </p>
                          <p id="Type3" class="smallfontem">Medical</p>
                        </div>
                        <div class="
                              col
                              d-flex
                              flex-column
                              justify-content-center
                              align-items-lg-center
                            ">
                          <p style="margin-bottom: 8px" class="smallfontem">Status</p>
                          <h3 class="text-info justify-content-center smallfontem2" id="Status3">
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

        <div class="col-md-4">
            <div class="card card-pad" style="border-color: #e00">
              <h3 style="color: #e00; font-weight: 800">Set Rules</h3>
              <br />
              <form class="needs-validation">
                <div class="mb-3 form-outline">
                  <div class="form-group row">
                    <label for="Maternity" class="col-sm-4 col-form-label">Maternity Leave</label>
                    <div class="col-sm-8">
                      <input type="number" class="form-control" id="Maternity" />
                    </div>
                  </div>
                  <!--<label for="Maternity" class="form-label">Maternity Leave</label>
                  <input
                    type="number"
                    class="form-control"
                    id="Maternity"
                  />-->
                </div>
                <div class="mb-3">
                  <div class="form-group row">
                    <label for="Medical" class="col-sm-4 col-form-label">Medical Leave</label>
                    <div class="col-sm-8">
                      <input type="number" class="form-control" id="Medical" />
                    </div>
                  </div>
                  <!--<label for="Medical" class="form-label">Medical Leave</label>
                  <input type="number" class="form-control" id="Medical" />-->
                </div>
                <div class="mb-3">
                  <div class="form-group row">
                    <label for="Personal" class="col-sm-4 col-form-label">Personal Leave</label>
                    <div class="col-sm-8">
                      <input type="number" class="form-control" id="Personal" />
                    </div>
                  </div>
                  <!--<label for="Personal" class="form-label">Personal Leave</label>
                  <input type="number" class="form-control" id="Personal" /> -->
                </div>
                <div class="mb-3">
                  <div class="form-group row">
                    <label for="Other" class="col-sm-4 col-form-label">Other Leave</label>
                    <div class="col-sm-8">
                      <input type="number" class="form-control" id="Other" />
                    </div>
                  </div>
                  <!-- <label for="Other" class="form-label">Other Leave</label>
                  <input type="number" class="form-control" id="Other" /> -->
                </div>
                <br/>
                <div class="mb-3">
                  <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="NewCategory">Add new Category</label>
                      <input
                        class="form-control"
                        type="text"
                        id="NewCategory"
                      />
                    </div>
                    <div class="form-group col-md-6">
                      <label for="NewCategoryLeave">New Category Leave</label> 
                      <input
                        class="form-control"
                        type="number"
                        id="NewCategoryLeave"
                      />
                    </div>
                  </div>
                </div>
                <br />
                <button type="submit" class="btn btn-red center-btn" onclick="CheckValidityRequestForm()">Set Changes</button>
              </form>
            </div>
          </div>
  </body>
  <script>
    const AppList = ${PendingLeaves};
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
    indexstart = Math.min(Applist.length-1, indexstart);
    indexEnd = Math.min(indexstart+2, Applist.length-1);
    let entrynum = 1;
    $("#entry1").hide();
    $("#entry2").hide();
    $("#entry3").hide();
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
      entrynum++;
    }
    if(entrynum < 4){
      for(let i=entrynum; i<=3; i++){
        $("#entry"+i).hide();
      }
    }
}
  </script>

</html>
