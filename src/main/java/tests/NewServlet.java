package tests;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Aluno;
import model.bean.Registro;
import model.dao.AlunoDAO;
import model.dao.RegistroDAO;

/**
 *
 * @author eddunic
 */
public class NewServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //getRegistroByMatricula
        //        RegistroDAO dao = new RegistroDAO();
        //        List<Registro> registros = dao.getRegistroByMatricula("201711440100");
        //        for (Registro r : registros) {
        //            System.out.println(r.getDescricao());
        //        }

        AlunoDAO dao = new AlunoDAO();
        List<Aluno> alunos = dao.findByPasta();
        for (Aluno a : alunos) {
            System.out.println(a.getNome());
        }

    }

}
