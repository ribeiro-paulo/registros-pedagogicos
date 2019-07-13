package model.dao;

import java.util.List;
import javax.persistence.EntityManager;
import model.bean.Registro;
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

}
