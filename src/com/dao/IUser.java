package com.dao;

import java.util.ArrayList;

import com.model.User;

public interface IUser {
	//增
	public void addUser(User user);
	//改
	public void updateUser(User user);
	//删
	public void deleteUser(Integer userid);
	//查全表
	public ArrayList<User> QueryAllUser();
	//通过主键查
	public User GetUserById(Integer userid);
	//条件查找
	public ArrayList<User> QueryUser(String username);
}
