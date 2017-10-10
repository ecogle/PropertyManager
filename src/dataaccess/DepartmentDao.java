package dataaccess;

import java.util.List;

import application.Department;

public interface DepartmentDao {
	
	public void createOrUpdate(Department dept);
	
	public void deleteDepartment(Department depart);
	
	public List<Department> getAllDepartments();

}
