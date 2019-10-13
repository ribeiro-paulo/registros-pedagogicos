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

            GenericDAO<Pedagoga> daoP = new GenericDAO<>();
            daoP.saveOrUpdate(p);

            response.sendRedirect("../registros_pedagogicos/jsp/index.jsp?status=dados_alterados");

        }

        if (acao.equals("alterarSenha")) {

            String senhaAtual = request.getParameter("senhaAtual");
            String novaSenha = request.getParameter("novaSenha");
            String confirmNovaSenha = request.getParameter("confirmNovaSenha");

            if (novaSenha.equals(confirmNovaSenha) && senhaAtual.equals(p.getSenha())) {

                p.setSenha(novaSenha);
                
                GenericDAO<Pedagoga> daoP = new GenericDAO<>();
                daoP.saveOrUpdate(p);

                response.sendRedirect("../registros_pedagogicos/jsp/index.jsp?status=senha_alterada");
            } else {
                response.sendRedirect("../registros_pedagogicos/jsp/index.jsp?status=erro");
            }

        }

    }

}
