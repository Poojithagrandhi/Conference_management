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
              <a class="nav-link js-scroll" href="status.jsp">Status</a>
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
            <div class="container" style="margin-left: 250px;margin-top: 100px">
      <div class="col-md-12 ">
        <div class="card-body">
            <h3 class="card-header"  >MODES OF PAYMENT</font></h3>
                         <div class="card-body">
                             <div class="row">
                                 <div class="col-md-6">
                                     <h4>NIFT</h4>
                                     <h6>ACCOUNT NAME : RACE</h6>
                                     <h6>ACCOUNT NUMBER : 1212342489112435</h6>
                                     <h6>IFSC CODE : ABC1DE1234567890</h6>
                                 </div>
                                 <div class="col-md-6">
                                     <h4>DD</h4>
                                     <h6>DD IN FAVOR OF: "Registrar,REVA Univertsity"</h6>
                                     <h6>PAYABLE AT : BENGALURU</h6>
                                 </div>
                             </div><br><br>
                             <h4>IF PAYMENT DONE PLEASE FILL THE FOLLOWING DETAILS</h4><br>
                             <div class="row">
                             <div class="col-md-6">
                                 <form action="" method="post">
                                     <h5>NIFT</h5>
                                     TRANSACTION ID :<input type="text" name="num" required="true"/><br>
                                     <input type="submit" value="submit"/>
                                 </form>
                             
                             <%
      if(request.getMethod().equalsIgnoreCase("post"))
      {
                                String a=request.getParameter("num");
                                connects co=new connects();
                                Connection con=co.con();
                                PreparedStatement ps=con.prepareStatement("insert into nift(name,number,title) values(?,?,?)");
                                ps.setString(1, em);
                                ps.setString(2, a);
                                ps.setString(3, request.getParameter("title"));
                                int x=ps.executeUpdate();
                                PreparedStatement ps1=con.prepareStatement("update paper set payment=1 where username=? and title=?");
                                ps1.setString(1, em);
                                ps1.setString(2, request.getParameter("title"));
                                int y=ps1.executeUpdate();
                                if(x>0 && y>0)
                                {
                                    %>
                                    <div class="alert-success">
                                        ACCEPTED PAYMENT DETAILS PLEASE CHECK STATUS AFTER 2 DAYS
                                    </div>
                                    <%
                                }
                                else
                                {
                                     %>
                                    <div class="alert-danger">
                                        FAILED TO ACCEPT PAYMENT DETAILS PLEASE CHECK STATUS AFTER 2 DAYS
                                    </div>
                                    <%
                                }
                                    }
                                %>
                                     </div>
                                
                             <div class="col-md-6">
                                 <form action="check.jsp?title=<%= request.getParameter("title") %>" method="post" enctype="multipart/form-data">
                                     <h5>DD</h5>
                                     DD NUMBER :<input type="text" name="num" required="true"/><br>
                                     DD : &nbsp;&nbsp;&nbsp;&nbsp;<input type="file" name="pic" required="true"/><br>
                                     <input type="submit" value="submit"/>
                                 </form>
                               
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
