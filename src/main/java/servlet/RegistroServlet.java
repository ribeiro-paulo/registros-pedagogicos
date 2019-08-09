package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Aluno;
import model.bean.Registro;
import model.dao.AlunoDAO;
import model.dao.GenericDAO;

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

            AlunoDAO dao2 = new AlunoDAO();
            Aluno a = dao2.findByMatricula(request.getParameter("listarMatricula"));
            GenericDAO<Aluno> dao3 = new GenericDAO<>();
            dao3.saveOrUpdate(a);

            response.sendRedirect("/registros_pedagogicos/jsp/index.jsp");

        }

        if (acao.equals("cadastrar")) {

            Registro registro = new Registro();
            GenericDAO<Registro> dao = new GenericDAO<>();

            registro.setMatricula(request.getParameter("matricula"));
            registro.setData(request.getParameter("data"));
            registro.setTipoDeOcorrencia(request.getParameter("tipoDeOcorrencia"));
            registro.setDescricao(request.getParameter("descricao"));

            AlunoDAO dao2 = new AlunoDAO();
            Aluno a = dao2.findByMatricula(request.getParameter("matricula"));

            registro.setAluno(a);

            dao.saveOrUpdate(registro);

            GenericDAO<Aluno> dao3 = new GenericDAO<>();

            if (a.isPasta() == false) {
                a.setPasta(true);
                dao3.saveOrUpdate(a);
            }

            response.sendRedirect("../registros_pedagogicos/jsp/index.jsp");

        }

    }

}
