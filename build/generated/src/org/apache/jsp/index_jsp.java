package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Tech Trinkets</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table class=\"bigtable\">\n");
      out.write("            <tr class=\"topnav\">\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    Welcome, Guest - Sign In - Register - View Cart\n");
      out.write("                    <hr />\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr class=\"logosearch\">\n");
      out.write("                <td>\n");
      out.write("                    <img src=\"images/techtrinkets.png\" id=\"logo\" />\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <form>\n");
      out.write("                        <input type=\"text\" id=\"search\" />&nbsp;\n");
      out.write("                        <input type=\"submit\" value=\"Search!\" id=\"searchbutton\" />\n");
      out.write("                    </form>\n");
      out.write("                    <!--<img src=\"images/search_box.jpg\" id=\"search\" /> -->\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr class=\"body\">\n");
      out.write("                <td><br /><br />Browse By Type:\n");
      out.write("                    <ul>\n");
      out.write("                        <li>Tshirts</li>\n");
      out.write("                        <li>Appliances</li>\n");
      out.write("                        <li>Home & Office</li>\n");
      out.write("                        <li>Toys</li>\n");
      out.write("                        <li>Clearance</li>\n");
      out.write("                        <li>All Products</li>\n");
      out.write("                    </ul>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <table class=\"itemtable\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <img src=\"images/ImageSoon.jpg\" /> <br /> Description\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <img src=\"images/ImageSoon.jpg\" /> <br /> Description\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <img src=\"images/ImageSoon.jpg\" /> <br /> Description\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <img src=\"images/ImageSoon.jpg\" /> <br /> Description\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <img src=\"images/ImageSoon.jpg\" /> <br /> Description\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <img src=\"images/ImageSoon.jpg\" /> <br /> Description\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <img src=\"images/ImageSoon.jpg\" /> <br /> Description\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <img src=\"images/ImageSoon.jpg\" /> <br /> Description\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <img src=\"images/ImageSoon.jpg\" /> <br /> Description\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr class=\"footer\">\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    Copyright 2013 Tech Trinkets, Inc. All Rights Reserved. User Agreement and Privacy Policy.\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
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
