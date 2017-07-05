package ssh.dao;

import ssh.entries.OrderItem;

public class OrderItemDao extends BaseDao{
	
	public void save(OrderItem orderItem){
		getSession().save(orderItem);
	}
}
