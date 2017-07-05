package ssh.dao;

import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class UserPageDao extends HibernateDaoSupport{
	Session session =getSession();
}
