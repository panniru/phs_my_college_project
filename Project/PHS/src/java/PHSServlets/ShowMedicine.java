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
import PHS.MedicinePrescribe;
/**
 *
 * @author srikanth
 */
public class ShowMedicine extends HttpServlet {
   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int patientId=Integer.parseInt(request.getParameter("patientId"));
        String date=request.getParameter("date");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        MedicinePrescribe medicines=new MedicinePrescribe();
        String output="";
        try {
            if(date==null)
            {
                output=medicines.ShowMedicineDates(patientId);
            }
            else
            {
                output=medicines.ShowMedicineDetails(patientId, date);
            }
            out.write(output);
        } finally { 
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
