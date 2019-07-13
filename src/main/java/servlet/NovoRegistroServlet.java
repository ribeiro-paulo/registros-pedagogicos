package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Aluno;
import model.bean.Registro;
import model.dao.AlunoDAO;
import model.dao.GenericDAO;

/**
 *
 * @author Junior
 */
@WebServlet(name = "NovoRegistroServlet", urlPatterns = {"/NovoRegistroServlet"})
public class NovoRegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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

        response.sendRedirect("../registros_pedagogicos/jsp/index.jsp");
    }
}
