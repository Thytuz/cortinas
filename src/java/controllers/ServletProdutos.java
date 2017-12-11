/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.ProdutoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.ProdutoModel;
import org.json.simple.JSONObject;

/**
 *
 * @author mtsth
 */
@WebServlet(name = "ServletProdutos", urlPatterns = {"/produtos"})
public class ServletProdutos extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd = null;
        try (PrintWriter out = response.getWriter()) {

            String action = request.getParameter("action");
            ProdutoDAO produtoDAO = new ProdutoDAO();

            if (action.equals("edit")) {
                int prodId = Integer.parseInt(request.getParameter("prodId"));
                String prodCategoria = request.getParameter("prodCategoria");
                String prodNome = request.getParameter("prodNome");
                String prodCor = request.getParameter("prodCor");
                String prodMarca = request.getParameter("prodMarca");
                Double prodPreco = Double.parseDouble(request.getParameter("prodPreco"));
                String prodTamanho = request.getParameter("prodTamanho");
                String prodMaterial = request.getParameter("prodMaterial");
                String prodDescricao = request.getParameter("prodDescricao");

                ProdutoModel produtoModel = new ProdutoModel(prodId, prodCategoria,
                        prodNome, prodCor, prodMarca, prodPreco, prodTamanho, prodMaterial, prodDescricao);
                JSONObject dados = new JSONObject();
                dados = new JSONObject();

                try {
                    produtoDAO.atualizar(produtoModel);
                    dados.put("Resposta", "Success!");
                    out.print(dados);
                } catch (Exception e) {
                    dados.put("Error", e.getMessage());
                }
            }

            if (action.equals("detalhar")) {
                int prodId = Integer.parseInt(request.getParameter("prodId"));
                ProdutoModel produtoModel = produtoDAO.buscaProdutoPorId(prodId);
                request.setAttribute("produtoModel", produtoModel);
                rd = request.getRequestDispatcher("/detalheproduto.jsp");

                rd.forward(request, response);

            }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ServletProdutos.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ServletProdutos.class.getName()).log(Level.SEVERE, null, ex);
        }
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
