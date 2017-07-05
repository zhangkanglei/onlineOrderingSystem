package ssh.dao;

import java.util.List;

import org.hibernate.Query;

import ssh.entries.Dishes;
import ssh.entries.User;

public class DishesDao extends BaseDao{
	
	
	public void delete(Integer id){
		String hql = "delete from Dishes d where d.id=?";
		getSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
	
	public List<Dishes> getAll(){
		String hql = "from Dishes d left outer join fetch d.classify ";
		return getSession().createQuery(hql).list();
	}
	
	public void saveOrUpdate(Dishes dishes){
		getSession().saveOrUpdate(dishes);
	}
	
	public Dishes get(Integer id){
		return (Dishes) getSession().get(Dishes.class, id);
	}
	public Dishes getDishesById(String id){
		return (Dishes) getSession().get(Dishes.class, id);
	}
	
	public List<Dishes> fuzzyQuery(String dishes){
		String hql="from Dishes  d where d.dishes like '%"+dishes+"%'";
		System.out.println(getSession().createQuery(hql).list());
		return getSession().createQuery(hql).list();
	}
	
	
	public List<Dishes> getAllDishes(int pageNow, int pageSize){// 查询所有菜品 分页  
        String hql = "from Dishes d left outer join fetch d.classify order by d.id desc";  
        Query query = getSession().createQuery(hql);//执行查询操作  
        query.setFirstResult((pageNow - 1) * pageSize);  
        query.setMaxResults(pageSize);  
        List dishesList = query.list();  
        if (dishesList.size() > 0) {  
            return dishesList;  
        }  
  
        return null;  
    }  
    public int findDishesSize() {// 所有菜品个数  
        String hql = "from Dishes";  
        int size = getSession().createQuery(hql).list().size();  
        return size;  
    }  
}
