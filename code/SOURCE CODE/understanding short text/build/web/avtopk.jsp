

<%@page import="java.sql.ResultSet"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
<head>
<title>Expressive Keyword Search</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left">
        <h3 style="color: whitesmoke;font-size: 26px">Understanding Short Text Through Semantic Enrichment and Semantic Hashing </h3><br><br>
    </div>
<!--    <div class="fl_right">
      <ul>
        <li><a href="#"><i class="fa fa-lg fa-home"></i></a></li>
        <li><a href="#">Login</a></li>
        <li><a href="#">Register</a></li>
      </ul>
    </div>-->
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<!--<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
     ################################################################################################ 
    <div id="logo" class="fl_left">
      <h1><a href="index.html">Algenius</a></h1>
    </div>
    <div id="quickinfo" class="fl_right">
      <ul class="nospace inline">
        <li><strong>Aliquet:</strong><br>
          +00 (123) 456 7890</li>
        <li><strong>Efficitur:</strong><br>
          +00 (123) 456 7890</li>
      </ul>
    </div>
     ################################################################################################  
  </header>
</div>-->
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li class="active"><a href="index.jsp">HOME</a></li>
      <li><a class="drop" href="#">USER</a>
        <ul>
          <li><a href="ulog.jsp">LOGIN</a></li>
          <li><a href="reg.jsp">REGISTRATION</a></li>
<!--          <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
          <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
          <li><a href="pages/basic-grid.html">Basic Grid</a></li>-->
        </ul>
      </li>
      <li><a href="#">ADMIN</a></li>
<!--      <li><a class="drop" href="#">Dropdown</a>
        <ul>
          <li><a href="#">Level 2</a></li>
          <li><a class="drop" href="#">Level 2 + Drop</a>
            <ul>
              <li><a href="#">Level 3</a></li>
              <li><a href="#">Level 3</a></li>
              <li><a href="#">Level 3</a></li>
            </ul>
          </li>
          <li><a href="#">Level 2</a></li>
        </ul>
      </li>-->
      
<!--      <li><a href="#">Link Text</a></li>
      <li><a href="#">Link Text</a></li>
      <li><a href="#">Long Link Text</a></li>-->
    </ul>
    <!-- ################################################################################################ --> 
  </nav>
</div><br><br>
<div>
  
    <center><img  src="images/demo/ad.jpg" alt="filler image"></center>
<!--    <section id="breadcrumb" class="hoc clear"> 
   
  </section>-->
</div><br><br>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<!--<div class="wrapper bgded overlay" style="background-image:url('images/demo/backgrounds/dm.jpg');">
  <article id="pageintro" class="hoc clear"> 
     ################################################################################################ 
    <h3 class="heading">Understanding Short Texts through Semantic Enrichment and Hashing</h3>
    
    
     ################################################################################################  
  </article>
</div><br><br>-->
<center><h3 style="color: white">TOPK RANK IMAGES </h3></center><br><br><br>
<div id="comments" style="float: right;margin-right: 300px">
        <form style="width: 700px" action="#" enctype="multipart/form-data" method="post">
            <div class="one_third ">
              <div class="scrollable">
                  <table style="width: 900px;">
      <thead>
            <tr>
                <th>Image Name</th>
              <th>Category</th>
              <th>Description</th>
              <th>Image</th>
              <th>Rank</th>
      </tr>
      </thead>
            
        
<%
String name = request.getParameter("name");
                     Connection con = null;  
                    Statement st = null;
                    ResultSet rs = null;
System.out.println("Short text="+name);
                    try {
                        con = DbConnection.getConnection();
                        st = con.createStatement();
                        rs = st.executeQuery("select * from image ORDER BY rank DESC");
                        while (rs.next()) {


%>
                
         
            <tr>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("sname")%></td>
                <td><%=rs.getString("des")%></td>               
                <td><img width="200" height="200" src="viewimg.jsp?id=<%=rs.getString("id")%>"/></td>
             <td><%=rs.getString("rank")%></td>
          
             <%}
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>  
       </tr>
          
        </table>
                        </div><br><br><br><br>
                        
                
            
          </div><br><br><br><br>
          
        </form>
        </div>
 <div class="wrapper row3">
   
 <div class="sidebar one_quarter first"> 
      <!-- ################################################################################################ -->
      <h6>Menu Bar</h6>
      <nav>
        <ul>
          <li><a href="ahome.jsp" style="color:white;font-size: 18px" >Home</a></li>          
          <li><a href="avtopkfile.jsp" style="color: white;font-size: 18px">TopK Files</a></li>         
          <li><a href="alog.jsp" style="color: white;font-size: 18px">Logout</a></li>
        </ul>
      </nav>     
    </div>       
   
        
        
        
        
        
        
    </div>
  