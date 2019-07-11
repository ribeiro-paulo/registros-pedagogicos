package model.dao;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import model.bean.Aluno;
import model.bean.Pedagoga;
import model.bean.Registro;
import org.hibernate.Query;
import org.hibernate.Session;
import util.ConnectionFactory;
import util.HibernateUtil;

/**
 *
 * @author eddunic
 */
public class AlunoDAO {

    public Long login(String usuario, String senha) {
        EntityManager manager = ConnectionFactory.getEntityManager();
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
        EntityManager manager = ConnectionFactory.getEntityManager();
        return manager.createQuery("FROM "
                + Aluno.class.getName()).getResultList();
    }

    public List<Aluno> alunosComRegistro() {
        
        RegistroDAO r = new RegistroDAO();

        List<Aluno> lA = findAll();
        List<Registro> lR = r.findAll();
        List<Aluno> resultado = new ArrayList();

        for (int i = 0; i < lR.size(); i++) {
            for (int j = 0; j < lA.size(); j++) {
                if (lA.get(j).getMatricula().equals(lR.get(i).getMatricula())) {
                    resultado.add(lA.get(j));
                }
            }
        }
        
        return resultado;
    }
}
