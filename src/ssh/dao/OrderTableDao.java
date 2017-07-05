package ssh.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import ssh.entries.Dishes;
import ssh.entries.OrderTable;
import ssh.entries.User;

public class OrderTableDao extends BaseDao{
	public void save(OrderTable orderTable){
		getSession().save(orderTable);
	}
	
	public List<OrderTable> getAll(){
		String hql="from OrderTable o order by o.dateNow desc";
		return getSession().createQuery(hql).list();
	}
	
	public OrderTable getOrderTable(Integer id){
		return (OrderTable) getSession().get(OrderTable.class,id);
	}

	public OrderTable get(Integer id) {
		return (OrderTable) getSession().get(OrderTable.class, id);
	}

	public void update(Integer id) {
		String hql="update OrderTable  set orderStatus='已打印' where id=?";
		getSession().createQuery(hql).setInteger(0, id).executeUpdate();
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
	
	 public List<OrderTable> getAllUser(int pageNow, int pageSize){// 查询所有学生 分页页  
	        String hql = "from OrderTable o order by o.dateNow desc";  
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
	        String hql = "from OrderTable";  
	        int size = getSession().createQuery(hql).list().size();  
	        return size;  
	    }

		public List<OrderTable> fuzzyQuery(String userName){
		String hql="from OrderTable  d where d.userName like '%"+userName+"%'";
		return getSession().createQuery(hql).list();
	}
}
