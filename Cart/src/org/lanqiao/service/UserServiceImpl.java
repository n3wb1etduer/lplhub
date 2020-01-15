package org.lanqiao.service;

import org.lanqiao.dao.UserDao;
import org.lanqiao.dao.UserDaoImpl;
import org.lanqiao.entity.User;

public class UserServiceImpl implements UserService {

	
	private static UserDao ud = new UserDaoImpl();
	@Override
	public User query(String email) {
		
		
		return ud.selectByNameAndPwd(email);
	}

}
