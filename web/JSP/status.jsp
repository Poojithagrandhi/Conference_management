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
              <a class="nav-link js-scroll" href="main.jsp">Apply</a>
          </li>
          <li class="nav-item">
              <a class="nav-link js-scroll" href="faq1.jsp">FAQ</a>
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
  <%
      String em=(String)session.getAttribute("email");
      if(em==null)
      {
          response.sendRedirect("apply.jsp");
      }
      %>
            <div class="container" style="margin-left: 450px;margin-top: 100px">
      <div class="col-md-6 ">
        <div class="card-body">
            <h3 class="card-header" style="background-color: #ff9999" ><font size="5">STATUS</font></h3>
                         <div class="card-body">
                             <%
      connects co=new connects();
      Connection con=co.con();
      PreparedStatement ps=con.prepareStatement("select * from paper where username=? ");
      ps.setString(1, em);
      ResultSet rs=ps.executeQuery();
      while(rs.next())
      {
          %>
          <u><h4><%= rs.getString("title") %></h4></u>
          <%
          if(rs.getString("publish").equalsIgnoreCase("1"))
          {
              %>
              <h6> <img src="../img/app.jpg" width="20px" height="20px"/> &nbsp;&nbsp;Paper submitted</h6>
              <%
          }
          else
          {
              %>
              <h6> <img src="../img/delete.jpg" width="20px" height="20px"/> &nbsp;&nbsp;Paper submitted</h6>
              <%
          }
          if(rs.getString("assign").equalsIgnoreCase("1"))
          {
              %>
              <h6>  <img src="../img/app.jpg" width="20px" height="20px"/> &nbsp;&nbsp;Reviewer 1 allocated</h6>
              <%
          }
          else
          {
              %>
              <h6> <img src="../img/delete.jpg" width="20px" height="20px"/> &nbsp;&nbsp;Reviewer 1 allocated</h6>
              <%
          }
          if(rs.getString("assign1").equalsIgnoreCase("1"))
          {
              %>
              <h6>  <img src="../img/app.jpg" width="20px" height="20px"/> &nbsp;&nbsp;Reviewer 2 allocated</h6>
              <%
          }
          else
          {
              %>
              <h6> <img src="../img/delete.jpg" width="20px" height="20px"/> &nbsp;&nbsp;Reviewer 2 allocated</h6>
              <%
          }
          if(rs.getString("comment").equalsIgnoreCase("1") && rs.getString("comment1").equalsIgnoreCase("1"))
          {
              
              %>
              <h6>  <img src="../img/app.jpg" width="20px" height="20px"/> &nbsp;&nbsp;Comments by reviewers</h6>
              <%
              if( rs.getString("approve").equals("0") || rs.getString("approve1").equals("0"))
              {
              %>
              <button class="btn-info" style="width: 100px;height: 50px;border-radius: 3px;box-shadow: 2px 3px #999999"><a href="comments.jsp?msg=<%= rs.getString("title") %>">COMMENTS</a></button>

              <%
              }
          }
          else
          {
              %>
              <h6> <img src="../img/delete.jpg" width="20px" height="20px"/> &nbsp;&nbsp;Comments by reviewer</h6>
              <%
          }
          if(rs.getString("approve").equalsIgnoreCase("1") && rs.getString("approve1").equals("1"))
          {
              %>
              <h6> <img src="../img/app.jpg" width="20px" height="20px"/> &nbsp;&nbsp;Approved by the reviewer</h6>
              <%
          }
          else
          {
              %>
              <h6>  <img src="../img/delete.jpg" width="20px" height="20px"/> &nbsp;&nbsp;Approved by the reviewer</h6>
              <%
          }
          if(rs.getString("payment").equalsIgnoreCase("1"))
          {
              %>
              <h6> <img src="../img/app.jpg" width="20px" height="20px"/> &nbsp;&nbsp;Payment done</h6>
              <%
          }
          else
          {
              %>
              <h6> <img src="../img/delete.jpg" width="20px" height="20px"/> &nbsp;&nbsp;Payment done</h6>
              <%
          }
          if(rs.getString("confirm").equalsIgnoreCase("1"))
          {
              %>
              <h6> <img src="../img/app.jpg" width="20px" height="20px"/> &nbsp;&nbsp;Confirmation to attend conference</h6>
              <%
          }
          else
          {
              %>
              <h6>  <img src="../img/delete.jpg" width="20px" height="20px"/> &nbsp;&nbsp;Confirmation to attend conference</h6>
              <%
          }
          if(rs.getString("approve1").equals("1") && rs.getString("confirm").equals("0") && rs.getString("payment").equals("0"))
          {
              %>
              <button class="btn-info" style="width: 100px;height: 50px;border-radius: 3px;box-shadow: 2px 3px #999999"><a href="pay.jsp?title=<%= rs.getString("title") %>">Payment</a></button>
              <%
          }
     
      }
      %>
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
 <section class="paralax-mf footer-paralax bg-image sect-mt4 route" style="background-image: url(img/overlay-bg.jpg)">
    <div class="overlay-mf"></div>
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="contact-mf">
            <div id="contact" class="box-shadow-full">
              <div class="row">
                <div class="col-md-9">
                    <div class="title-box-2 pt-4 pt-md-0">
                    <h5 class="title-left">
                      Get in Touch
                    </h5>
                  </div>
                 
                   <div class="more-info">
                    <p class="lead">
                        We offer to publish your papers...<br>
                        For any queries regarding our company or website call us ....
                    </p>
                    <ul class="list-ico">
                      <li><span class="ion-ios-location"></span> Bangalore</li>
                      <li><span class="ion-ios-telephone"></span> (91)-9898987766</li>
                      <li><span class="ion-email"></span> sandbox@gmail.com</li>
                    </ul>
                  </div>
                 
                  </div>
                  <div class="socials">
                    <ul>
                      <li><a href=""><span class="ico-circle"><i class="ion-social-facebook"></i></span></a></li>
                      <li><a href=""><span class="ico-circle"><i class="ion-social-instagram"></i></span></a></li>
                      <li><a href=""><span class="ico-circle"><i class="ion-social-twitter"></i></span></a></li>
                      <li><a href=""><span class="ico-circle"><i class="ion-social-pinterest"></i></span></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer>
  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <div id="preloader"></div>

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
