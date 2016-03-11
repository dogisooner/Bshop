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
	//增
	public void addUser(User user){
		Session s=factory.getCurrentSession();
		s.save(user);
	}
	//改
	public void updateUser(User user){
		Session s=factory.getCurrentSession();
		s.update(user);
	}
	//删
	public void deleteUser(Integer userid){
		Session s=factory.getCurrentSession();
		Object user=s.load(User.class, userid);
		s.delete(user);
	}
	//查全表
	@SuppressWarnings("unchecked")
	public ArrayList<User> QueryAllUser(){
		Session s=factory.getCurrentSession();
		String hql="From User";
		Query q=s.createQuery(hql);
		List userList=q.list();
		return (ArrayList<User>)userList;
	}
	//通过主键查
	public User GetUserById(Integer userid) {  //通过主键查，只能得到一条记录
        Session s = factory.getCurrentSession();
        User user = (User)s.get(User.class,userid);//查出是Object类的
        return user;
    }
	//条件查找
	@SuppressWarnings("unchecked")
	public ArrayList<User> QueryUser(String username) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From User user where 1=1";//最基本的
    	if(!username.equals("")) hql = hql + " and user.username like '%" + username + "%'";
    	Query q = s.createQuery(hql);
    	List userList = q.list();
    	return (ArrayList<User>) userList;
    }
}
