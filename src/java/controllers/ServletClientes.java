/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.ClienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.ClienteModel;
import org.json.simple.JSONObject;

/**
 *
 * @author mtsth
 */
@WebServlet(name = "ServletProdutos", urlPatterns = {"/clientes"})
public class ServletClientes extends HttpServlet {

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

            String action = request.getParameter("action");

            if (action.equals("edit")) {
                ClienteDAO clienteDAO = new ClienteDAO();

                int clieId = Integer.parseInt(request.getParameter("clieId"));
                String clieNome = request.getParameter("clieNome");
                String clieCPF = request.getParameter("clieCPF");
                String clieEmail = request.getParameter("clieEmail");
                String clieTelefone = request.getParameter("clieTelefone");
                String clieEndereço = request.getParameter("clieEndereco");

                ClienteModel clienteModel = new ClienteModel(clieId, clieNome, clieCPF, clieEmail, clieTelefone, null, clieEndereço);
                JSONObject dados = new JSONObject();
                dados = new JSONObject();

                try {
                    clienteDAO.atualizar(clienteModel);
                    dados.put("Resposta", "Success!");
                    out.print(dados);
                } catch (Exception e) {
                    dados.put("Error", e.getMessage());
                }
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
