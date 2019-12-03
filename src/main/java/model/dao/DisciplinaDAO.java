/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import javax.persistence.EntityManager;
import model.bean.Aluno;
import model.bean.Disciplina;
import model.bean.Registro;
import org.hibernate.Query;
import util.ConnectionFactory;

/**
 *
 * @author Paulo Ribeiro
 */
public class DisciplinaDAO {
    
    public Disciplina getById(Disciplina disciplina) {
        EntityManager manager = ConnectionFactory.getEntityManager();
        Query query;
        Disciplina d;
        try {
            manager.getTransaction().begin();
            query = (Query) manager.createQuery("from " + Disciplina.class.getName() + " a where a.id =:id")
                    .setParameter("id", disciplina.getId());
            d = (Disciplina) query.getSingleResult();
            manager.getTransaction().commit();
            return d;
        } catch (Exception e) {
            manager.getTransaction().rollback();
            return null;
        }
    }
    
}
