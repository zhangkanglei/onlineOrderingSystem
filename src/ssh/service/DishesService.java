package ssh.service;

import java.util.List;

import ssh.dao.DishesDao;
import ssh.entries.Dishes;
import ssh.entries.User;

public class DishesService {
	private DishesDao dishesDao;
	
	public void setDishesDao(DishesDao dishesDao) {
		this.dishesDao = dishesDao;
	}
	
	public void delete(Integer id){
		dishesDao.delete(id);
	}
	
	public List<Dishes> getAll(){
		return dishesDao.getAll();
	}
	
	public void saveOrUpdate(Dishes dishes){
		dishesDao.saveOrUpdate(dishes);
		
	}

	public Dishes get(Integer id) {
		return dishesDao.get(id);
	}
	
	public Dishes getDishesById(String id){
		return dishesDao.getDishesById(id);
	}
	
	public List<Dishes> fuzzyQuery(String dishes){
		return dishesDao.fuzzyQuery(dishes);
	}
	
	public List<Dishes> getAllDishes(int page, int pageSize)// 查询所有菜品 分页  
    {  
        return dishesDao.getAllDishes(page, pageSize);  
          
    }  
  
    public int findDishesSize() {// 所有菜品个数  
        return this.dishesDao.findDishesSize();  
    }  
}
