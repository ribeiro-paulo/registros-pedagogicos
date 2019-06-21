package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Pedagoga;
import model.dao.GenericDAO;

/**
 *
 * @author eddunic
 */
public class CadastrarPedagogaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Pedagoga pedagoga = new Pedagoga();
        GenericDAO<Pedagoga> dao = new GenericDAO<>();

        pedagoga.setNome(request.getParameter("nome"));
        pedagoga.setSiape((request.getParameter("siape")));
        pedagoga.setUsuario(request.getParameter("usuario"));
        pedagoga.setSenha(request.getParameter("senha"));

        dao.saveOrUpdate(pedagoga);

        request.getSession().setAttribute("usuario", pedagoga);
        response.sendRedirect("../registros_pedagogicos/jsp/index.jsp");
    }

}
