package org.apache.jsp.JSP_005fresource;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import main.connects;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  <nav class=\"navbar navbar-b navbar-trans navbar-expand-md fixed-top\" id=\"mainNav\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <a class=\"navbar-brand js-scroll\" href=\"#page-top\">SandBox</a>\n");
      out.write("      <button class=\"navbar-toggler collapsed\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarDefault\"\n");
      out.write("        aria-controls=\"navbarDefault\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("        <span></span>\n");
      out.write("        <span></span>\n");
      out.write("        <span></span>\n");
      out.write("      </button>\n");
      out.write("      <div class=\"navbar-collapse collapse justify-content-end\" id=\"navbarDefault\">\n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </nav>\n");
      out.write("  <!--/ Nav End /-->\n");
      out.write("\n");
      out.write("  <!--/ Intro Skew Star /-->\n");
      out.write("  <div class=\"intro intro-single route bg-image\" style=\"background-image: url(img/overlay-bg.jpg)\">\n");
      out.write("    <div class=\"overlay-mf\"></div>\n");
      out.write("    <div class=\"intro-content display-table\">\n");
      out.write("      <div class=\"table-cell\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("          <h3 class=\"intro-title mb-4\">RESOURCE PERSON Login</h3>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <!--/ Intro Skew End /-->\n");
      out.write("\n");
      out.write("  <!--/ Section Blog-Single Star /-->\n");
      out.write("            <div class=\"container\" style=\"margin-left: 450px\">\n");
      out.write("      <div class=\"col-md-6 \">\n");
      out.write("        <div class=\"card-body\">\n");
      out.write("                            \n");
      out.write("                         \n");
      out.write("                                <div class=\"toggle-content text-center\" id=\"tab1\">\n");
      out.write("                                    <table>\n");
      out.write("                                          <form action=\"\" method=\"post\" >\n");
      out.write("                                          <div class=\"form-group\">\n");
      out.write("                                            <div class=\"form-label-group\">\n");
      out.write("                                                <tr> <th>USERNAME:&nbsp;</th><td> <input type=\"text\" id=\"inputEmail\" class=\"form-control\" placeholder=\"Username\" name='uname' required=\"required\" autofocus=\"autofocus\"></td></tr>\n");
      out.write("                                             \n");
      out.write("                                            </div>\n");
      out.write("                                          </div>\n");
      out.write("                                          <div class=\"form-group\">\n");
      out.write("                                            <div class=\"form-label-group\">\n");
      out.write("                                                <tr><th> PASSWORD:&nbsp;</th>\n");
      out.write("                                                    <td><input type=\"password\" id=\"inputPassword\" class=\"form-control\" name='pwd' placeholder=\"Password\" required=\"required\"></td></tr>\n");
      out.write("                                          \n");
      out.write("                                            </div>\n");
      out.write("                                          </div>\n");
      out.write("                                                                                      <div class=\"form-group\">\n");
      out.write("                                            <div class=\"form-label-group\">\n");
      out.write("                                                <tr><th> CAPTCHA:&nbsp;</th>\n");
      out.write("                                                    <td> \n");
      out.write("                                                        <img src=\"../CaptchaServlet\"/>\n");
      out.write("                                                    </td>\n");
      out.write("                                            </div>\n");
      out.write("                                          </div>\n");
      out.write("\n");
      out.write("                                                                                        <div class=\"form-group\">\n");
      out.write("                                            <div class=\"form-label-group\">\n");
      out.write("                                                <tr><th></th>\n");
      out.write("                                                    <td><input type=\"text\" id=\"inputPassword\" class=\"form-control\" name='otp' placeholder=\"Password\" required=\"required\"></td></tr>\n");
      out.write("                                          \n");
      out.write("                                            </div>\n");
      out.write("                                          </div>\n");
      out.write("\n");
      out.write("                                              <tr><td><input type=\"submit\" class=\"btn btn-primary btn-block\" value=\"Login\"/></td></tr>\n");
      out.write("                                            \n");
      out.write("                                        </form>\n");
      out.write("                                    </table>\n");
      out.write("                                        ");

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
                                                
      out.write("\n");
      out.write("                                                <div class=\"alert alert-danger\">\n");
      out.write("                                                    <strong>ACCESS DENIED</strong>\n");
      out.write("                                                </div>\n");
      out.write("                                                    ");

                                            }
                                            else
                                            {
                                                if(otp.equals(captcha))
                                                response.sendRedirect("view.jsp");
                                                else
                                                {
                                                     
      out.write("\n");
      out.write("                                                <div class=\"alert alert-danger\">\n");
      out.write("                                                    <strong>ACCESS DENIED</strong>\n");
      out.write("                                                </div>\n");
      out.write("                                                    ");

                                                }
                                            }
                                            
                                            }
                                            
      out.write("\n");
      out.write("                                      </div>\n");
      out.write("                                    </div>\n");
      out.write("                                  </div>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
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
      out.write(" <section class=\"paralax-mf footer-paralax bg-image sect-mt4 route\" style=\"background-image: url(img/overlay-bg.jpg)\">\n");
      out.write("    <div class=\"overlay-mf\"></div>\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-12\">\n");
      out.write("          <div class=\"contact-mf\">\n");
      out.write("            <div id=\"contact\" class=\"box-shadow-full\">\n");
      out.write("              <div class=\"row\">\n");
      out.write("                <div class=\"col-md-9\">\n");
      out.write("                    <div class=\"title-box-2 pt-4 pt-md-0\">\n");
      out.write("                    <h5 class=\"title-left\">\n");
      out.write("                      Get in Touch\n");
      out.write("                    </h5>\n");
      out.write("                  </div>\n");
      out.write("                 \n");
      out.write("                    <div class=\"more-info\">\n");
      out.write("                    <p class=\"lead\">\n");
      out.write("                        We offer to publish your papers...<br>\n");
      out.write("                        For any queries regarding our company or website call us ....\n");
      out.write("                    </p>\n");
      out.write("                    <ul class=\"list-ico\">\n");
      out.write("                      <li><span class=\"ion-ios-location\"></span> Bangalore</li>\n");
      out.write("                      <li><span class=\"ion-ios-telephone\"></span> (91)-9898987766</li>\n");
      out.write("                      <li><span class=\"ion-email\"></span> sandbox@gmail.com</li>\n");
      out.write("                    </ul>\n");
      out.write("                  </div>\n");
      out.write("                 \n");
      out.write("                  <div class=\"socials\">\n");
      out.write("                    <ul>\n");
      out.write("                      <li><a href=\"\"><span class=\"ico-circle\"><i class=\"ion-social-facebook\"></i></span></a></li>\n");
      out.write("                      <li><a href=\"\"><span class=\"ico-circle\"><i class=\"ion-social-instagram\"></i></span></a></li>\n");
      out.write("                      <li><a href=\"\"><span class=\"ico-circle\"><i class=\"ion-social-twitter\"></i></span></a></li>\n");
      out.write("                      <li><a href=\"\"><span class=\"ico-circle\"><i class=\"ion-social-pinterest\"></i></span></a></li>\n");
      out.write("                    </ul>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
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
