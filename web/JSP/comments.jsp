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
              <a class="nav-link js-scroll" href="main.jsp">apply</a>
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
<div class="container" style="margin-top: 100px">
      <div class="row">
        <div class="col-md-10">
                      <div class="box-comments">
            <div class="title-box-2">
                <h4 class="title-comments title-left"> COMMENTS BY GUIDE</h4><br><br>
              <%
      connects co=new connects();
      Connection con =co.con();
      PreparedStatement ps=con.prepareStatement("select * from comment where name=? and title=?");
      ps.setString(1, em);
      ps.setString(2, request.getParameter("msg"));
      ResultSet rs= ps.executeQuery();
      String msg="";
      int r=0,i=1;
      while(rs.next())
      {
      
          %>
          <h4>Reviewer <%= i %></h4>
          <h4><%= rs.getString("title") %></h4>
          <table>
               
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Please rate the paper by choosing a category from the following list</td>
                  <td style="border: 2px solid #666666">
                      <%= rs.getString("comment") %>
                  </td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Is the subject matter suitable for publication in this journal?</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <%= rs.getString("op1") %>
                  </td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Does the paper describe original work?</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <%= rs.getString("op2") %>
                  </td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Are the references adequate?</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <%= rs.getString("op3") %>
                  </td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Should paper be shortened?</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <%= rs.getString("op4") %>
                  </td>
              </tr>
             
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Theory</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                     
                      <%= rs.getString("theory") %>
                  </td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Application</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <%= rs.getString("application") %>
                  </td>
              </tr>
          </table>
                          <table>
               
              <tr>
                  <th style="border: 2px solid #666666">
                      Presentation
                  </th>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Has the author demonstrated the value of the work?</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <%= rs.getString("op5") %>
                  </td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Is the manuscript organised to show clearly what has been done?</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <%= rs.getString("op6") %>
                  </td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Is the use of English clear and unambiguous?</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <%= rs.getString("op7") %>
                  </td>
              </tr>
          </table>
          <%
          i++;
          msg=rs.getString("title");
      }
      
      %>
                            <button class="btn btn-info"><a href="resubmit.jsp?msg=<%= msg %>">RESUBMIT</a></button>

            </div>
          </div>
        </div>  <!--/ Intro Skew End /-->
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
