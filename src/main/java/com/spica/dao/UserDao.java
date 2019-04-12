package com.spica.dao;

import java.util.List;

import com.spica.entity.User;

public interface UserDao {
	 User findByUsername(String username);
	 List<User> findAllUsers();
	 User finUserById(int userid);
	 void insertUser(User user);
	 void updateUser(User user);
	 void deleteUserById(int userid);
}
