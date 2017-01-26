package com.yesee.dev.model.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yesee.dev.model.bean.UserInfo;
import com.yesee.dev.model.dao.UserInfoDao;
import com.yesee.dev.web.controller.LoginController;

@Service
@Transactional(readOnly = true)
public class UserInfoService {

	private static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);
	@Autowired
	private UserInfoDao userInfoDao;

	public boolean userCheck(String account, String password) {
		try {

			return userInfoDao.getUserList(account).get(0).getPassword().equals(password);
		}

		catch (Exception e) {
			return false;
		}
	}

	public List<UserInfo> findAll() {
		return userInfoDao.findAll();
	}

	public List<UserInfo> findById(Integer id) {
		return userInfoDao.findById(id);
	}

	@Transactional(readOnly = false)
	public void deleteUserInfo(Integer id) {
		userInfoDao.deleteUserInfo(id);
	}

	@Transactional(readOnly = false)
	public void addUserInfo(UserInfo userInfo) {
		userInfoDao.addUserInfo(userInfo);
	}

	 @Transactional(readOnly = false)
	 public void updateUserInfo(UserInfo userInfo){
	 userInfoDao.updateUserInfo(userInfo);
	 }

}
