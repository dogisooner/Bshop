package com.service;

import com.model.User;

public interface IUserService {
	public void register(User user);
	//��½
	public User CheckLogin(User user);
	//�޸��û���Ϣ
	public void update(User user);
	//��ʾ�û���Ϣ
	public User showUserInfo(Integer userid);
	

}
