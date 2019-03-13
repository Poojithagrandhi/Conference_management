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
              <a class="nav-link js-scroll" href="view1.jsp">Approved papers </a>
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
            <div class="container" style="margin-left: 250px;margin-top: 100px">
      <div class="col-md-12">
        <div class="card-body">
            <h3 class="card-header" style="background-color: #ff9999" ><font size="5"> VIEW DETAILS</font></h3>
                         <div class="card-body">
                             <table style="border: 2px solid black" class="tab-content">
                    <tr>
                        <th style="border:2px solid black;padding: 5px" >TITLE </th>
                        <th style="border:2px solid black;padding: 5px">DOMAIN</th>
                        <th style="border:2px solid black;padding: 5px;width: 500px">ABSTRACT</th>
                        <th style="border:2px solid black;padding: 5px">PAPER</th>
                        <th style="border:2px solid black;padding: 5px">COMMENT</th>
                        <th style="border:2px solid black;padding: 5px">APPROVE</th>
                    </tr>
<%
                         
                connects co=new connects();
                Connection con=co.con();
                PreparedStatement ps=con.prepareStatement("select rid from resource where uname=?");
                ps.setString(1, rem);
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {
                    PreparedStatement ps1=con.prepareStatement("select * from assign where rid=?");
                    ps1.setString(1, rs.getString("rid"));
                    ResultSet rs1=ps1.executeQuery();
                    while(rs1.next())
                    {
                        PreparedStatement ps2=con.prepareStatement("select * from paper where title=? and username=? and approve=0 or approve1=0 ");
                        ps2.setString(1, rs1.getString("title"));
                        ps2.setString(2, rs1.getString("name"));
                        ResultSet rs2=ps2.executeQuery();
                        
                %>
                
                <%
                while(rs2.next())
                {
                    PreparedStatement ps3=con.prepareStatement("select * from comment where name=? and rid=? and title=?");
                        ps3.setString(1, rs2.getString("username"));
                        ps3.setString(2, rs.getString("rid"));
                        ps3.setString(3, rs2.getString("title"));
                        ResultSet rs3=ps3.executeQuery();
                        String c="0",d="0",e="";
                        while(rs3.next())
                        {
                            c=rs3.getString("status");
                            d=rs3.getString("approve");
                            e=rs3.getString("title");
                        }
                    
                   %>
                   <tr>
                       <th style="border:2px solid black;padding: 5px"><%= rs2.getString("title") %></th>
                       <th style="border:2px solid black;padding: 5px"><%= rs2.getString("domain") %></th>
                       <th style="border:2px solid black;padding: 5px;width: 500px"><%= rs2.getString("abstract") %></th>
                       <th style="border: 2px solid black;padding: 5px"><a href="../read?msg=<%= rs2.getString("id") %>"><img src="../img/docx.jpg" width="25px" height="30px"/></a></th>
                       <%
                       
                       if(c.equals("0"))
                       {
                       %>
                       <th style="border:2px solid black;padding: 5px"><button class="btn-info"><a href="comment.jsp?a=<%= rs2.getString("username") %>&b=<%= rs2.getString("title") %>&c=<%= rs.getString("rid") %>">COMMENT</a></button>
                       </th>
                       <%
                       }
                       else
                       {
                           %>
                           <th style="border:2px solid black;padding: 5px">GIVEN</th>
                           <%
                       }
                       if(d.equals("0"))
                       {
                           PreparedStatement ps4=con.prepareStatement("select * from comment where rid=? and name=? and title=?");
                           ps4.setString(1, rs.getString("rid"));
                           ps4.setString(2, rs2.getString("username"));
                           ps4.setString(3, rs2.getString("title"));
                           ResultSet rs4=ps4.executeQuery();
                           int j=0;
                           while(rs4.next())
                           {
                               j=rs4.getRow();
                           }
                           if(j>0)
                           {
                           %>
                       
                       <th style="border:2px solid black;padding: 5px"><button class="btn-info"><a href="approve.jsp?a=<%= rs2.getString("username") %>&b=<%= rs2.getString("title") %>&c=<%= rs.getString("rid") %>">APPROVE</a></button></th>
                       <%
                           }
                           else
                           {
                               %>
                       <th style="border:2px solid black;padding: 5px"> </th>
                               <%
                           }
                       }
                       else
                       {
                           %>
                       <th style="border:2px solid black;padding: 5px">APPROVED</th>
                           <%
                       }
                       %>
                   </tr>
                   <%
                }
                break;
                }
                }
                %>
                <tr >
                    <td colspan="7"><p>NOTE: Approve only after giving comments.</p></td>
                </tr>
                </table>

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
