package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Registro;
import model.dao.GenericDAO;
import model.dao.RegistroDAO;

/**
 *
 * @author eddunic
 */
public class RegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acao = request.getParameter("acao");

        if (acao.equals("confirmar")) {

            String id = request.getParameter("id");
            Long idLong = Long.parseLong(id);

            GenericDAO<Registro> dao = new GenericDAO();
            Registro r = dao.findById2(Registro.class, idLong);
            dao.remove(r);

            response.sendRedirect("/registros_pedagogicos/jsp/index.jsp");

        }

    }

}
