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
//		final String hql = "from User user order by user.id"; //��ѯ���    
//		int allRow = userDao.getAllRowCount(hql);  //�ܼ�¼��    
//		int totalPage = PageBean.countTatalPage(pageSize, allRow); //��ҳ��    
//		final int offset = PageBean.countOffset(pageSize, page); //��ǰҳ��ʼ��¼    
//		final int length = pageSize; // ÿҳ��¼��    
//		final int currentPage = PageBean.countCurrentPage(page); // ��ǰҳ    
//		List list = userDao.queryForPage(hql, offset, length); //    
//		//�ѷ�ҳ��Ϣ���浽Bean����    
//		PageBean pageBean  = new PageBean();    
//		pageBean.setPageSize(pageSize);    
//		pageBean.setCurrentPage(currentPage);    
//		pageBean.setAllRow(allRow);    
//		pageBean.setTotalPage(totalPage);    
//		pageBean.setList(list);    
//		pageBean.init();    
//		return pageBean;    
//		}    
	
	public List<User> getAllUser(int page, int pageSize)// ��ѯ����ѧ�� ��ҳ  
    {  
        List userList = this.userDao.getAllUser(page, pageSize);  
        return userList;  
    }  
  
    public int findUserSize() {// ����ѧ������  
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
