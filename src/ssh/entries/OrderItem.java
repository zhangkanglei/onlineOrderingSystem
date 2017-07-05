package ssh.entries;


public class OrderItem {
	/**
	 * 
	 */
	
	private Integer id;
	private Integer num;
	private Double total;
	private Dishes dishes;
	private OrderTable orderId;
	private String dishesName;
	private Double price;
	
	
	public String getDishesName() {
		return dishesName;
	}


	public void setDishesName(String dishesName) {
		this.dishesName = dishesName;
	}


	public OrderTable getOrderId() {
		return orderId;
	}


	public void setOrderId(OrderTable orderId) {
		this.orderId = orderId;
	}


	public OrderItem() {
		super();
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public Integer getNum() {
		return num;
	}


	public void setNum(Integer num) {
		this.num = num;
	}


	


	public Double getTotal() {
		return total;
	}


	public void setTotal(Double total) {
		this.total = total;
	}


	public Double getPrice() {
		return price;
	}


	public void setPrice(Double price) {
		this.price = price;
	}


	public Dishes getDishes() {
		return dishes;
	}


	public void setDishes(Dishes dishes) {
		this.dishes = dishes;
	}


	@Override
	public String toString() {
		return "OrderItem [id=" + id + ", num=" + num + ", total=" + total + ", dishes=" + dishes + ", orderId="
				+ orderId + "]";
	}


	
	
	
}
