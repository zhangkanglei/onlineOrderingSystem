package ssh.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.omg.CORBA.PRIVATE_MEMBER;

import ssh.entries.OrderTable;
import ssh.entries.User;

public class UserDao extends BaseDao{
	public List<User> getAll(){
		String hql = "from User";
		return getSession().createQuery(hql).list();
	}
	public void saveOrUpdate(User user){
		getSession().saveOrUpdate(user);
	}
	public User getUserByUserName(String username){
		String hql = "FROM User u WHERE u.username = ?";
		Query query = getSession().createQuery(hql).setString(0, username);
		 return (User) query.uniqueResult();
	}
	
	
	private Transaction transaction=null;
	
	
	public boolean login(User user){
		


		String hql="select username,password from User where username=? and password=?";
		Query query = getSession().createQuery(hql).setString(0, user.getUsername()).setString(1, user.getPassword());
		List list=query.list();
		
		if(!list.isEmpty()){
			return true;
		}
		else
			return false;
	}
	
	public int getAllRowCount(String hql) {    
		return Integer.parseInt(getSession().createQuery(hql).list().get(0).toString());    
	}
	
	public List<User> queryForPage(final String hql, final int offset, final int length) {    
		Session session = this.getSession();    
		Query q = session.createQuery(hql);    
		q.setFirstResult(offset);    
		q.setMaxResults(length);    
		List<User> list = q.list();    
		System.out.println(list.size());    
		session.close();    
		return list;    
		}    
	
	 public List<User> getAllUser(int pageNow, int pageSize){// 查询所有学生 分页页  
	        String hql = "from User";  
	        Query query = getSession().createQuery(hql);//执行查询操作  
	        query.setFirstResult((pageNow - 1) * pageSize);  
	        query.setMaxResults(pageSize);  
	        List userList = query.list();  
	        if (userList.size() > 0) {  
	            return userList;  
	        }  
	  
	        return null;  
	    }  
	    public int findUserSize() {// 所有学生个数  
	        String hql = "from User";  
	        int size = getSession().createQuery(hql).list().size();  
	        return size;  
	    }
		public User get(Integer id) {
			return (User) getSession().get(User.class, id);
		}
		public User get(String username) {
			String hql="from User u where u.username='"+username+"'";
			List list= getSession().createQuery(hql).list();
			return (User) list.get(0);
		}
		public List<OrderTable> orderList(Integer id) {
			String hql="from OrderTable o where o.uid=? order by o.dateNow desc";
			return getSession().createQuery(hql).setInteger(0, id).list();
		}
		public List<User> fuzzyQuery(String username){
			String hql="from User  d where d.username like '%"+username+"%'";
			return getSession().createQuery(hql).list();
		}
}
