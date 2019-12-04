package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Aluno;
import model.bean.Boletim;
import model.bean.Disciplina;
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

        List<Aluno> alunos = new ArrayList();
         //Cadastrar alunos
        GenericDAO<Aluno> g = new GenericDAO<>();
        Aluno a = new Aluno();
        a.setNome("Paulo Victor");
        a.setMatricula("201711440744");
        a.setNivel("Integrado");
        a.setTurma("INF31A");
        alunos.add(a);
        g.saveOrUpdate(a);

        GenericDAO<Aluno> g1 = new GenericDAO<>();
        Aluno a1 = new Aluno();
        a1.setNome("Eduardo Nicolas");
        a1.setMatricula("201711440060");
        a1.setNivel("Integrado");
        a1.setTurma("INF31A");
        alunos.add(a1);
        g1.saveOrUpdate(a1);

        GenericDAO<Aluno> g2 = new GenericDAO<>();
        Aluno a2 = new Aluno();
        a2.setNome("Daniela Ferreira");
        a2.setMatricula("201711440302");
        a2.setNivel("Graduação");
        a2.setTurma("IINF31A");
        alunos.add(a2);
        g2.saveOrUpdate(a2);

        GenericDAO<Aluno> g3 = new GenericDAO<>();
        Aluno a3 = new Aluno();
        a3.setNome("Gabriel Pepes");
        a3.setMatricula("201711440100");
        a3.setNivel("Graduação");
        a3.setTurma("IINF31A");
        alunos.add(a3);
        g3.saveOrUpdate(a3);

        GenericDAO<Aluno> g4 = new GenericDAO<>();
        Aluno a4 = new Aluno();
        a4.setNome("Mirlândio Silva");
        a4.setMatricula("201711446622");
        a4.setNivel("Graduação");
        a4.setTurma("IINF31A");
        alunos.add(a4);
        g4.saveOrUpdate(a4);

        GenericDAO<Aluno> g5 = new GenericDAO<>();
        Aluno a5 = new Aluno();
        a5.setNome("Juliana Pimenta");
        a5.setMatricula("201711441111");
        a5.setNivel("Graduação");
        a5.setTurma("IINF31A");
        alunos.add(a5);
        g5.saveOrUpdate(a5);
        
        // Pedagoga
        Pedagoga p = new Pedagoga();
        GenericDAO<Pedagoga> pDAO = new GenericDAO<>();
        p.setNome("Pedagoga teste");
        p.setSenha("123");
        p.setSiape("2019");
        p.setUsuario("paulo");
        pDAO.saveOrUpdate(p);
        
        //Cadastrar disciplinas
        List<Disciplina> disciplinas = new ArrayList();
        disciplinas.add(new Disciplina("Matemática"));
        disciplinas.add(new Disciplina("Física"));
        disciplinas.add(new Disciplina("História"));
        disciplinas.add(new Disciplina("Lingua Portugesa"));
        disciplinas.add(new Disciplina("Geografica"));
        disciplinas.add(new Disciplina("Química"));
        disciplinas.add(new Disciplina("Inglês"));
        
        Random rn = new Random();
        
        for (int i = 0; i < disciplinas.size(); i++) {
            GenericDAO<Disciplina> gerericDisciplina = new GenericDAO<>();
            gerericDisciplina.saveOrUpdate(disciplinas.get(i));
        }
        
        for(int i = 0; i < alunos.size(); i++){
            for(int j = 0; j < disciplinas.size(); j++){
                GenericDAO<Boletim> genericBoletim = new GenericDAO<>();
                Boletim boletim = new Boletim();
                boletim.setAluno(alunos.get(i));
                boletim.setDisciplina(disciplinas.get(j));
                boletim.setN1(rn.nextInt(10) + 1);
                boletim.setN2(rn.nextInt(10) + 1);
                boletim.setN3(rn.nextInt(10) + 1);
                boletim.setN4(rn.nextInt(10) + 1);
                
                float media = (boletim.getN1() + boletim.getN2() + boletim.getN3() + boletim.getN4())/4;
                if(media >= 6)
                    boletim.setSituacao("Aprovado");
                else
                    boletim.setSituacao("Reprovado");
                
                genericBoletim.saveOrUpdate(boletim);
                
            }
        }
        response.sendRedirect("../registros_pedagogicos/index.jsp");
    }

}
