package com.dao;

import java.util.ArrayList;
import java.util.List;

import com.model.User;

import org.hibernate.Session;
import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service@Transactional
public class UserDao {
	@Resource SessionFactory factory;
	//��
	public void addUser(User user){
		Session s=factory.getCurrentSession();
		s.save(user);
	}
	//��
	public void updateUser(User user){
		Session s=factory.getCurrentSession();
		s.update(user);
	}
	//ɾ
	public void deleteUser(Integer userid){
		Session s=factory.getCurrentSession();
		Object user=s.load(User.class, userid);
		s.delete(user);
	}
	//��ȫ��
	@SuppressWarnings("unchecked")
	public ArrayList<User> QueryAllUser(){
		Session s=factory.getCurrentSession();
		String hql="From User";
		Query q=s.createQuery(hql);
		List userList=q.list();
		return (ArrayList<User>)userList;
	}
	//ͨ��������
	public User GetUserById(Integer userid) {  //ͨ�������飬ֻ�ܵõ�һ����¼
        Session s = factory.getCurrentSession();
        User user = (User)s.get(User.class,userid);//�����Object���
        return user;
    }
	//��������
	@SuppressWarnings("unchecked")
	public ArrayList<User> QueryUser(String username) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From User user where 1=1";//�������
    	if(!username.equals("")) hql = hql + " and user.username like '%" + username + "%'";
    	Query q = s.createQuery(hql);
    	List userList = q.list();
    	return (ArrayList<User>) userList;
    }
}
