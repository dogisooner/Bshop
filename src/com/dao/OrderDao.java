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
	// ��
	public void addOrder(Shoporder shoporder) {
		Session s = factory.getCurrentSession();
		s.save(shoporder);
	}
	// ��
	public void updateOrder(Shoporder shoporder) {
		Session s = factory.getCurrentSession();
		s.update(shoporder);
	}
	// ɾ
	public void deleteOrder(Integer orderid) {
		Session s = factory.getCurrentSession();
		Object order = s.load(Shoporder.class, orderid);
		s.delete(order);
	}
	// ��ȫ��
	@SuppressWarnings("unchecked")
	public ArrayList<Shoporder> QueryAllFood() {
		Session s = factory.getCurrentSession();
		String hql = "From Shoporder";
		Query q = s.createQuery(hql);
		List orderList = q.list();
		return (ArrayList<Shoporder>) orderList;
	}
	// ͨ��������
	public Shoporder GetOrderById(Integer orderid) { // ͨ�������飬ֻ�ܵõ�һ����¼
		Session s = factory.getCurrentSession();
		Shoporder shoporder =(Shoporder)s.get(Shoporder.class, orderid);// �����Object��ģ���Ҫǿ��ת��ΪBook���
		return shoporder;
	}
	// ��������
	@SuppressWarnings("unchecked")
	public ArrayList<Shoporder> QueryOrderInfo(User user,Book book) {
		Session s = factory.getCurrentSession();
		String hql = "From Shoporder shoporder where 1=1";// �������
		if (user!=null&&user.getId()!=0)
			hql = hql + " and shoporder.user.id like '%" + user.getId()+ "%'";
		if(book!=null&&book.getBookname()!=null)
			hql=hql+" and shoporder.book.bookname like '%"+book.getBookname()+"%'";
		Query q = s.createQuery(hql);
		List orderList = q.list();
		return (ArrayList<Shoporder>) orderList;
	}

}
