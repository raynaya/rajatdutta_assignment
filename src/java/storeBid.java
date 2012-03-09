/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

/**
 *
 * @author shamik
 */
public class storeBid extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //PrintWriter out = response.getWriter();
       // out.print("<body><h1>durr baal</h2>");
        int presentBid=Integer.parseInt(request.getParameter("pbid").trim());
        //out.print("The present bid is"+presentBid);

       //out.print("<script type=\"text/javascript\" > alert(<%=request.getParameter(\"pbid\")%>)</script>");

        try {
         Listener.bidObject b = (Listener.bidObject)getServletContext().getAttribute("b");
        if(  b.highestBid < presentBid)
        {
      //     out.print("yes");
            b.highestBid=presentBid;
            b.highestBidder=request.getSession().getAttribute("name").toString();
            response.sendRedirect("/rajatdutta_assignment/ajax/Bid.jsp");

           // getServletContext().getRequestDispatcher("/ajax/Bid.jsp").forward(request, response);

        }

        }
        finally {
           // out.print("</body>");
          //  out.close();
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
