/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tests;

import model.bean.Aluno;
import model.dao.AlunoDAO;
import model.dao.GenericDAO;

/**
 *
 * @author Junior
 */
public class AdicionarAlunos {
    
    public static void main(String args[]){
        
        GenericDAO<Aluno> g = new GenericDAO<>();
        Aluno a = new Aluno();
        a.setNome("Paulo Victor");
        a.setMatricula("201711440744");
        a.setNivel("Integrado");
        a.setTurma("INF31A");
        g.saveOrUpdate(a);
        
        GenericDAO<Aluno> g1 = new GenericDAO<>();
        Aluno a1 = new Aluno();
        a1.setNome("Gabriel");
        a1.setMatricula("5555555555");
        a1.setNivel("Integrado");
        a1.setTurma("INF31A");
        g1.saveOrUpdate(a1);
        
        GenericDAO<Aluno> g2 = new GenericDAO<>();
        Aluno a2 = new Aluno();
        a2.setNome("Matheus Reis");
        a2.setMatricula("666666666");
        a2.setNivel("Graduação");
        a2.setTurma("lala");
        g2.saveOrUpdate(a2);
        
    }
    
}