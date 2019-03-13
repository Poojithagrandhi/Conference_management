
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="main.connects"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Conference</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="../img/favicon.jpg" rel="icon">
  <link href="../img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap CSS File -->
  <link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="../lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="../lib/animate/animate.min.css" rel="stylesheet">
  <link href="../lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="../lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="../css/style.css" rel="stylesheet">

  
</head>

<body>
  <!--/ Nav Star /-->
  <nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav" style="background-color: #0078ff">
    <div class="container">
      <a class="navbar-brand js-scroll" href="#page-top">SandBox</a>
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
        aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <div class="navbar-collapse collapse justify-content-end" id="navbarDefault">
        <ul class="navbar-nav">
          <li class="nav-item">
              <a class="nav-link js-scroll" href="view.jsp">View Reviewer</a>
          </li>
          <li class="nav-item">
              <a class="nav-link js-scroll" href="add.jsp">ADD</a>
          </li>
          <li class="nav-item">
              <a class="nav-link js-scroll" href="view2.jsp">View </a>
          </li>
                    <li class="nav-item">
              <a class="nav-link js-scroll" href="view1.jsp">View Papers</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll" href="logout.jsp">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!--/ Nav End /-->

  <!--/ Intro Skew Star /-->
  
  <!--/ Intro Skew End /-->

  <!--/ Section Blog-Single Star /-->
  <%
                  response.setHeader("Cache-Control", "no-cache");
                  response.setHeader("Cache-Control", "no-store");
                  response.setHeader("Pragma", "no-cache");
                  response.setDateHeader("Expires", 0);
                  %>

            <div class="container" style="margin-left: 250px;margin-top: 100px">
      <div class="col-md-12 ">
        <div class="card-body">
            
            <h3 class="card-header" style="background-color: #ff9999" ><font size="5">APPROVE PAYMENT</font></h3>
            <div class="row">
                         <div class="card-body col-md-6">
                    
  <%
      String aem=(String)session.getAttribute("aemail");
      if(aem==null)
      {
          response.sendRedirect("login.jsp");
      }
      %>
<%
                         
                connects co=new connects();
                Connection con=co.con();
                        PreparedStatement ps=con.prepareStatement("select * from nift");
                        ResultSet rs=ps.executeQuery();
                        
                %>
                <h4>NIFT transactions</h4>
                <table style="border: 2px solid black" class="tab-content">
                    <tr>
                        <th style="border:2px solid black;padding: 5px" >NAME </th>
                        <th style="border:2px solid black;padding: 5px">NUMBER</th>
                        <th style="border:2px solid black;padding: 5px">APPROVE</th>
                    </tr>
                <%
                while(rs.next())
                {
                   %>
                   <tr>
                       <th style="border:2px solid black;padding: 5px"><%= rs.getString("name") %></th>
                       <th style="border:2px solid black;padding: 5px"><%= rs.getString("number") %></th>
                       <th style="border:2px solid black;padding: 5px"><a href="approve.jsp?a=<%= rs.getString("name") %>&b=<%= rs.getString("id") %>&c=<%= rs.getString("title") %>">APPROVE</a></th>
                   </tr>
                   <%
                }
                %>
                </table>
                         </div>
                <div class="card-body col-md-6">
                <%
                        PreparedStatement ps1=con.prepareStatement("select * from dd");
                        ResultSet rs1=ps1.executeQuery();
                        
                %>
                <h4>DD transactions</h4>
                <table style="border: 2px solid black" class="tab-content">
                    <tr>
                        <th style="border:2px solid black;padding: 5px" >NAME </th>
                        <th style="border:2px solid black;padding: 5px">NUMBER</th>
                        <th style="border:2px solid black;padding: 5px">DD</th>
                        <th style="border:2px solid black;padding: 5px">APPROVE</th>
                    </tr>
                <%
                while(rs1.next())
                {
                   %>
                   <tr>
                       <th style="border:2px solid black;padding: 5px"><%= rs1.getString("name") %></th>
                       <th style="border:2px solid black;padding: 5px"><%= rs1.getString("number") %></th>
                       <th style="border:2px solid black;padding: 5px;width: 100px"><img src="../dispImage?msg=<%= rs1.getString("id") %>" height="50px" width="80px"/></th>
                       <th style="border:2px solid black;padding: 5px"><button class="btn-info"><a href="approve1.jsp?a=<%= rs1.getString("name") %>&b=<%= rs1.getString("id") %>">APPROVE</a></button></th>
                   </tr>
                   <%
                }
                %>
                </table>

        </div>
      </div>
        </div>
        
                                    </div>
                                  </div>

                                </div>

  <!--/ Section Contact-Footer Star /-->
  <section class="paralax-mf footer-paralax bg-image sect-mt4 route" style="background-image: url(img/overlay-bg.jpg)">
    <div class="overlay-mf"></div>
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <div class="copyright-box">
              <p class="copyright">&copy; Copyright <strong>SandBox</strong>. All Rights Reserved</p>
              <div class="credits">
                <!--
                  All the links in the footer should remain intact.
                  You can delete the links only if you purchased the pro version.
                  Licensing information: https://bootstrapmade.com/license/
                  Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=DevFolio
                -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </section>
  <!--/ Section Contact-footer End /-->
 
  <!-- JavaScript Libraries -->
  <script src="../lib/jquery/jquery.min.js"></script>
  <script src="../lib/jquery/jquery-migrate.min.js"></script>
  <script src="../lib/popper/popper.min.js"></script>
  <script src="../lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="../lib/easing/easing.min.js"></script>
  <script src="../lib/counterup/jquery.waypoints.min.js"></script>
  <script src="../lib/counterup/jquery.counterup.js"></script>
  <script src="../lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="../lib/lightbox/js/lightbox.min.js"></script>
  <script src="../lib/typed/typed.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="../contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="../js/main.js"></script>

</body>
</html>
