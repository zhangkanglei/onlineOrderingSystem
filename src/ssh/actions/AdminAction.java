package ssh.actions;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import ssh.entries.Admin;
import ssh.entries.PageShow;
import ssh.entries.User;
import ssh.service.AdminService;

public class AdminAction extends ActionSupport implements SessionAware,RequestAware,Preparable,ModelDriven<Admin>{
	
	
	private AdminService adminService;
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	
	public void prepareSave(){
		model = new Admin();
	}
	
	private String userName;
	private String password;
	private Integer id;
	public void setId(Integer id) {
		this.id = id;
	}
	
	

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
    
	public String input(){
		return INPUT;
	}
	public void prepareInput(){
		if(id!=null){
			model=adminService.get(id);
		}
	}
	
	
	public String save(){
		
		adminService.saveOrUpdate(model);
		return SUCCESS;
	}
	
	public String list(){
		request.put("admins", adminService.getAll());
		return "list";
	}
	
	public String login(){
		Admin admin=new Admin();
		admin.setUserName(userName);
		admin.setPassword(password);
		if(adminService.login(admin)){
			session.put("admin", admin);
			return "login-success";
		}else{
//			try {
//				response.getWriter().write("alert(用户名或者密码错误)");
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
			return "login-fail";
		}
	}
	
	public String  logout(){
		Map session =ActionContext.getContext().getSession();
		session.remove("admin");
		return "existSuccess";
	}
	
	private HttpServletResponse response;
	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}
	
	
	private Admin model;
	@Override
	public Admin getModel() {
		return model;
	}

	@Override
	public void prepare() throws Exception {
	}
	
	
	private Map<String, Object> session;
	
	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session=arg0;
	}

	private Map<String, Object> request;
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request=arg0;
	}
	
	

}
