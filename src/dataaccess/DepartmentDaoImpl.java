package dataaccess;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Delayed;

import javax.persistence.Embeddable;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import application.Department;

public class DepartmentDaoImpl implements DepartmentDao {

	@Override
	public void createOrUpdate(Department dept) {
		// TODO Auto-generated method stub
		ApplicationServices.getEntityManager().getTransaction().begin();
		ApplicationServices.getEntityManager().persist(dept);
		ApplicationServices.getEntityManager().getTransaction().commit();
		
	}

	@Override
	public void deleteDepartment(Department depart) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Department> getAllDepartments() {
		// TODO Auto-generated method stub
		List<Department> allDepts = new ArrayList<>();
		TypedQuery<Department> query = ApplicationServices.getEntityManager().createQuery("Select d from Department d",Department.class);
		allDepts = query.getResultList();
		return allDepts;
	}

}
