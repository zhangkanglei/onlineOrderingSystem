package ssh.service;

import java.util.List;

import ssh.dao.ClassifyDao;
import ssh.entries.Classify;

public class ClassifyService {
	
	private ClassifyDao classifyDao;
	
	public void setClassifyDao(ClassifyDao classifyDao) {
		this.classifyDao = classifyDao;
	}
	
	public List<Classify> getAll(){
		return classifyDao.getAll();
	}
}
