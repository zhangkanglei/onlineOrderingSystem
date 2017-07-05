package ssh.service;

import java.util.List;

import ssh.dao.OrderTableDao;
import ssh.entries.Dishes;
import ssh.entries.OrderTable;
import ssh.entries.User;

public class OrderTableService {
	private OrderTableDao orderTableDao;
	public void setOrderTableDao(OrderTableDao orderTableDao) {
		this.orderTableDao = orderTableDao;
	}
	public void save(OrderTable orderTable){
		orderTableDao.save(orderTable);
	}
	
	public List<OrderTable> getAll(){
		return orderTableDao.getAll();
	}
	
	public OrderTable getOrderTable(Integer id){
		return orderTableDao.getOrderTable(id);
	}
	public OrderTable get(Integer id) {
		return orderTableDao.get(id);
	}
	public void update(Integer id) {
		orderTableDao.update(id);
	}
	public List<OrderTable> getAllUser(int page, int pageSize)// 查询所有学生 分页  
    {  
        List userList = this.orderTableDao.getAllUser(page, pageSize);  
        return userList;  
    }  
  
    public int findUserSize() {// 所有学生个数  
        return this.orderTableDao.findUserSize();  
    }
	public List<OrderTable> fuzzyQuery(String userName){
		return orderTableDao.fuzzyQuery(userName);
	}
}
