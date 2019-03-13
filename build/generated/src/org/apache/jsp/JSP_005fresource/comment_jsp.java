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

public final class comment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            <h3 class=\"card-header\" style=\"background-color: #ff9999\" ><font size=\"5\"> ADD REVIEW</font></h3>\n");
      out.write("                         <div class=\"card-body\">\n");
      out.write("                <form action=\"\" method=\"post\" >\n");
      out.write("                        <table>\n");
      out.write("               \n");
      out.write("              <tr>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">Please rate the paper by choosing a category from the following list</td>\n");
      out.write("                  <td style=\"border: 2px solid #666666\">\n");
      out.write("                      <select name=\"comment\">\n");
      out.write("                          <option value=\"excellent\">EXCELLENT</option>\n");
      out.write("                          <option value=\"good\">GOOD</option>\n");
      out.write("                          <option value=\"normal\">NORMAL</option>\n");
      out.write("                          <option value=\"average\">AVERAGE</option>\n");
      out.write("                          <option value=\"bad\">BAD</option>\n");
      out.write("                      </select>\n");
      out.write("                  </td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">Is the subject matter suitable for publication in this journal?</td>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">\n");
      out.write("                      <select name=\"op1\">\n");
      out.write("                          <option value=\"yes\">YES</option>\n");
      out.write("                          <option value=\"no\">NO</option>\n");
      out.write("                      </select>\n");
      out.write("                  </td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">Does the paper describe original work?</td>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">\n");
      out.write("                      <select name=\"op2\">\n");
      out.write("                          <option value=\"yes\">YES</option>\n");
      out.write("                          <option value=\"no\">NO</option>\n");
      out.write("                      </select>\n");
      out.write("                  </td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">Are the references adequate?</td>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">\n");
      out.write("                      <select name=\"op3\">\n");
      out.write("                          <option value=\"yes\">YES</option>\n");
      out.write("                          <option value=\"no\">NO</option>\n");
      out.write("                      </select>\n");
      out.write("                  </td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">Should paper be shortened?</td>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">\n");
      out.write("                      <select name=\"op4\">\n");
      out.write("                          <option value=\"yes\">YES</option>\n");
      out.write("                          <option value=\"no\">NO</option>\n");
      out.write("                      </select>\n");
      out.write("                  </td>\n");
      out.write("              </tr>\n");
      out.write("              <tr >\n");
      out.write("                  <td colspan=\"2\" style=\"border: 2px solid #666666;padding: 5px\">Please evaluate the technical content of the paper with respect to its theory and engineering application:</td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">Theory</td>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">\n");
      out.write("                      <select name=\"theory\">\n");
      out.write("                                                    <option value=\"excellent\">EXCELLENT</option>\n");
      out.write("                          <option value=\"good\">GOOD</option>\n");
      out.write("                          <option value=\"normal\">NORMAL</option>\n");
      out.write("                          <option value=\"average\">AVERAGE</option>\n");
      out.write("                          <option value=\"bad\">BAD</option>\n");
      out.write("\n");
      out.write("                      </select>\n");
      out.write("                  </td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">Application</td>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">\n");
      out.write("                      <select name=\"application\">\n");
      out.write("                                                    <option value=\"excellent\">EXCELLENT</option>\n");
      out.write("                          <option value=\"good\">GOOD</option>\n");
      out.write("                          <option value=\"normal\">NORMAL</option>\n");
      out.write("                          <option value=\"average\">AVERAGE</option>\n");
      out.write("                          <option value=\"bad\">BAD</option>\n");
      out.write("\n");
      out.write("                      </select>\n");
      out.write("                  </td>\n");
      out.write("              </tr>\n");
      out.write("          </table>\n");
      out.write("                          <table>\n");
      out.write("               \n");
      out.write("              <tr>\n");
      out.write("                  <th style=\"border: 2px solid #666666\">\n");
      out.write("                      Presentation\n");
      out.write("                  </th>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">Has the author demonstrated the value of the work?</td>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">\n");
      out.write("                      <select name=\"op5\">\n");
      out.write("                          <option value=\"yes\">YES</option>\n");
      out.write("                          <option value=\"no\">NO</option>\n");
      out.write("                      </select>\n");
      out.write("                  </td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">Is the manuscript organised to show clearly what has been done?</td>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">\n");
      out.write("                      <select name=\"op6\">\n");
      out.write("                          <option value=\"yes\">YES</option>\n");
      out.write("                          <option value=\"no\">NO</option>\n");
      out.write("                      </select>\n");
      out.write("                  </td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">Is the use of English clear and unambiguous?</td>\n");
      out.write("                  <td style=\"border: 2px solid #666666;padding: 5px\">\n");
      out.write("                      <select name=\"op7\">\n");
      out.write("                          <option value=\"yes\">YES</option>\n");
      out.write("                          <option value=\"no\">NO</option>\n");
      out.write("                      </select>\n");
      out.write("                  </td>\n");
      out.write("              </tr>\n");
      out.write("          </table>\n");
      out.write("           <div class=\"form-group\">\n");
      out.write("                            <input type=\"submit\" value=\"ADD\" class=\"btn btn-primary btn-block\"/>\n");
      out.write("                </div>\n");
      out.write("                    <div class=\"alert-warning\" id=\"val\">\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("            </form>\n");
      out.write("                             ");

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
          
      out.write("\n");
      out.write("          <div class=\"alert-success\" style=\"padding: 10px\">\n");
      out.write("              <strong>SUCCESSFULLY SENT REVIEW</strong>\n");
      out.write("          </div>\n");
      out.write("          ");

      }
      else
          {
          
      out.write("\n");
      out.write("          <div class=\"alert-danger\" style=\"padding: 10px\">\n");
      out.write("              <strong>FAILED TO SEND REVIEW</strong>\n");
      out.write("          </div>\n");
      out.write("          ");

      }
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
