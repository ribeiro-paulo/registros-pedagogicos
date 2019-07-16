package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Aux;
import model.dao.GenericDAO;

/**
 *
 * @author eddunic
 */
public class ListarRegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Aux aux = new Aux();
        GenericDAO<Aux> dao = new GenericDAO<>();

        aux.setId(1L);
        aux.setMatricula(request.getParameter("matricula"));

        dao.saveOrUpdate(aux);

    }

}
