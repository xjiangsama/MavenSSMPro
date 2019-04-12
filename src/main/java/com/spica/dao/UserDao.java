package com.spica.dao;

import com.spica.entity.User;

public interface UserDao {
	 User findByUsername(String username);
}
