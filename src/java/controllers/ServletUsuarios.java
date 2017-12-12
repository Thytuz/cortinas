package controllers;

import daos.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.UsuarioModel;

@WebServlet(name = "ServletUsuarios", urlPatterns = {"/usuarios"})
public class ServletUsuarios extends HttpServlet {

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
        UsuarioDAO usuarioDao = new UsuarioDAO();

        try (PrintWriter out = response.getWriter()) {

            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "default";

            if (action.equalsIgnoreCase("logar")) {
                String email = request.getParameter("email");
                String senha = request.getParameter("senha");
                try {
                    UsuarioModel usuarioModel = usuarioDao.login(new UsuarioModel(null, null, email, senha));
                    if (usuarioModel.getUsuaId() == null) {
                        request.setAttribute("mensagem", "<div class='alert alert-danger'> Email ou senha incorretos</div>");
                        rd = request.getRequestDispatcher("/admprincipal.jsp");
                    } else {
                        request.setAttribute("mensagem", "<div class='alert alert-success'> Seja Bem Vindo " + usuarioModel.getUsuaNome() + "</div>");
                        HttpSession sessao = request.getSession(true);
                        sessao.setAttribute("usuaId", usuarioModel.getUsuaId());
                        rd = request.getRequestDispatcher("/admprincipal.jsp");
                    }

                } catch (Exception ex) {
                    request.setAttribute("mensagem", "<div class='alert alert-danger'> ERRO GRAVE!</div>");
                    rd = request.getRequestDispatcher("/admprincipal.jsp");
                }
            }

            if (action == "default") {
                HttpSession sessao = request.getSession(true);
                sessao.invalidate();
                rd = request.getRequestDispatcher("/admprincipal.jsp");
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
