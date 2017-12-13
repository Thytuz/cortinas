package controllers;

import daos.FotoDAO;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.FotoModel;
import models.ProdutoModel;

@WebServlet(name = "ServletFotos", urlPatterns = {"/fotos"})
public class ServletFotos extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");

        RequestDispatcher rd = null;

        try (PrintWriter out = response.getWriter()) {

            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "default";
            FotoDAO fotoDao = new FotoDAO();

            if (action.equalsIgnoreCase("novo")) {
                rd = request.getRequestDispatcher("/admfotos.jsp");
            }

            if (action.equalsIgnoreCase("editar")) {
                int prodId = Integer.parseInt(request.getParameter("prodId"));
                try {
                    List<FotoModel> listaFotos = fotoDao.buscaFotosPorIdProduto(prodId);
                    request.setAttribute("listaFotos", listaFotos);
                    request.setAttribute("prodId", prodId);
                    rd = request.getRequestDispatcher("/admfotos.jsp");
                } catch (Exception e) {
                    rd = request.getRequestDispatcher("/admprincipal.jsp");
                }
            }

            if (action.equalsIgnoreCase("salvar")) {
                int prodId = Integer.parseInt(request.getParameter("prodId"));
                String src = request.getParameter("imagem");
                try {
                    fotoDao.salvar(new FotoModel(null, src, new ProdutoModel(prodId, null, null,
                            null, null, null, null, null, null)));
                    List<FotoModel> listaFotos = fotoDao.buscaFotosPorIdProduto(prodId);
                    request.setAttribute("listaFotos", listaFotos);
                    rd = request.getRequestDispatcher("/admfotos.jsp");
                } catch (Exception e) {
                    rd = request.getRequestDispatcher("/admprincipal.jsp");
                }
            }
            rd.forward(request, response);
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
