/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import javax.persistence.EntityManager;
import model.bean.Aluno;
import model.bean.Boletim;
import model.bean.Registro;
import org.hibernate.Query;
import util.ConnectionFactory;

/**
 *
 * @author Paulo Ribeiro
 */
public class BoletimDAO {
    
    public List<Boletim> getBoletimByAluno(Aluno aluno) {
        EntityManager manager = ConnectionFactory.getEntityManager();
        Query query;
        manager.getTransaction().begin();
        query = (Query) manager.createQuery("from " + Boletim.class.getName() + " r where r.aluno =:aluno")
                .setParameter("aluno", aluno);
        manager.getTransaction().commit();
        return query.getResultList();
    }
}
