/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.ArrayList;
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
    
    public List<Float> mediaEtapa(Aluno aluno){
        
        List<Float> mediaEtapas = new ArrayList();
        List<Boletim> notas = getBoletimByAluno(aluno);
        float etapa1 = 0, etapa2 = 0, etapa3 = 0, etapa4 = 0;
        
        for(Boletim nota: notas){
            etapa1 += nota.getN1();
            etapa2 += nota.getN2();
            etapa3 += nota.getN3();
            etapa4 += nota.getN4();
        }
        
        etapa1 = etapa1/notas.size();
        etapa2 = etapa2/notas.size();
        etapa3 = etapa3/notas.size();
        etapa4 = etapa4/notas.size();
        
        mediaEtapas.add(etapa1);
        mediaEtapas.add(etapa2);
        mediaEtapas.add(etapa3);
        mediaEtapas.add(etapa4);
        
        return mediaEtapas;
    }
}
