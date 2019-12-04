package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Aluno;
import model.bean.Registro;
import model.dao.AlunoDAO;
import model.dao.GenericDAO;
import org.apache.commons.io.IOUtils;

/**
 *
 * @author eddunic
 */
public class RegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acao = request.getParameter("acao");
        PrintWriter out = response.getWriter();
        if (acao.equals("confirmar")) {

            String id = request.getParameter("id");
            Long idLong = Long.parseLong(id);

            GenericDAO<Registro> dao = new GenericDAO();
            Registro r = dao.findById2(Registro.class, idLong);
            dao.remove(r);

            AlunoDAO dao2 = new AlunoDAO();
            Aluno a = dao2.findByMatricula(request.getParameter("matricula"));
            a.setQtdRegistro(a.getQtdRegistro() - 1);
            GenericDAO<Aluno> dao3 = new GenericDAO<>();
            dao3.saveOrUpdate(a);

            response.sendRedirect("/registros_pedagogicos/jsp/pasta-aluno.jsp?matricula=" + request.getParameter("matricula") + "&status=excluido");
        }

        if (acao.equals("cadastrar")) {

            Registro registro = new Registro();
            GenericDAO<Registro> dao = new GenericDAO<>();

            registro.setMatricula(request.getParameter("matricula"));
            registro.setData(request.getParameter("data"));
            registro.setTipoDeOcorrencia(request.getParameter("tipoDeOcorrencia"));
            registro.setDescricao(request.getParameter("descricao").getBytes());
            
            System.out.println(request.getParameter("descricao"));


            AlunoDAO dao2 = new AlunoDAO();
            Aluno a = dao2.findByMatricula(request.getParameter("matricula"));

            registro.setAluno(a);

            dao.saveOrUpdate(registro);

            GenericDAO<Aluno> dao3 = new GenericDAO<>();

            a.setQtdRegistro(a.getQtdRegistro() + 1);

            if (!a.isPasta()) {
                a.setPasta(true);
            }

            dao3.saveOrUpdate(a);

            response.sendRedirect("../registros_pedagogicos/jsp/pasta-aluno.jsp?matricula=" + a.getMatricula() + "&status=true");
        }

        if (acao.equals("editar")) {              
            String id = request.getParameter("idEditar");
            Long idLong = Long.parseLong(id);
            
            GenericDAO<Registro> dao = new GenericDAO();
            Registro r = dao.findById(Registro.class, idLong);
            r.setData(request.getParameter("data"));
            r.setTipoDeOcorrencia(request.getParameter("tipoDeOcorrencia"));
            r.setDescricao(request.getParameter("descricao").getBytes());
            System.out.println(request.getParameter("descricao"));
            dao.saveOrUpdate(r);
            
            response.sendRedirect("../registros_pedagogicos/jsp/pasta-aluno.jsp?matricula=" + request.getParameter("matricula") + "&status=alterado");
        }
    }

}
