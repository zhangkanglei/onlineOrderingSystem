package ssh.dao;

import java.util.List;

import org.hibernate.Query;

import ssh.entries.Admin;

public class AdminDao extends BaseDao{
	public boolean login(Admin admin){
		String hql="select userName,password from Admin  where userName=? and password=?";
		Query query = getSession().createQuery(hql).setString(0, admin.getUserName()).setString(1, admin.getPassword());
		List list = query.list();
		if(!list.isEmpty()){
			return true;
		}
		else{
			return false;
		}
	}
	
	public void saveOrUpdate(Admin admin){
		getSession().saveOrUpdate(admin);
	}
	
	public List<Admin> getAll(){
		String hql="from Admin";
		return getSession().createQuery(hql).list();
	}
	
	public Admin get(Integer id){
		return (Admin) getSession().get(Admin.class, id);
	}
}
