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
  <nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll" href="#page-top">SandBox</a>
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
        aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <div class="navbar-collapse collapse justify-content-end" id="navbarDefault">
        
      </div>
    </div>
  </nav>
  <!--/ Nav End /-->

  <!--/ Intro Skew Star /-->
  <div class="intro intro-single route bg-image" style="background-image: url(img/overlay-bg.jpg)">
    <div class="overlay-mf"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <h3 class="intro-title mb-4">RESOURCE PERSON Login</h3>
        </div>
      </div>
    </div>
  </div>
  <!--/ Intro Skew End /-->

  <!--/ Section Blog-Single Star /-->
            <div class="container" style="margin-left: 450px">
      <div class="col-md-6 ">
        <div class="card-body">
                            
                         
                                <div class="toggle-content text-center" id="tab1">
                                    <table>
                                          <form action="" method="post" >
                                          <div class="form-group">
                                            <div class="form-label-group">
                                                <tr> <th>USERNAME:&nbsp;</th><td> <input type="text" id="inputEmail" class="form-control" placeholder="Username" name='uname' required="required" autofocus="autofocus"></td></tr>
                                             
                                            </div>
                                          </div>
                                          <div class="form-group">
                                            <div class="form-label-group">
                                                <tr><th> PASSWORD:&nbsp;</th>
                                                    <td><input type="password" id="inputPassword" class="form-control" name='pwd' placeholder="Password" required="required"></td></tr>
                                          
                                            </div>
                                          </div>
                                                                                      <div class="form-group">
                                            <div class="form-label-group">
                                                <tr><th> CAPTCHA:&nbsp;</th>
                                                    <td> 
                                                        <img src="../CaptchaServlet"/>
                                                    </td>
                                            </div>
                                          </div>

                                                                                        <div class="form-group">
                                            <div class="form-label-group">
                                                <tr><th></th>
                                                    <td><input type="text" id="inputPassword" class="form-control" name='otp' placeholder="Password" required="required"></td></tr>
                                          
                                            </div>
                                          </div>

                                              <tr><td><input type="submit" class="btn btn-primary btn-block" value="Login"/></td></tr>
                                            
                                        </form>
                                    </table>
                                        <%
                                            if(request.getMethod().equalsIgnoreCase("post"))
                                            {
                                            String runame=request.getParameter("uname");
                                            String pwd=request.getParameter("pwd");
                                            String otp=request.getParameter("otp");
                                            String captcha=(String)session.getAttribute("captcha");
                                            
                                            session.setAttribute("remail", runame);
                                            connects co=new connects();
                                            Connection con=co.con();
                                            PreparedStatement ps=con.prepareStatement("select * from resource where uname=? and password=?");
                                            ps.setString(1, runame);
                                            ps.setString(2, pwd);
                                            ResultSet rs=ps.executeQuery();
                                            int y=0;
                                            while(rs.next())
                                            {
                                                y=rs.getRow();
                                            }
                                            if(y==0)
                                            {
                                                %>
                                                <div class="alert alert-danger">
                                                    <strong>ACCESS DENIED</strong>
                                                </div>
                                                    <%
                                            }
                                            else
                                            {
                                                if(otp.equals(captcha))
                                                response.sendRedirect("view.jsp");
                                                else
                                                {
                                                     %>
                                                <div class="alert alert-danger">
                                                    <strong>ACCESS DENIED</strong>
                                                </div>
                                                    <%
                                                }
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
