package yesee.dev.model.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import yesee.dev.model.bean.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.Transactional;

@Repository
// @Transactional(readOnly = true)

public class UserInfoDao {

	private static final Logger LOGGER = LoggerFactory.getLogger(UserInfoDao.class);

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return this.sessionFactory;
	}

	public List<UserInfo> getUserList(String account) {
		Query query = getSessionFactory().getCurrentSession().createQuery("from UserInfo a where a.account = ?");
		query.setParameter(0, account);
		@SuppressWarnings("unchecked")
		List<UserInfo> result = query.list();
		return result;
	}

	public List<UserInfo> findAll() {
		Query query = getSessionFactory().getCurrentSession().createQuery("from UserInfo");
		@SuppressWarnings("unchecked")
		List<UserInfo> result = query.list();
		return result;
	}

	public List<UserInfo> findById(Integer id) {
		Query query = getSessionFactory().getCurrentSession().createQuery("from UserInfo a where a.id = ?");
		query.setParameter(0, id);
		@SuppressWarnings("unchecked")
		List<UserInfo> result = query.list();
		return result;
	}

	// @Transactional(readOnly = false)
	public void deleteUserInfo(Integer id) {
		Session session = getSessionFactory().getCurrentSession();
		Query query = session.createQuery("delete from UserInfo a where (a.id = ?)");
		query.setParameter(0, id);
		query.executeUpdate();
	}

	// @Transactional(readOnly = false)
	public void addUserInfo(UserInfo userInfo) {
		Session session = getSessionFactory().getCurrentSession();
		session.saveOrUpdate(userInfo);
		// session.persist(userInfo);
	}

	// @Transactional(readOnly = false)
	public void updateUserInfo(UserInfo userInfo) {
		Session session = getSessionFactory().getCurrentSession();
		String hql = "update UserInfo a set a.username = ? , a.country = ? , a.phone = ? , a.dateTime = ? where a.id = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, userInfo.getUsername());
		query.setParameter(1, userInfo.getCountry());
		query.setParameter(2, userInfo.getPhone());
		query.setParameter(3, userInfo.getDateTime());
		query.setParameter(4, userInfo.getId());
		query.executeUpdate();
	}

}
