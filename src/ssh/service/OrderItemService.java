package ssh.service;

import ssh.dao.OrderItemDao;
import ssh.entries.OrderItem;

public class OrderItemService {
	private OrderItemDao orderItemDao;
	public void setOrderItemDao(OrderItemDao orderItemDao) {
		this.orderItemDao = orderItemDao;
	}
	
	public void save(OrderItem orderItem){
		orderItemDao.save(orderItem);
	}
}
