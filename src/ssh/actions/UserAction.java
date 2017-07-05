package ssh.actions;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.jdbc.object.UpdatableSqlQuery;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import ssh.entries.PageShow;
import ssh.entries.User;
import ssh.service.UserService;

public class UserAction extends ActionSupport implements RequestAware,ModelDriven<User>,Preparable,SessionAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public String email;
	public void setEmail(String email) {
		this.email = email;
	}
	public String phone;
	public void setPhone(String phone) {
		this.phone = phone;
	}
	private Integer id;
	public void setId(Integer id) {
		this.id = id;
	}
	
	private InputStream inputStream;

	public InputStream getInputStream() {
		return inputStream;
	}
	
	public String validateUsername() throws UnsupportedEncodingException {
		if(userService.usernameIsValid(username)){
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8")); 
		}else{
			inputStream = new ByteArrayInputStream("0".getBytes("UTF-8")); 
		}
		
		return "ajax-success";
	}
	
	public String list(){
		request.put("users",userService.getAll());
		return "list";
	}
	
	public String orderList(){
		session.put("userOrders", userService.orderList(id));
		System.out.println(session.size());
		return "orderList";
	}
	
	private Map<String, Object> request;
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request=arg0;
	}
	
	public void prepareSave1(){
		model=new User();
	}
	
	public String save1(){
		userService.saveOrUpdate(model);
		session.put("user", model);
		return "updateSuccess";
	}
	
	public String save(){
		userService.saveOrUpdate(model);
		return "registerSuccess";
	}
	
	public String update(){
		return "update";
	}
	
	public void prepareUpdate(){
		if(id!=null){
			model=userService.get(id);
		}
	}
	public void prepareSave(){
		model = new User();
	}
	

	@Override
	public void prepare() throws Exception {
		
	}
	private User model;
	@Override
	public User getModel() {
		
		return model;
	}
	
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public void prepareLogin(){
		model=userService.get(username);
	}
	
	public String travel(){
		model=new User();
		model.setUsername("�ο�");
		session.put("user", model);
		return "travel";
	}
	
	public String login(){
		User user = new User();
		System.out.println(user.getId());
		user.setId(user.getId());
		user.setUsername(username);
		user.setPassword(password);
		if(userService.login(user)){
			session.put("user", model);
			return "loginSuccess";
		}else{
			return ERROR;
		}
	}
	
	public String fuzzyQuery(){
		if(username==null||username.length()==0){
			session.put("users", userService.getAll());
			return "fuzzy";
		}
		else{
			session.put("users", userService.fuzzyQuery(username));
			return "fuzzy";
		}
		
	}
	
	public String logout(){
		Map session =ActionContext.getContext().getSession();
		session.remove("user");
		session.remove("carList");
		return "existSuccess";
	}
	
	private Map<String, Object> session;
	
	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session=arg0;
	}
	
//	private PageBean pageBean; //��װ�˷�ҳ��Ϣ���������ݵ�pageBean    
//	private List<User> listUser;//���ڴ���pageBean���б���װ��User��Ϣ    
//	private int page = 1; //��ʾ����ҳ�з��صĵ�ǰҳ��ֵ  Ĭ��Ϊ1 ��ʾĬ����ʾ��һҳ����    
//	public int getPage() {    
//	return page;    
//	}    
//	public void setPage(int page) {    
//	this.page = page;    
//	}    
//	public List<User> getListUser() {    
//	return listUser;    
//	}    
//	public void setListUser(List<User> listUser) {    
//	this.listUser = listUser;    
//	}    
//	public PageBean getPageBean() {    
//	return pageBean;    
//	}    
//	public void setPageBean(PageBean pageBean) {    
//	this.pageBean = pageBean;    
//	}    
//	
//	public String execute() throws Exception{    
//	this.pageBean = userService.queryForPage(5, page);//��ȡ��װ�˷�ҳ��Ϣ�����ݵ�pageBean    
//	this.listUser = this.pageBean.getList(); //��ȡ����    
//	return SUCCESS;    
//	} 
	
	    private int pageNow = 1;// ��̬�ı� ҳ��ȡ��  
	    private int pageSize = 5;// �̶�����  
	  
	    public String getAllUser() {  
	        List users = this.userService.getAllUser(pageNow, pageSize);  
	        if (users.size() > 0) {// ѧ���б�  
	            session.put("users", users);// ������session  
	            PageShow page = new PageShow(pageNow, userService.findUserSize(), pageSize);// ʵ������ҳ����  
	            request.put("page", page);// ���浽request  
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
    
    
	
}
