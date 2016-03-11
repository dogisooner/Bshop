package com.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.Book;
import com.model.Shoporder;
import com.model.User;

@Service@Transactional
public class OrderDao {
	@Resource SessionFactory factory;
	// 增
	public void addOrder(Shoporder shoporder) {
		Session s = factory.getCurrentSession();
		s.save(shoporder);
	}
	// 改
	public void updateOrder(Shoporder shoporder) {
		Session s = factory.getCurrentSession();
		s.update(shoporder);
	}
	// 删
	public void deleteOrder(Integer orderid) {
		Session s = factory.getCurrentSession();
		Object order = s.load(Shoporder.class, orderid);
		s.delete(order);
	}
	// 查全表
	@SuppressWarnings("unchecked")
	public ArrayList<Shoporder> QueryAllFood() {
		Session s = factory.getCurrentSession();
		String hql = "From Shoporder";
		Query q = s.createQuery(hql);
		List orderList = q.list();
		return (ArrayList<Shoporder>) orderList;
	}
	// 通过主键查
	public Shoporder GetOrderById(Integer orderid) { // 通过主键查，只能得到一条记录
		Session s = factory.getCurrentSession();
		Shoporder shoporder =(Shoporder)s.get(Shoporder.class, orderid);// 查出是Object类的，需要强制转换为Book类的
		return shoporder;
	}
	// 条件查找
	@SuppressWarnings("unchecked")
	public ArrayList<Shoporder> QueryOrderInfo(User user,Book book) {
		Session s = factory.getCurrentSession();
		String hql = "From Shoporder shoporder where 1=1";// 最基本的
		if (user!=null&&user.getId()!=0)
			hql = hql + " and shoporder.user.id like '%" + user.getId()+ "%'";
		if(book!=null&&book.getBookname()!=null)
			hql=hql+" and shoporder.book.bookname like '%"+book.getBookname()+"%'";
		Query q = s.createQuery(hql);
		List orderList = q.list();
		return (ArrayList<Shoporder>) orderList;
	}

}
