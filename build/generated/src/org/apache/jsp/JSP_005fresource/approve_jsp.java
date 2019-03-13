package org.apache.jsp.JSP_005fresource;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.FileInputStream;
import java.io.File;
import com.oreilly.servlet.MultipartRequest;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import main.connects;

public final class approve_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <title>Conference</title>\n");
      out.write("  <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("  <meta content=\"\" name=\"keywords\">\n");
      out.write("  <meta content=\"\" name=\"description\">\n");
      out.write("\n");
      out.write("  <!-- Favicons -->\n");
      out.write("  <link href=\"../img/favicon.jpg\" rel=\"icon\">\n");
      out.write("  <link href=\"../img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("\n");
      out.write("  <!-- Bootstrap CSS File -->\n");
      out.write("  <link href=\"../lib/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  <!-- Libraries CSS Files -->\n");
      out.write("  <link href=\"../lib/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"../lib/animate/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"../lib/ionicons/css/ionicons.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"../lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"../lib/lightbox/css/lightbox.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  <!-- Main Stylesheet File -->\n");
      out.write("  <link href=\"../css/style.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  <!--/ Nav Star /-->\n");
      out.write("  <nav class=\"navbar navbar-b navbar-trans navbar-expand-md fixed-top\" id=\"mainNav\" style=\"background-color: #0078ff\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <a class=\"navbar-brand js-scroll\" href=\"#page-top\">SandBox</a>\n");
      out.write("      <button class=\"navbar-toggler collapsed\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarDefault\"\n");
      out.write("        aria-controls=\"navbarDefault\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("        <span></span>\n");
      out.write("        <span></span>\n");
      out.write("        <span></span>\n");
      out.write("      </button>\n");
      out.write("      <div class=\"navbar-collapse collapse justify-content-end\" id=\"navbarDefault\">\n");
      out.write("        <ul class=\"navbar-nav\">\n");
      out.write("\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll\" href=\"view.jsp\">View</a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link js-scroll\" href=\"logout.jsp\">Logout</a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </nav>\n");
      out.write("  <!--/ Nav End /-->\n");
      out.write("\n");
      out.write("  <!--/ Intro Skew Star /-->\n");
      out.write("  \n");
      out.write("  <!--/ Intro Skew End /-->\n");
      out.write("\n");
      out.write("  <!--/ Section Blog-Single Star /-->\n");
      out.write("  ");

                  response.setHeader("Cache-Control", "no-cache");
                  response.setHeader("Cache-Control", "no-store");
                  response.setHeader("Pragma", "no-cache");
                  response.setDateHeader("Expires", 0);
                  
      out.write("\n");
      out.write("  ");

      String rem=(String)session.getAttribute("remail");
      if(rem==null)
      {
          response.sendRedirect("login.jsp");
      }
      
      out.write("\n");
      out.write("            <div class=\"container\" style=\"margin-left: 450px;margin-top: 100px\">\n");
      out.write("      <div class=\"col-md-6\">\n");
      out.write("        <div class=\"card-body\">\n");
      out.write("            <h3 class=\"card-header\" style=\"background-color: #ff9999\" ><font size=\"5\"> APPROVAL</font></h3>\n");
      out.write("                         <div class=\"card-body\">\n");
      out.write("                             ");

      
                             int y=0,x=0;
                             String z="";
                             String uname=request.getParameter("a");
                             String title=request.getParameter("b");
                             String rid=request.getParameter("c");
                             connects co=new connects();
                             Connection con=co.con();
                            PreparedStatement ps3=con.prepareStatement("select * from paper where username=? and title=?");
                            ps3.setString(1, uname);
                            ps3.setString(2, title);
                            ResultSet rs1=ps3.executeQuery();
                            while(rs1.next())
                            {
                                z=rs1.getString("approve");
                            }
                            if(z.equals("0"))
                            {
                             PreparedStatement ps=con.prepareStatement("update paper set approve=? where username=? and title=?");
                             ps.setString(1, "1");
                             ps.setString(2, uname);
                             ps.setString(3, title);
                             x=ps.executeUpdate();
                            }
                            else
                            {
                             PreparedStatement ps=con.prepareStatement("update paper set approve1=? where username=? and title=?");
                             ps.setString(1, "1");
                             ps.setString(2, uname);
                             ps.setString(3, title);
                             x=ps.executeUpdate();   
                            }
                             
                             PreparedStatement ps1=con.prepareStatement("select * from resource where rid=?");
                             ps1.setString(1, rid);
                             ResultSet rs=ps1.executeQuery();
                             while(rs.next())
                             {
                                 String stat=Integer.toString(Integer.parseInt((rs.getString("reviewed")))+1);
                                 PreparedStatement ps2=con.prepareStatement("update resource set reviewed=? where rid=?");
                                 ps2.setString(1, stat);
                                 ps2.setString(2, request.getParameter("c"));
                                 y=ps2.executeUpdate();
                             }
                             PreparedStatement ps4=con.prepareStatement("update comment set approve=1 where name=? and rid=? and title=?");
                             ps4.setString(1, uname);
                             ps4.setString(2, rid);
                             ps4.setString(3, title);
                             if(x>0 && y>0)
                             {
                                 
      out.write("\n");
      out.write("                                 <img src=\"../img/app.jpg\" width=\"100px\" height=\"100px\"/>\n");
      out.write("                                 <div class=\"alert-success\">\n");
      out.write("                                     <strong>APPROVED</strong>\n");
      out.write("                                 </div>\n");
      out.write("                                 ");

                             }
                             else
                              {
                                 
      out.write("\n");
      out.write("                                 <center><img src=\"../img/delete.jpg\" width=\"100px\" height=\"100px\"/></center>\n");
      out.write("                                 <div class=\"alert-danger\" style=\"padding: 20px\">\n");
      out.write("                                     <strong>FAILED TO APPROVE</strong>\n");
      out.write("                                 </div>\n");
      out.write("                                 ");

                             }   
                                
      out.write("\n");
      out.write("                         </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("            </div>\n");
      out.write("  \n");
      out.write("  <!--/ Section Contact-Footer Star /-->\n");
      out.write("  <section class=\"paralax-mf footer-paralax bg-image sect-mt4 route\" style=\"background-image: url(img/overlay-bg.jpg)\">\n");
      out.write("    <div class=\"overlay-mf\"></div>\n");
      out.write("    <footer>\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-sm-12\">\n");
      out.write("            <div class=\"copyright-box\">\n");
      out.write("              <p class=\"copyright\">&copy; Copyright <strong>SandBox</strong>. All Rights Reserved</p>\n");
      out.write("              <div class=\"credits\">\n");
      out.write("                <!--\n");
      out.write("                  All the links in the footer should remain intact.\n");
      out.write("                  You can delete the links only if you purchased the pro version.\n");
      out.write("                  Licensing information: https://bootstrapmade.com/license/\n");
      out.write("                  Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=DevFolio\n");
      out.write("                -->\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </footer>\n");
      out.write("  </section>\n");
      out.write("  <!--/ Section Contact-footer End /-->\n");
      out.write("    <footer>\n");
      out.write("  <a href=\"#\" class=\"back-to-top\"><i class=\"fa fa-chevron-up\"></i></a>\n");
      out.write("  <div id=\"preloader\"></div>\n");
      out.write("\n");
      out.write("  <!-- JavaScript Libraries -->\n");
      out.write("  <script src=\"../lib/jquery/jquery.min.js\"></script>\n");
      out.write("  <script src=\"../lib/jquery/jquery-migrate.min.js\"></script>\n");
      out.write("  <script src=\"../lib/popper/popper.min.js\"></script>\n");
      out.write("  <script src=\"../lib/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("  <script src=\"../lib/easing/easing.min.js\"></script>\n");
      out.write("  <script src=\"../lib/counterup/jquery.waypoints.min.js\"></script>\n");
      out.write("  <script src=\"../lib/counterup/jquery.counterup.js\"></script>\n");
      out.write("  <script src=\"../lib/owlcarousel/owl.carousel.min.js\"></script>\n");
      out.write("  <script src=\"../lib/lightbox/js/lightbox.min.js\"></script>\n");
      out.write("  <script src=\"../lib/typed/typed.min.js\"></script>\n");
      out.write("  <!-- Contact Form JavaScript File -->\n");
      out.write("  <script src=\"../contactform/contactform.js\"></script>\n");
      out.write("\n");
      out.write("  <!-- Template Main Javascript File -->\n");
      out.write("  <script src=\"../js/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}