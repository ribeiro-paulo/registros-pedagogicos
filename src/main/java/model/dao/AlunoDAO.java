package model.dao;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import model.bean.Aluno;
import model.bean.Pedagoga;
import model.bean.Registro;
import org.hibernate.Query;
import util.ConnectionFactory;

/**
 *
 * @author eddunic
 */
public class AlunoDAO {

    public List<Aluno> findAll() {
        EntityManager manager = ConnectionFactory.getEntityManager();
        return manager.createQuery("FROM "
                + Aluno.class.getName()).getResultList();
    }

//    public List<Aluno> alunosComRegistro() {
//
//        RegistroDAO r = new RegistroDAO();
//
//        List<Aluno> lA = findAll();
//        List<Registro> lR = r.findAll();
//        List<Aluno> resultado = new ArrayList();
//
//        for (int i = 0; i < lR.size(); i++) {
//            for (int j = 0; j < lA.size(); j++) {
//                if (lA.get(j).getMatricula().equals(lR.get(i).getMatricula())) {
//                    resultado.add(lA.get(j));
//                }
//            }
//        }
//
//        return resultado;
//    }

    public Aluno findByMatricula(String matricula) {
        EntityManager manager = ConnectionFactory.getEntityManager();
        Query query;
        Aluno a;
        try {
            manager.getTransaction().begin();
            query = (Query) manager.createQuery("from Aluno a where a.matricula =:matricula")
                    .setParameter("matricula", matricula);
            a = (Aluno) query.getSingleResult();
            manager.getTransaction().commit();
            return a;
        } catch (Exception e) {
            manager.getTransaction().rollback();
            return null;
        }
    }

}
