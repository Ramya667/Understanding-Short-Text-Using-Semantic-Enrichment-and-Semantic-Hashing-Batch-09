
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>Expressive Keyword Search</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>

</head>
<body id="top">

<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
   
    <div class="fl_left">
        <h3 style="color: whitesmoke;font-size: 26px">Understanding Short Texts through Semantic Enrichment and Hashing </h3><br><br>
    </div>

    <ul class="clear">
      <li class="active"><a href="index.jsp">HOME</a></li>
      <li><a class="drop" href="#">USER</a>
        <ul>
          <li><a href="ulog.jsp">LOGIN</a></li>
          <li><a href="reg.jsp">REGISTRATION</a></li>

        </ul>
      </li>
      <li><a href="alog.jsp">ADMIN</a></li>

    </ul>
   
  </nav>
</div><br><br>

<center><h3 style="color: whitesmoke">Registration</h3></center><br><br><br>
<center><div id="comments">
        <img style="float: right;margin-right: 50px" src="images/demo/regg.jpg" alt="filler image">
     <form action="reg1.jsp" method="post" name="reg">
            &nbsp;&nbsp;<div class="one_third ">
            <label style="color: white">Name <span>*</span></label>
            <input onkeypress =" return /[a-z]/i.test(event.key)" name="name" id="name" value="" size="22" required>
          </div><br><br><br><br>
          <div class="one_third">
            <label style="color: white">Password <span>*</span></label>
            <input type="password" name="pass" id="password" value="" size="22" required>
          </div><br><br><br><br>
          <div class="one_third">
            <label style="color: white">Mail Id <span>*</span></label>
            <input type="email" name="mail" id="email" value="" size="22" required>
          </div><br><br><br><br>
          
          <div class="one_third ">
            <label style="color: white">Gender <span>*</span></label>
            <select  type="text" name="gen" id="name" value="" style="height: 40px;width: 420px"  required>
                            <option value="-1">Choose Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
            </select>
          </div><br><br><br><br>
          <div class="one_third">
              <label style="color: white">Date Of Birth<span>*</span></label>
            <input type="date"  name="date" value="" size="22" required=""/>
          </div><br><br><br><br>
          <div class="one_third">
              <label style="color: white">Contact Number<span>*</span></label>
            <input type="text" name="cell" value="" size="22"  required="" pattern="[5-9]{1}[0-9]{9}"/>
          </div><br><br><br><br>
          <div class="one_third">
              <label style="color: white">Location<span>*</span></label>
            <input type="text"  name="loc" value="" size="22" required=""/>
          </div><br><br><br><br><br><br><br>
          <div class="one_third" >
            <input type="submit" name="submit" value="Submit Form">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" name="reset" value="Reset Form">
          </div>
        </form>
    </div></center><br><br><br><br><br><br><br><br>
