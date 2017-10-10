package dataaccess;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;



public class ApplicationServices {
	
	private static EntityManager em;
	private static EntityManagerFactory emf = new Persistence().createEntityManagerFactory("propMan");
	private static DepartmentDao departmentDao = new DepartmentDaoImpl();
	private ApplicationServices(){
		
	}
	static{
		em = emf.createEntityManager();
	}
	public static EntityManager getEntityManager(){
		return em;
	}
	
	public static DepartmentDao getDeptDao(){
		return departmentDao;
	}

	
}
