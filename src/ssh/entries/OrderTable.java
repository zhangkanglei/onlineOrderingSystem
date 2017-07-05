package ssh.entries;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class OrderTable {
	/**
	 * 
	 */
	private Integer id;
	private Double allTotal;
	private Date dateNow;
	private User userId;
	private String userName;
	private String tableNum;
	private String orderStatus;
	private Integer uid;
	private Set<OrderItem> orderItems=new HashSet<OrderItem>();
	public OrderTable() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Double getAllTotal() {
		return allTotal;
	}
	public void setAllTotal(Double allTotal) {
		this.allTotal = allTotal;
	}
	public Date getDateNow() {
		return dateNow;
	}
	public void setDateNow(Date dateNow) {
		this.dateNow = dateNow;
	}
	
	public User getUserId() {
		return userId;
	}
	public void setUserId(User userId) {
		this.userId = userId;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getTableNum() {
		return tableNum;
	}
	public void setTableNum(String tableNum) {
		this.tableNum = tableNum;
	}
	
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Set<OrderItem> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(Set<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}
}
