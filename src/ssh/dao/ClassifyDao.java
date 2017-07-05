package ssh.dao;

import java.util.List;

import ssh.entries.Classify;

public class ClassifyDao extends BaseDao{
	public List<Classify> getAll(){
		String hql="from Classify";
		return getSession().createQuery(hql).list();
	}
}
