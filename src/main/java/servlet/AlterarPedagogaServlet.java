package servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
public class AlterarPedagogaServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

		String acao = request.getParameter("acao");

		Pedagoga p;
		p = (Pedagoga) request.getSession().getAttribute("usuario");

		if (acao.equals("alterarUsuario")) {

			String nome = request.getParameter("nome");
			String siape = request.getParameter("siape");
			String usuario = request.getParameter("usuario");

			p.setNome(nome);
			p.setSiape(siape);
			p.setUsuario(usuario);

		}

		if (acao.equals("alterarSenha")) {

			String senhaAtual = request.getParameter("senhaAtual");
			String novaSenha = request.getParameter("novaSenha");
			String confirmNovaSenha = request.getParameter("confirmNovaSenha");
			
			PedagogaDAO pDAO = null;
			
			if (novaSenha.equals(confirmNovaSenha)) {
				p.setSenha(novaSenha);
			} else {
				out.println("Digite as senhas corretamente!");
			}

		}

		GenericDAO<Pedagoga> daoP = new GenericDAO<>();
		daoP.saveOrUpdate(p);

		response.sendRedirect("../registros_pedagogicos/jsp/index.jsp");

	}

}
