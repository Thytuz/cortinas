/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.ClienteDAO;
import daos.ProdutoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.ClienteModel;
import models.ProdutoModel;

/**
 *
 * @author tatuapu
 */
@WebServlet(name = "ServletGetAjaxData", urlPatterns = {"/getDados"})
public class ServletGetAjaxData extends HttpServlet {

    HttpServletRequest request;
    HttpServletResponse response;

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
        this.request = request;
        this.response = response;

        String cmd = (request.getParameter("cmd") != null) ? request.getParameter("cmd").toLowerCase().toString() : "";
        ArrayList listaRetorno = new ArrayList();
        //RequestDispatcher rd =  request.getRequestDispatcher("/home.jsp");

        switch (cmd) {
            case "listaclientes":
                setViewData(getListaTodosClientes(), "lista-clientes", "cliente");
                abreViewDestino("./data/listaJSON.jsp");
                break;
            case "listaprodutos":
                setViewData(getListaTodosProdutos(), "lista-produtos", "produto");
                abreViewDestino("./data/listaJSON.jsp");
                break;
            default:
                abreViewDestino("");
        }

    }

    private ArrayList getListaTodosClientes() {
        ClienteDAO clienteDAO = new ClienteDAO();
        try {
            ArrayList<ClienteModel> listaClientes = (ArrayList<ClienteModel>) clienteDAO.listaTodos();
            return listaClientes;
        } catch (Exception ex) {
            Logger.getLogger(ServletGetAjaxData.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    private ArrayList getListaTodosProdutos() {
        ProdutoDAO produtoDAO = new ProdutoDAO();
        try {
            ArrayList<ProdutoModel> listaProdutos = (ArrayList<ProdutoModel>) produtoDAO.listaTodos();
            return listaProdutos;
        } catch (Exception ex) {
            Logger.getLogger(ServletGetAjaxData.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
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

    private void setViewData(ArrayList lista, String nmParametro, String classe) {
        this.request.setAttribute(nmParametro, lista);
        this.request.setAttribute("classe", classe);
    }

    private void abreViewDestino(String urlDestino) throws ServletException, IOException {
        if (urlDestino != "") {
            this.request.getRequestDispatcher(urlDestino).forward(this.request, this.response);
        } else {
            this.response.sendRedirect("./");
        }
    }

}
