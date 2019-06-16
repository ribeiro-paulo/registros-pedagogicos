package model.dao;

import java.util.List;
import javax.persistence.EntityManager;
import model.bean.Pedagoga;
import org.hibernate.Query;
import org.hibernate.Session;
import util.ConnectionFactory;
import util.HibernateUtil;

/**
 *
 * @author eddunic
 */
public class PedagogaDAO {

    public List<Pedagoga> getList() {
	EntityManager manager = ConnectionFactory.getEntityManager();
	List<Pedagoga> pedagogas = null;
	try {
	    pedagogas = manager.createQuery("FROM Pedagoga p").getResultList();
	} catch (Exception e) {
	    System.err.println(e);
	} finally {
	    manager.close();
	}
	return pedagogas;
    }

    public List<Pedagoga> buscarPorLogin(Pedagoga pedagoga) {
	Query query;
	Session s = HibernateUtil.getSessionFactory().openSession();

	String hql = "from Pedagoga p where p.usuario like :usuario"
		+ " and p.senha like :senha";
	query = s.createQuery(hql)
		.setParameter("usuario", pedagoga.getUsuario())
		.setParameter("senha", pedagoga.getSenha());

	return query.list();
    }

//
//    public List<Pedagoga> buscar(Pedagoga pedagoga) {
//	Query query;
//	Session s = HibernateUtil.getSessionFactory().openSession();
//
//	String hql = "from Pedagoga p where p.usuario like :usuario"
//		+ " and p.senha like :senha";
//	query = s.createQuery(hql)
//		.setParameter("usuario", pedagoga.getUsuario())
//		.setParameter("senha", pedagoga.getSenha());
//
//	return query.list();
//    }
//
//    public List<Pedagoga> buscar2(Pedagoga pedagoga) {
//	Query query;
//	Session s = HibernateUtil.getSessionFactory().openSession();
//
//	String hql = "from Pedagoga p where u.usuario like :usuario";
//	query = s.createQuery(hql)
//		.setParameter("usuario", pedagoga.getUsuario());
//
//	return query.list();
//    }
//
//    public List<Pedagoga> buscar3(String usuario) {
//	Query query;
//	Session s = HibernateUtil.getSessionFactory().openSession();
//
//	String hql = "from Pedagoga p where p.usuario like :usuario";
//	query = s.createQuery(hql)
//		.setParameter("usuario", usuario);
//
//	return query.list();
//    }
    /*
    public String loginGmail(String email) {
	Session s = HibernateUtil.getSessionFactory().openSession();
	Query query = s.createQuery("from Usuario u where u.email =:email");
	query.setParameter("email", email);

	Usuario u = (Usuario) query.uniqueResult();
	return u.getEmail();
    }

    public Usuario buscarPeloEmail(String email) {
	Session s = HibernateUtil.getSessionFactory().openSession();
	Query query = s.createQuery("from Usuario u where u.email =:email");
	query.setParameter("email", email);

	Usuario u = (Usuario) query.uniqueResult();
	return u;
    }

    public String atualizar(Usuario u) {
	Session session = HibernateUtil.getSessionFactory().openSession();
	session.beginTransaction();
	String message = null;
	try {
	    session.update(u);
	    session.getTransaction().commit();
	} catch (Exception e) {
	    session.getTransaction().rollback();
	    message = e.getMessage();
	} finally {
	    session.close();
	}
	return message;
    }

    public void updateSenha(String email, String senhaAleatoria) {

	Session session = HibernateUtil.getSessionFactory().openSession();
	session.beginTransaction();

	Query query = session.createQuery("update Usuario set senha = :senhaAleatoria"
		+ " where email = :email");
	query.setParameter("senhaAleatoria", senhaAleatoria);
	query.setParameter("email", email);
	query.executeUpdate();

	session.getTransaction().commit();
	session.close();

    }
     */
}
