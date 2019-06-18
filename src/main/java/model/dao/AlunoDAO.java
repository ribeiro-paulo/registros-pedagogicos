package model.dao;

import java.util.List;
import javax.persistence.EntityManager;
import model.bean.Aluno;
import model.bean.Pedagoga;
import org.hibernate.Query;
import org.hibernate.Session;
import util.ConnectionFactory;

/**
 *
 * @author eddunic
 */
public class AlunoDAO {

    private static EntityManager manager = ConnectionFactory.getEntityManager();

    public Long login(String usuario, String senha) {
        Query query;
        Pedagoga p;
        try {
            manager.getTransaction().begin();
            //Criptografia c = new Criptografia();
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

    public List<Aluno> findAll() {
        return manager.createQuery("FROM "
                + Aluno.class.getName()).getResultList();
    }
}
