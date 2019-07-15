package model.dao;

import java.util.List;
import javax.persistence.EntityManager;
import model.bean.Pedagoga;
import org.hibernate.Query;
import org.hibernate.Session;
import util.ConnectionFactory;

/**
 *
 * @author eddunic
 */
public class PedagogaDAO {

    public Long login(String usuario, String senha) {
        
        EntityManager manager = ConnectionFactory.getEntityManager();
        
        Query query;
        Pedagoga p;
        try {
            manager.getTransaction().begin();
            query = (Query) manager.createQuery("from Pedagoga p where p.usuario =:usuario")
                    .setParameter("usuario", usuario);
            p = (Pedagoga) query.getSingleResult();
            manager.getTransaction().commit();
            p.setSenha(p.getSenha());
            if (p.getSenha().equals(senha)) {
                return p.getId();
            } else {
                return new Long(-1);
            }
        } catch (Exception e) {
            manager.getTransaction().rollback();
            return null;
        }
    }
    
}
