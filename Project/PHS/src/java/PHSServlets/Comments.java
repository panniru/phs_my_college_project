/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package PHSServlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import javax.servlet.RequestDispatcher;
import PHS.Test;

/**
 *
 * @author srikanth
 */
public class Comments extends HttpServlet {
   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Test test=new Test();

        int patientId=0;
        int doctorId=0;
        int yyyy=Integer.parseInt(request.getParameter("yyyy"));
        int dd=Integer.parseInt(request.getParameter("dd"));
        int mm=Integer.parseInt(request.getParameter("mm"));
        String comment=request.getParameter("comment");

        HttpSession session=request.getSession(false);
        if(session != null)
        {
           patientId=(Integer)session.getAttribute("patientId");
           doctorId=(Integer)session.getAttribute("UID");
        }

        test.setPatientId(patientId);
        test.setDoctorId(doctorId);
        test.setdd(dd);
        test.setmm(mm);
        test.setyyyy(yyyy);
        test.setComment(comment);
        int rowsUpdated=0;
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.println("<html>");
            out.println("<head>");
            rowsUpdated=test.writeComment();
            if(rowsUpdated ==1)
            {
//            out.println("</head><script type=\"text/javascript\"> alert(\" Comment Successfully Written...!!\");</script>");
                out.println("<p align='center'>Comment wrote successfully....!!! <br> <a href=\" forwardToAssign.jsp?pid="+patientId+"\"> go home</a>");
            }
            else
            {
//                out.println("</head><script type=\"text/javascript\"> alert(\" Comment not written...!!\");</script>");
                out.println("<p align='center'>Comment not written...!!!!! <br> <a href=\" forwardToAssign.jsp?pid="+patientId+"\"> go home</a></p>");
            }
//            System.out.println("Hello I am Excecuting.....");
//            RequestDispatcher dispatch=request.getRequestDispatcher("WriteComment.jsp");
//            dispatch.forward(request, response);
//            out.println("<body>");
//            out.println("<h1>Servlet Comments at " + request.getContextPath () + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
        } finally {
//            out.write("Hello World Servlet Excecuting");
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
