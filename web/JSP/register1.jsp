
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
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
              <a class="nav-link js-scroll active" href="index.jsp">Home</a>
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
              <a class="nav-link js-scroll" href="register1.jsp">register</a>
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
            <div class="container" style="margin-left: 450px;margin-top: 100px">
      <div class="col-md-6 ">
        <div class="card-body">
            <div class="card-header" style="background-color: #ff9999" ><font size="5">APPLY HERE</font></div>
                         <div class="card-body">
            <table>
                <form action="" method="post" onsubmit="return show()">
            
                 
                    <div class="form-group">
                <tr>
                    <th>email</th>
                    <td><input type="text" class="form-control" name="em"  required="required"/></td></tr>
            </div>
                
           <div class="form-group">
                    <tr style="column-span: 2;padding-left: 50px">
                        <td>
                            <input type="submit" value="Get verification code" class="btn btn-primary btn-block"/>
                        </td>
                    </tr>
                </div>
            </form>
            </table>
            <%
                String otp="";
                int q=0;
                String str="ABCDEFGHIJKLMNPQRSTUVWXYZabcdefghjkmnopqrstuvwxyz";
                for(int i=0;i<6;i++)
                {
                    q=(int)(Math.random()*10);
                    otp=otp+str.charAt(q);
                }
               
                %>
                <%! final String from="poornima1999@gmail.com";
                final String password="askkrish";
                String to;
        %>
            <%
                if("post".equalsIgnoreCase(request.getMethod()))
            {
                      
                String name=request.getParameter("em");
                                    session.setAttribute("val", name);

                connects co=new connects();
                Connection con=co.con();
                PreparedStatement ps=con.prepareStatement("select * from validate where email=?");
                ps.setString(1, name);
                ResultSet rs=ps.executeQuery();
                int row=0;
                while(rs.next())
                {
                    row=rs.getRow();
                }
                if(row==0)
                {
                    PreparedStatement ps1=con.prepareStatement("insert into validate(email,otp) values(?,?)");
                    ps1.setString(1, name);
                    ps1.setString(2, otp);
                    int x=ps1.executeUpdate();
                    if(x==0)
                    {
                        %>
                        <div class="alert alert-danger">
                            <strong>FAILED TO APPLY</strong>
                        </div>
                        <%
                    }
                    else
                    {
                          to=request.getParameter("em"); //to the user email
                
                Properties props = new Properties();    
                props.put("mail.smtp.host", "smtp.gmail.com");    
                props.put("mail.smtp.socketFactory.port", "465");    
                props.put("mail.smtp.socketFactory.class",    
                          "javax.net.ssl.SSLSocketFactory");    
                props.put("mail.smtp.auth", "true");    
                props.put("mail.smtp.port", "465");    
                //get Session   
                

                 Session se = Session.getInstance(props,    
                 new javax.mail.Authenticator() {    
                     @Override
                 protected PasswordAuthentication getPasswordAuthentication() {    
                 return new PasswordAuthentication(from, password);  
                 }    
                });    
                //compose message    
                try {    
                 MimeMessage message = new MimeMessage(se);    
                 message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
                 message.setSubject("OTP");    
                 message.setText(otp);    
                 //send message  
                 Transport.send(message);    
                }
                catch (MessagingException e) {throw new RuntimeException(e);}    

                        response.sendRedirect("register2.jsp");
                        %>
                        <div class="alert alert-success">
                            <strong>SUCCESSFULLY APPLIED</strong>
                        </div>
                        <%
                        
                    }
                }
                else
                    {
                                                response.sendRedirect("register2.jsp");

                        %>
                    <div class="alert alert-danger">
                        <strong>Please use another email id</strong>
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
