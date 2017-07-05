package ssh.actions;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.metamodel.source.binder.Orderable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.omg.CORBA.ARG_OUT;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import ssh.entries.OrderItem;
import ssh.entries.OrderTable;
import ssh.entries.PageShow;
import ssh.entries.User;
import ssh.service.OrderItemService;
import ssh.service.OrderTableService;

public class OrderItemAction extends ActionSupport implements  RequestAware,Preparable,ModelDriven<OrderItem>,SessionAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private OrderItemService orderItemService;
	public void setOrderItemService(OrderItemService orderItemService) {
		this.orderItemService = orderItemService;
	}
	
	private OrderTableService orderTableService;
	public void setOrderTableService(OrderTableService orderTableService) {
		this.orderTableService = orderTableService;
	}
	
	
	
	public void prepareSave(){
		model=new OrderItem();
	}
	public String save() throws JSONException{
		HttpServletRequest request = ServletActionContext.getRequest();
		String str = request.getParameter("key");
		String  str1 = str.substring(str.indexOf("["));
		String str2=str.substring(0,str.indexOf("["));
		
		
		OrderTable orderTable=new OrderTable();
		
		orderTable.setTableNum(str2);
		orderTable.setDateNow(new Date());
		User user= (User) session.get("user");
		orderTable.setUserName(user.getUsername());
		orderTable.setUid(user.getId());
		Double allTotal=0.0;
		
			JSONArray jsonarray = new JSONArray(str1); 
	        for(int i=0;i<jsonarray.length();i++){  
	        	OrderItem orderItem=new OrderItem();
	            String dishesName = jsonarray.getJSONObject(i).getString("dishes");
	            int num = jsonarray.getJSONObject(i).getInt("num");
	            double price=jsonarray.getJSONObject(i).getDouble("price");
	            double total=num*price;
	            orderItem.setDishesName(dishesName);
	            orderItem.setNum(num);
	            orderItem.setPrice(price);
	            orderItem.setTotal(total);
	            allTotal+=total;
	            orderTable.getOrderItems().add(orderItem);
	            orderItemService.save(orderItem);
	            
	        }  
	
		orderTable.setOrderStatus("未打印");
		orderTable.setAllTotal(allTotal);
		orderTableService.save(orderTable);
		return "save-success";
	}
	
	public String update(){
		orderTableService.update(id);
		return "update";
	}
	
//	public String list(){
//		session.put("orders", orderTableService.getAll());
//		return "list";
//	}
	
	private Integer id;
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String orderItemList(){
		session.put("orderItems", orderTableService.getOrderTable(id).getOrderItems());
		return "orderItemList";
	}
	
	private Map<String, Object> session;
	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session=arg0;
	}
	
	private OrderItem model;
	@Override
	public OrderItem getModel() {
		return model;
	}

	@Override
	public void prepare() throws Exception {
		
	}
	
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Session getSession(){
		return this.sessionFactory.getCurrentSession();
	}
//	 public static void main(String[] args) throws Exception{  
//		 OrderItemAction orderItemAction=new OrderItemAction();
//		 OrderTable orderTable=new OrderTable();
//		 orderTable.setAllTotal(88.0);
//		 OrderItem orderItem=new OrderItem();
//		 orderItem.setDishesName("sndflk");
//		 orderTable.getOrderItems().add(orderItem);
//		 orderItemAction.getSession().save(orderItem);
//		 orderItemAction.getSession().save(orderTable);
//	 }
//         		
	 
	private String userName;
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String fuzzyQuery(){
		if(userName==null||userName.length()==0){
			session.put("orders", orderTableService.getAll());
			return "fuzzy";
		}
		else{
			session.put("orders", orderTableService.fuzzyQuery(userName));
			return "fuzzy";
		}
		
	}
	
	private int pageNow = 1;// 动态改变 页面取得  
    private int pageSize = 10;// 固定不变  
  
    public String list() {  
        List users = this.orderTableService.getAllUser(pageNow, pageSize);  
        if (users.size() > 0) {// 学生列表  
            session.put("orders", users);// 保存在session  
            PageShow page = new PageShow(pageNow, orderTableService.findUserSize(), pageSize);// 实例化分页对象  
            request.put("page", page);// 保存到request  
            return "list";  
        }  
        return "error";  
    }  
  
      
  
  
  
    public int getPageSize() {  
        return pageSize;  
    }  
  
    public void setPageSize(int pageSize) {  
        this.pageSize = pageSize;  
    }  
  
    public int getPageNow() {  
        return pageNow;  
    }  
  
    public void setPageNow(int pageNow) {  
        this.pageNow = pageNow;  
    }


    private  Map<String,Object> request;
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request=arg0;
	}           
	     
}
