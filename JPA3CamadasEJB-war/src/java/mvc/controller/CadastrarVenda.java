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
 * @author internet
 */
@WebServlet(name = "CadastrarVenda", urlPatterns = {"/CadastrarVenda"})
public class CadastrarVenda extends HttpServlet {

    @EJB
    private VendaFacade vendaFacade;
    @EJB
    private ProdutoFacade pF;
    @EJB
    private VendedorFacade vendedorFacade;
    
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
            
             BigDecimal valorvenda = new BigDecimal(request.getParameter("valor"));
             Integer produto = Integer.parseInt(request.getParameter("idProduto"));
             Integer vendedor = Integer.parseInt(request.getParameter("idVendedor"));
             
             Venda venda = new Venda();
             venda.setProduto(pF.find(produto));
             venda.setVendedor(vendedorFacade.find(vendedor));
             venda.setValorvenda(valorvenda);
             
             vendaFacade.create(venda);
             
             String mensagem = null;
            if(venda.getId()==null)
                mensagem = "Erro ao cadastrar vendas";
            else
                mensagem = "Venda cadastrado com id: " + venda.getId();
            
            request.setAttribute("mensagem", mensagem);
            request.getRequestDispatcher("resultadovenda.jsp").forward(request, response);
             
             
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
