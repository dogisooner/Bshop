package com.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDao;
import com.model.User;

@Service@Transactional
public class UserServiceImpl{
	@Resource SessionFactory factory;
	@Resource UserDao userDao;
	private String errMessage;
	
	public String getErrMessage() {
		return errMessage;
	}
	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}
	//ע��
	public void register(User user){
		userDao.addUser(user);
	}
	//��½
	@Transactional(propagation=Propagation.NOT_SUPPORTED) 
	public User CheckLogin(User user){
		ArrayList<User> userList=userDao.QueryUser(user.getUsername());
		if(userList.size()==0) { 
			this.errMessage = " �˺Ų����� ";
			System.out.print(this.errMessage);
			return null;
		} else{
			User db_user=userList.get(0);
			if( !db_user.getPassword().equals(user.getPassword())) {
			this.errMessage = " ���벻��ȷ! ";
			System.out.print(this.errMessage);
			return null;
			}
			else{
				return db_user;
			}
		}
		
	}
	//�޸��û���Ϣ
	public void update(User user){
		userDao.updateUser(user);
	}
	//��ʾ�û���Ϣ
	public User showUserInfo(Integer userid){
		User user=userDao.GetUserById(userid);
		return user;
	}
	

}
