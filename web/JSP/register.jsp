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
              <a class="nav-link js-scroll active" href="../index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll" href="apply.jsp">Apply</a>
          </li>
          <li class="nav-item">
              <a class="nav-link js-scroll" href="instructions.jsp">Instructions</a>
          </li>
          <li class="nav-item">
              <a class="nav-link js-scroll" href="faq.jsp">FAQ</a>
          </li>
          <li class="nav-item">
              <a class="nav-link js-scroll" href="register.jsp">register</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll" href="#contact">Contact</a>
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
      String f=(String) session.getAttribute("em");
      out.print(f);
      %>
            <div class="container" style="margin-left: 450px;margin-top: 100px">
      <div class="col-md-6 ">
        <div class="card-body">
            <div class="card-header" style="background-color: #ff9999" ><font size="5">APPLY HERE</font></div>
                         <div class="card-body">
            <table>
                <form action="" method="post" onsubmit="return show()">
            
                  <div class="form-group">
                <tr >
                    <th>Name</th>
                    <td> <input type="text" class="form-control" name="name"  required="required"/></td></tr>
            </div>                 
                
            <div class="form-group">
                <tr>
                    <th>Phone</th>
                    <td><input type="text" class="form-control" name="ph"  required="required"/></td></tr>
            </div>
                    <div class="form-group">
                <tr>
                    <th>Affiliation</th>
                    <td><input type="text" class="form-control" name="affil"  required="required"/></td></tr>
            </div>
                    <div class="form-group">
                <tr>
                    <th>Job</th>
                    <td><input type="text" class="form-control" name="job"  required="required"/></td></tr>
            </div>
                    <div class="form-group">
                <tr>
                    <th>Country</th>
                    <td><input type="text" class="form-control" name="country"  required="required"/></td></tr>
            </div>
                    <div class="form-group">
                <tr>
                    <th>State</th>
                    <td><input type="text" class="form-control" name="state"  required="required"/></td></tr>
            </div>
                    <div class="form-group">
                <tr>
                    <th>email</th>
                    <td><input type="text" class="form-control" name="em" value="<%= (String)session.getAttribute("val") %>" readonly="true" /></td></tr>
            </div>
            <div class="form-group">
                
                    <div class="form-group">
                <tr>
                    <th>password</th>
                    <td><input type="password" class="form-control" name="pwd"  required="required"/></td></tr>
            </div>
                     <div class="form-group">
                <tr >
                    <th>Domain</th>
                    <td>
                        <select name="dom">
                            <option >.....</option>
                            <option value="networking">Networking</option>
                            <option value="artificial-intelligence">Artificial Intelligence</option>
                            <option value="dataming">Datamining</option>
                            <option value="cloud-computing">Cloud Computing</option>
                            <option value="cryptography">Cryptography</option>
                            <option value="web">Web Development</option>
                        </select>
                    </td>
                </tr>
            </div>
                
           <div class="form-group">
                    <tr style="column-span: 2;padding-left: 50px">
                        <td>
                            <input type="submit" value="APPLY" class="btn btn-primary btn-block"/>
                        </td>
                    </tr>
                </div>
            </form>
            </table>
            <%
                if("post".equalsIgnoreCase(request.getMethod()))
            {
                
                String name=request.getParameter("name");
                String em=request.getParameter("em");
                String ph=request.getParameter("ph");
                String uid=request.getParameter("uid");
                String pwd=request.getParameter("pwd");
                String dom=request.getParameter("dom");
                String affil=request.getParameter("affil");
                String job=request.getParameter("job");
                String country=request.getParameter("country");
                String state=request.getParameter("state");
                
                connects co=new connects();
                Connection con=co.con();
                PreparedStatement ps1=con.prepareStatement("select * from register where email=?");
                ps1.setString(1, em);
                ResultSet rs=ps1.executeQuery();
                int z=0;
                while(rs.next())
                {
                    z=rs.getRow();
                }
                if(z==0)
                {
                PreparedStatement ps=con.prepareStatement("insert into register(name,phone,email,username,password,domain,affiliation,job,country,state) values(?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, ph);
                ps.setString(3, em);
                ps.setString(4, em);
                ps.setString(5, pwd);
                ps.setString(6, dom);
                ps.setString(7, affil);
                ps.setString(8, job);
                ps.setString(9, country);
                ps.setString(10, state);
                int x=ps.executeUpdate();
                if(x==0){
                    %>
                    <div class="alert alert-danger">
                        <strong>FAILED TO APPLY</strong>
                    </div>
                    <%
                }
                else
                {
                    %>
                    <div class="alert alert-success">
                        <strong>SUCCESSFULLY APPLIED</strong>
                    </div>
                    <%
                }
                }
                else
                {
                    %>
                    <div class="alert-warning">
                        PLEASE USE ANOTHER MAIL ID TO REGISTER...
                    </div>
                    <%
                }
            }
                %>
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
