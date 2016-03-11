package com.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.OrderDao;
import com.model.Book;
import com.model.Shoporder;
import com.model.User;

@Service@Transactional
public class OrderServiceImpl{
	@Resource SessionFactory factory;
	@Resource OrderDao orderDao;
	private String errMessage;
	
	public String getErrMessage() {
		return errMessage;
	}
	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}
	//添加订单
	public void register(Shoporder order){
		orderDao.addOrder(order);
	}
	//修改订单信息
	public void update(Shoporder order){
		orderDao.updateOrder(order);
	}
	//显示我的订单列表
	public ArrayList<Shoporder> showMyOrder(User user,Book book){
		ArrayList<Shoporder> orderList=orderDao.QueryOrderInfo(user, book);
		return orderList;
	}
	//显示订单信息详情
	public Shoporder showOrderInfo(Integer orderid){
		Shoporder order=orderDao.GetOrderById(orderid);
		return order;
	}
	//查找要删除的书籍
	public Shoporder getOrderById(Integer orderid){
		Shoporder order=orderDao.GetOrderById(orderid);
		return order;
	}
	public void delete(Shoporder order){
		orderDao.deleteOrder(order.getId());
	}

}
