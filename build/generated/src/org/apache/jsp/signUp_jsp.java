package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signUp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Registration Page</title>\n");
      out.write("        <script src=http://code.jquery.com/jquery-latest.min.js></script>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            body{\n");
      out.write("                background-image: url(7.jpg);\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            #registerPage{\n");
      out.write("                background-color: rgba(150, 0, 66,0.5);\n");
      out.write("                width: 30%;\n");
      out.write("                margin: 20px;\n");
      out.write("                padding: 10px;\n");
      out.write("                border-radius: 10px;\n");
      out.write("                margin-top: 20%;\n");
      out.write("                margin-left: 20%;\n");
      out.write("            }\n");
      out.write("            .myButton {\n");
      out.write("                -moz-box-shadow:inset 0px 1px 0px 0px #dcecfb;\n");
      out.write("                -webkit-box-shadow:inset 0px 1px 0px 0px #dcecfb;\n");
      out.write("                box-shadow:inset 0px 1px 0px 0px #dcecfb;\n");
      out.write("                background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #bddbfa), color-stop(1, #80b5ea));\n");
      out.write("                background:-moz-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);\n");
      out.write("                background:-webkit-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);\n");
      out.write("                background:-o-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);\n");
      out.write("                background:-ms-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);\n");
      out.write("                background:linear-gradient(to bottom, #bddbfa 5%, #80b5ea 100%);\n");
      out.write("                filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#bddbfa', endColorstr='#80b5ea',GradientType=0);\n");
      out.write("                background-color:#bddbfa;\n");
      out.write("                -moz-border-radius:6px;\n");
      out.write("                -webkit-border-radius:6px;\n");
      out.write("                border-radius:6px;\n");
      out.write("                border:1px solid #84bbf3;\n");
      out.write("                display:inline-block;\n");
      out.write("                cursor:pointer;\n");
      out.write("                color:#ffffff;\n");
      out.write("                font-family:Arial;\n");
      out.write("                font-size:15px;\n");
      out.write("                font-weight:bold;\n");
      out.write("                padding:6px 24px;\n");
      out.write("                text-decoration:none;\n");
      out.write("                text-shadow:0px 1px 0px #528ecc;\n");
      out.write("                }\n");
      out.write("                .myButton:hover {\n");
      out.write("                        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #80b5ea), color-stop(1, #bddbfa));\n");
      out.write("                        background:-moz-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);\n");
      out.write("                        background:-webkit-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);\n");
      out.write("                        background:-o-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);\n");
      out.write("                        background:-ms-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);\n");
      out.write("                        background:linear-gradient(to bottom, #80b5ea 5%, #bddbfa 100%);\n");
      out.write("                        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#80b5ea', endColorstr='#bddbfa',GradientType=0);\n");
      out.write("                        background-color:#80b5ea;\n");
      out.write("                }\n");
      out.write("                .myButton:active {\n");
      out.write("                        position:relative;\n");
      out.write("                        top:1px;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("        \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div id=\"registerPage\">\n");
      out.write("            <center>\n");
      out.write("                <input placeholder=\"Username\" type=\"text\" name=\"username\" id=\"username\"/><br/>\n");
      out.write("                <input placeholder=\"Password\" type=\"password\" name=\"password\" id=\"password\"/><br/>\n");
      out.write("                <input class=\"myButton\" type=\"button\" value=\"Sign Up\" id=\"registrationBtn\" onclick=\"createUser();\"/><br/>\n");
      out.write("                Have an account?<br/><a href=\"login.jsp\" id=\"loginText\">Login</a>\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            function createUser() {\n");
      out.write("                var name = $(\"#username\").val();\n");
      out.write("                var password = $(\"#password\").val();\n");
      out.write("                var userData = {\"username\": name, \"password\": password};\n");
      out.write("                $.ajax({\n");
      out.write("                    url: 'RegisterServlet',\n");
      out.write("                    type: 'GET',\n");
      out.write("                    contentType: 'application/json',\n");
      out.write("                    data: userData,\n");
      out.write("                    success: function (data, textStatus, jqXHR) {\n");
      out.write("                        window.location.href = \"login.jsp\";\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("        </script>\n");
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
