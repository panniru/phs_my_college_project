package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class MedicinesToIssue_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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
      			"errorpage.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>medicinissued</title>\n");
      out.write("        <link href=\"CSS/PHS.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <script src=\"jquery-1.7.2.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            var cart=new Array();\n");
      out.write("            var total;\n");
      out.write("            function showMedicines()\n");
      out.write("            {\n");
      out.write("                alert('Hello World:'+$(\"#patientId\").val());\n");
      out.write("                ");
      out.write("\n");
      out.write("                var patientId=$(\"#patientId\").val();\n");
      out.write("                var date=$(\"#date\").val();\n");
      out.write("                var url='MedicineIssued?patientId='+patientId+'&date='+date;\n");
      out.write("                $.get(url, function(data){\n");
      out.write("                    $(\"#showMedicines\").html(data);\n");
      out.write("\n");
      out.write("\n");
      out.write("                });\n");
      out.write("                ");
      out.write("\n");
      out.write("            }\n");
      out.write("            function addToCart(medicineName,date)\n");
      out.write("            {\n");
      out.write("               \n");
      out.write("                var cost=$(\"#\"+medicineName+\"_cost\").val();\n");
      out.write("                alert(\"cost\"+cost)\n");
      out.write("                var iQuanity=$(\"#\"+medicineName+\"_qty\").val();\n");
      out.write("                var item=medicineName+\":\"+date+\":\"+iQuanity;\n");
      out.write("                if($(\"#\"+medicineName).is(\":checked\"))\n");
      out.write("                    {\n");
      out.write("                    cart.push(item);\n");
      out.write("                    total=total+cost;\n");
      out.write("                    alert('cart in if:'+cart + \"Total:\"+total)\n");
      out.write("                    }\n");
      out.write("                else\n");
      out.write("                    {\n");
      out.write("                        var i=0;\n");
      out.write("                        var poss=0;\n");
      out.write("                        alert(cart.length);\n");
      out.write("                        while(i<cart.length)\n");
      out.write("                            {\n");
      out.write("                                poss=cart.indexOf(item, 0);\n");
      out.write("                                cart.splice(poss, 1,item);\n");
      out.write("                                i++;\n");
      out.write("                            }\n");
      out.write("                        total=total-cost;\n");
      out.write("                        alert('cart in else: '+cart);\n");
      out.write("\n");
      out.write("                    }\n");
      out.write("            }\n");
      out.write("            function addMedicines(patientId)\n");
      out.write("            {\n");
      out.write("                alert('addMedicines Method');\n");
      out.write("                 var url='MedicineIssueSucces?patientId='+patientId+'&cart='+cart+'&total='+total;\n");
      out.write("                 $.get(url, function(data){\n");
      out.write("                    $(\"#showConfirmation\").html(data);\n");
      out.write("\n");
      out.write("\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("     </script>\n");
      out.write("    </head>\n");
      out.write("    ");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <table border=\"0\" align=\"center\" >\n");
      out.write("              <tbody>\n");
      out.write("                  <tr>\n");
      out.write("                      <td>PatientID</td>\n");
      out.write("                      <td>:</td>\n");
      out.write("                      <td><input type=\"text\" id=\"patientId\" name=\"patientId\" size=\"10\" /></td>\n");
      out.write("                      <td >Date</td>\n");
      out.write("                      <td>:</td>\n");
      out.write("                      <td><input type=\"text\" id=\"date\" name=\"patientId\" size=\"10\" />(dd/mm/yyyy)</td>\n");
      out.write("                      <td><input type=\"button\" value=\"ShowReport\" name=\"Report\" onclick=\"showMedicines()\"/></td>\n");
      out.write("                  </tr>\n");
      out.write("\n");
      out.write("               </tbody>\n");
      out.write("          </table>\n");
      out.write("        <div id=\"showMedicines\" align=\"center\" ></div>\n");
      out.write("        <div id=\"showConfirmation\" align=\"center\" ></div>\n");
      out.write("\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
