/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tests;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.bean.Aluno;
import model.bean.Pedagoga;
import model.bean.Registro;
import model.dao.AlunoDAO;
import model.dao.GenericDAO;
import model.dao.RegistroDAO;

/**
 *
 * @author eddunic
 */
public class TesteDAO {

    public static void main(String args[]) {
//        Pedagoga pedagoga = new Pedagoga(123, "Ilma", "il", "123");
//        
//        PedagogaDAO dao = new PedagogaDAO();
//        
//        dao.inserir(pedagoga);

//        Pedagoga p = new Pedagoga();
//        GenericDAO<Pedagoga> daoP = new GenericDAO<>();
//        p.setSiape(123);
//        p.setNome("Ilma");
//        p.setUsuario("il");
//        p.setSenha("123");
//        daoP.saveOrUpdate(p);
//        Aluno a = new Aluno();
//        a.setMatricula(111);
//        a.setNivel("Integrado");
//        a.setNome("Júnior");
//        a.setTurma("INF31A");
//        
//        GenericDAO<Aluno> daoP = new GenericDAO<>();
//        
//        daoP.saveOrUpdate(a);
//        Registro r = new Registro();
//        r.setData("12-11-99");
//        r.setMatricula("201711440744");
//        r.setDescricao("muito gado");
//        r.setTipoDeOcorrencia("sexo");
//        
//        GenericDAO<Registro> dao = new GenericDAO();
//        dao.saveOrUpdate(r);
//        AlunoDAO dao = new AlunoDAO();
//          List<Aluno> resultado = dao.alunosComRegistro();
//          
//          for(int i = 0; i < resultado.size(); i++){
//              System.out.println(resultado.get(i).getNome());
//          }
//          
//saveOrUpdate update
	GenericDAO<Pedagoga> dao = new GenericDAO<>();

	Pedagoga p = dao.findById(Pedagoga.class, 2L);
	p.setSenha("abcedario");
	dao.saveOrUpdate(p);
	System.out.println("Entidade atualizada com sucesso.");
    }
}

// help link https://www.profissionaisti.com.br/2016/12/design-pattern-criando-uma-classe-dao-generica/
