package org.lanqiao.dao;

import org.lanqiao.entity.User;

public interface UserDao {

	User selectByNameAndPwd(String email);
	
}
