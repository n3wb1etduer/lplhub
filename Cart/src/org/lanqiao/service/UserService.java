package org.lanqiao.service;

import org.lanqiao.entity.User;



public interface UserService {
	
	User query(String email);
}
