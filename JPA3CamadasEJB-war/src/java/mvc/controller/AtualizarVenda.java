/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mvc.model.beans.ProdutoFacade;
import mvc.model.beans.VendaFacade;
import mvc.model.beans.VendedorFacade;
import mvc.model.entidades.Venda;

/**
 *
 * @author ADSA JD São Vicente
 */
@WebServlet(name = "AtualizarVenda", urlPatterns = {"/AtualizarVenda"})
public class AtualizarVenda extends HttpServlet {

     @EJB
    private VendaFacade VendaFacade;
     @EJB
     private ProdutoFacade pf;
      @EJB
      private VendedorFacade vf;
     
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
             Integer id = Integer.parseInt(request.getParameter("id"));
             BigDecimal valorVenda = new BigDecimal(request.getParameter("valor"));
             Integer idProduto = Integer.parseInt(request.getParameter("idProduto"));
             Integer idVendedor = Integer.parseInt(request.getParameter("idVendedor"));
             
             
             Venda v = VendaFacade.find(id);
             v.setValorvenda(valorVenda);
             v.setProduto(pf.find(idProduto));
             v.setVendedor(vf.find(idVendedor));
             
             VendaFacade.edit(v);
            
            request.getRequestDispatcher("ListarTodosVendas").forward(request, response);
           
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
