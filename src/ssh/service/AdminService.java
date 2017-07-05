package ssh.service;

import java.util.List;

import ssh.dao.AdminDao;
import ssh.entries.Admin;

public class AdminService {
	private AdminDao adminDao;
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	public boolean login(Admin admin){
		return adminDao.login(admin);
	}
	
	public void saveOrUpdate(Admin admin){
		adminDao.saveOrUpdate(admin); 
	}
	public List<Admin> getAll(){
		return adminDao.getAll();
	}
	public Admin get(Integer id){
		return adminDao.get(id);
	}
}
