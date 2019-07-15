package model.dao;

import java.util.List;
import javax.persistence.EntityManager;
import model.bean.Registro;
import org.hibernate.Query;
import util.ConnectionFactory;

/**
 *
 * @author Junior
 */
public class RegistroDAO {

    public List<Registro> findAll() {

        EntityManager manager = ConnectionFactory.getEntityManager();

        return manager.createQuery("FROM "
                + Registro.class.getName()).getResultList();
    }

    public List<Registro> getRegistroByMatricula(String matricula) {
        EntityManager manager = ConnectionFactory.getEntityManager();
        Query query;
        manager.getTransaction().begin();
        query = (Query) manager.createQuery("from " + Registro.class.getName() + " r where r.matricula =:matricula")
                .setParameter("matricula", matricula);
        manager.getTransaction().commit();
        return query.getResultList();
    }

}
