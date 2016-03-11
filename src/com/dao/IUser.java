package com.dao;

import java.util.ArrayList;

import com.model.User;

public interface IUser {
	//��
	public void addUser(User user);
	//��
	public void updateUser(User user);
	//ɾ
	public void deleteUser(Integer userid);
	//��ȫ��
	public ArrayList<User> QueryAllUser();
	//ͨ��������
	public User GetUserById(Integer userid);
	//��������
	public ArrayList<User> QueryUser(String username);
}
