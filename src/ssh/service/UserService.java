package ssh.service;

import java.util.List;


import ssh.dao.UserDao;
import ssh.entries.OrderTable;
import ssh.entries.User;

public class UserService {
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public List<User> getAll(){
		return userDao.getAll();
	}
	public void saveOrUpdate(User user){
		userDao.saveOrUpdate(user);
	}
	
	public boolean usernameIsValid(String username){
		return userDao.getUserByUserName(username) == null;
	}
	public boolean login(User user){
		return userDao.login(user);
	}
	
	
	
//	public PageBean queryForPage(int pageSize, int page) {    
//		final String hql = "from User user order by user.id"; //查询语句    
//		int allRow = userDao.getAllRowCount(hql);  //总记录数    
//		int totalPage = PageBean.countTatalPage(pageSize, allRow); //总页数    
//		final int offset = PageBean.countOffset(pageSize, page); //当前页开始记录    
//		final int length = pageSize; // 每页记录数    
//		final int currentPage = PageBean.countCurrentPage(page); // 当前页    
//		List list = userDao.queryForPage(hql, offset, length); //    
//		//把分页信息保存到Bean当中    
//		PageBean pageBean  = new PageBean();    
//		pageBean.setPageSize(pageSize);    
//		pageBean.setCurrentPage(currentPage);    
//		pageBean.setAllRow(allRow);    
//		pageBean.setTotalPage(totalPage);    
//		pageBean.setList(list);    
//		pageBean.init();    
//		return pageBean;    
//		}    
	
	public List<User> getAllUser(int page, int pageSize)// 查询所有学生 分页  
    {  
        List userList = this.userDao.getAllUser(page, pageSize);  
        return userList;  
    }  
  
    public int findUserSize() {// 所有学生个数  
        return this.userDao.findUserSize();  
    }
	public User get(Integer id) {
		return userDao.get(id);
	}
	public User get(String username) {
		return userDao.get(username);
	}
	public List<OrderTable> orderList(Integer id) {
		return userDao.orderList(id);
	}
	public List<User> fuzzyQuery(String username){
		return userDao.fuzzyQuery(username);
	}
	
}
