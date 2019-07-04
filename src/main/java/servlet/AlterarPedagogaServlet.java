package servlet;

import java.io.IOException;
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
public class AlterarPedagogaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {

	String nome = request.getParameter("nome");
	String siape = request.getParameter("siape");
	String usuario = request.getParameter("usuario");

	Pedagoga p;
	p = (Pedagoga) request.getSession().getAttribute("usuario");

	p.setNome(nome);
	p.setSiape(siape);
	p.setUsuario(usuario);

	GenericDAO<Pedagoga> daoP = new GenericDAO<>();
	daoP.saveOrUpdate(p);
	
	response.sendRedirect("../registros_pedagogicos/jsp/index.jsp");

    }

}
