/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Pedagoga;
import model.dao.GenericDAO;
import model.dao.PedagogaDAO;

/**
 *
 * @author eddunic
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");

        PedagogaDAO pDao = new PedagogaDAO();

        Long idPedagoga = pDao.login(usuario, senha);

        Pedagoga p;

        if (idPedagoga == null) {
            out.println("NULL");
        } else if (idPedagoga == -1) {
            out.println("-1");
        } else {
            try {
                GenericDAO<Pedagoga> pDao2 = new GenericDAO<>();
                p = pDao2.findById(Pedagoga.class, idPedagoga);
                if (p != null) {
                    request.getSession().setAttribute("usuario", p);
                    response.sendRedirect("/registros_pedagogicos/jsp/home-relatos.jsp");
                } else {
                    out.println("ERRO");
                }
            } catch (IOException e) {
                out.println("ERRO " + e.getMessage());
            }

        }
    }

}
