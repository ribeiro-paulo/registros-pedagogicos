package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Aluno;
import model.bean.Pedagoga;
import model.bean.Registro;
import model.dao.GenericDAO;
import model.dao.RegistroDAO;

/**
 *
 * @author eddunic
 */
public class InserirAlunos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        GenericDAO<Aluno> g = new GenericDAO<>();
        Aluno a = new Aluno();
        a.setNome("Paulo Victor");
        a.setMatricula("201711440744");
        a.setNivel("Integrado");
        a.setTurma("INF31A");
        g.saveOrUpdate(a);

        GenericDAO<Aluno> g1 = new GenericDAO<>();
        Aluno a1 = new Aluno();
        a1.setNome("Eduardo Nicolas");
        a1.setMatricula("201711440060");
        a1.setNivel("Integrado");
        a1.setTurma("INF31A");
        g1.saveOrUpdate(a1);

        GenericDAO<Aluno> g2 = new GenericDAO<>();
        Aluno a2 = new Aluno();
        a2.setNome("Daniela Ferreira");
        a2.setMatricula("201711440302");
        a2.setNivel("Graduação");
        a2.setTurma("IINF31A");
        g2.saveOrUpdate(a2);

        GenericDAO<Aluno> g3 = new GenericDAO<>();
        Aluno a3 = new Aluno();
        a3.setNome("Gabriel Pepes");
        a3.setMatricula("201711440100");
        a3.setNivel("Graduação");
        a3.setTurma("IINF31A");
        g3.saveOrUpdate(a3);

        GenericDAO<Aluno> g4 = new GenericDAO<>();
        Aluno a4 = new Aluno();
        a4.setNome("Mirlândio Silva");
        a4.setMatricula("201711446622");
        a4.setNivel("Graduação");
        a4.setTurma("IINF31A");
        g4.saveOrUpdate(a4);

        GenericDAO<Aluno> g5 = new GenericDAO<>();
        Aluno a5 = new Aluno();
        a5.setNome("Juliana Pimenta");
        a5.setMatricula("201711441111");
        a5.setNivel("Graduação");
        a5.setTurma("IINF31A");
        g5.saveOrUpdate(a5);
        
        Pedagoga p = new Pedagoga();
        GenericDAO<Pedagoga> pDAO = new GenericDAO<>();
        p.setNome("Pedagoga teste");
        p.setSenha("123");
        p.setSiape("2019");
        p.setUsuario("paulo");
        pDAO.saveOrUpdate(p);
        
        response.sendRedirect("../registros_pedagogicos/index.jsp");
        
//        RegistroDAO registroDAO = new RegistroDAO();
//        List<Registro> registros = registroDAO.findAll();
//        
//        for (int i = 0; i < registros.size(); i++) {
//            System.out.println(registros.get(i).getAluno().getNome());
//        }

    }

}
