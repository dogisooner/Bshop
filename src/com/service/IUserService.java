package com.service;

import com.model.User;

public interface IUserService {
	public void register(User user);
	//登陆
	public User CheckLogin(User user);
	//修改用户信息
	public void update(User user);
	//显示用户信息
	public User showUserInfo(Integer userid);
	

}
