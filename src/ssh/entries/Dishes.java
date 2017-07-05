package ssh.entries;

import java.io.Serializable;
import java.math.BigDecimal;

public class Dishes implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String dishes;
	private BigDecimal price;
	private String  synopsis;
	private Integer sum;
	private String imagePath;
	private Classify classify;
	private String did;
	private BigDecimal total;
	
	public Dishes() {
		super();
	}
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getDishes() {
		return dishes;
	}
	
	public void setDishes(String dishes) {
		this.dishes = dishes;
	}
	
	public BigDecimal getPrice() {
		return price;
	}
	
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	
	public String getSynopsis() {
		return synopsis;
	}
	
	
	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}
	
	public Integer getSum() {
		return sum;
	}
	
	public void setSum(Integer sum) {
		this.sum = sum;
	}
	
	public String getImagePath() {
		return imagePath;
	}
	
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	
	public Classify getClassify() {
		return classify;
	}
	
	public void setClassify(Classify classify) {
		this.classify = classify;
	}
	
	public String getDid() {
		return did;
	}
	
	public void setDid(String did) {
		this.did = did;
	}
	
	public BigDecimal getTotal() {
		return total;
	}
	
	public void setTotal(BigDecimal total) {
		this.total = total;
	}
	
	
	@Override
	public boolean equals(Object obj) {
		return this.id.equals (((Dishes)obj).getId())?true:false;
	}

	@Override
	public String toString() {
		return "Dishes [id=" + id + ", dishes=" + dishes + ", price=" + price + ", synopsis=" + synopsis + ", sum="
				+ sum + ", imagePath=" + imagePath + ", classify=" + classify + ", did=" + did + ", total=" + total
				+ "]";
	}
	
	
}
