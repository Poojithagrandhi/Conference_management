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
              <a class="nav-link js-scroll" href="view.jsp">View</a>
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
      String rem=(String)session.getAttribute("remail");
      if(rem==null)
      {
          response.sendRedirect("login.jsp");
      }
      %>
            <div class="container" style="margin-left: 450px;margin-top: 100px">
      <div class="col-md-6">
        <div class="card-body">
            <h3 class="card-header" style="background-color: #ff9999" ><font size="5"> ADD REVIEW</font></h3>
                         <div class="card-body">
                <form action="" method="post" >
                        <table>
               
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Please rate the paper by choosing a category from the following list</td>
                  <td style="border: 2px solid #666666">
                      <select name="comment">
                          <option value="excellent">EXCELLENT</option>
                          <option value="good">GOOD</option>
                          <option value="normal">NORMAL</option>
                          <option value="average">AVERAGE</option>
                          <option value="bad">BAD</option>
                      </select>
                  </td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Is the subject matter suitable for publication in this journal?</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <select name="op1">
                          <option value="yes">YES</option>
                          <option value="no">NO</option>
                      </select>
                  </td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Does the paper describe original work?</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <select name="op2">
                          <option value="yes">YES</option>
                          <option value="no">NO</option>
                      </select>
                  </td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Are the references adequate?</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <select name="op3">
                          <option value="yes">YES</option>
                          <option value="no">NO</option>
                      </select>
                  </td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Should paper be shortened?</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <select name="op4">
                          <option value="yes">YES</option>
                          <option value="no">NO</option>
                      </select>
                  </td>
              </tr>
              <tr >
                  <td colspan="2" style="border: 2px solid #666666;padding: 5px">Please evaluate the technical content of the paper with respect to its theory and engineering application:</td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Theory</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <select name="theory">
                                                    <option value="excellent">EXCELLENT</option>
                          <option value="good">GOOD</option>
                          <option value="normal">NORMAL</option>
                          <option value="average">AVERAGE</option>
                          <option value="bad">BAD</option>

                      </select>
                  </td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Application</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <select name="application">
                                                    <option value="excellent">EXCELLENT</option>
                          <option value="good">GOOD</option>
                          <option value="normal">NORMAL</option>
                          <option value="average">AVERAGE</option>
                          <option value="bad">BAD</option>

                      </select>
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
                      <select name="op5">
                          <option value="yes">YES</option>
                          <option value="no">NO</option>
                      </select>
                  </td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Is the manuscript organised to show clearly what has been done?</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <select name="op6">
                          <option value="yes">YES</option>
                          <option value="no">NO</option>
                      </select>
                  </td>
              </tr>
              <tr>
                  <td style="border: 2px solid #666666;padding: 5px">Is the use of English clear and unambiguous?</td>
                  <td style="border: 2px solid #666666;padding: 5px">
                      <select name="op7">
                          <option value="yes">YES</option>
                          <option value="no">NO</option>
                      </select>
                  </td>
              </tr>
          </table>
           <div class="form-group">
                            <input type="submit" value="ADD" class="btn btn-primary btn-block"/>
                </div>
                    <div class="alert-warning" id="val">
                        
                    </div>
            </form>
                             <%
                             if(request.getMethod().equalsIgnoreCase("post"))
                             {
      connects co=new connects();
      Connection con=co.con();
      String uname=request.getParameter("a");
      String tit=request.getParameter("b");
      String rid=request.getParameter("c");
      PreparedStatement ps=con.prepareStatement("insert into comment(rid,name,title,comment,op1,op2,op3,op4,op5,op6,op7,theory,application,status,sdate) values(?,?,?,?,?,?,?,?,?,?,?,?,?,1,now())");
      ps.setString(1, rid);
      ps.setString(2, uname);
      ps.setString(3, tit);
      ps.setString(4, request.getParameter("comment"));
      ps.setString(5, request.getParameter("op1"));
      ps.setString(6, request.getParameter("op2"));
      ps.setString(7, request.getParameter("op3"));
      ps.setString(8, request.getParameter("op4"));
      ps.setString(9, request.getParameter("op5"));
      ps.setString(10, request.getParameter("op6"));
      ps.setString(11, request.getParameter("op7"));
      ps.setString(12, request.getParameter("theory"));
      ps.setString(13, request.getParameter("application"));
      int x=ps.executeUpdate();
      PreparedStatement ps2=con.prepareStatement("select * from paper where username=? and title=?");
      ps2.setString(1, uname);
      ps2.setString(2, tit);
      ResultSet rs=ps2.executeQuery();
      String z="";
      int y=0;
      while(rs.next())
      {
          z=rs.getString("comment");
      }
      if(z.equals("0"))
      {
      PreparedStatement ps1=con.prepareStatement("update paper set comment=1 where username=? and title=?");
      ps1.setString(1, uname);
      ps1.setString(2, tit);
      y=ps1.executeUpdate();
      }
      else
      {
          PreparedStatement ps1=con.prepareStatement("update paper set comment1=1 where username=? and title=?");
      ps1.setString(1, uname);
      ps1.setString(2, tit);
      y=ps1.executeUpdate();
      }
      if(x>0 && y>0)
      {
          %>
          <div class="alert-success" style="padding: 10px">
              <strong>SUCCESSFULLY SENT REVIEW</strong>
          </div>
          <%
      }
      else
          {
          %>
          <div class="alert-danger" style="padding: 10px">
              <strong>FAILED TO SEND REVIEW</strong>
          </div>
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
