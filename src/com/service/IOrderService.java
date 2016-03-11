package com.service;

import java.util.ArrayList;

import com.model.Book;
import com.model.Shoporder;
import com.model.User;

public interface IOrderService {
	public void register(Shoporder order);
	//修改订单信息
	public void update(Shoporder order);
	//显示我的订单列表
	public ArrayList<Shoporder> showMyOrder(User user,Book book);
	//显示订单信息详情
	public Shoporder showOrderInfo(Integer orderid);
	//查找要删除的书籍
	public Shoporder getOrderById(Integer orderid);
	public void delete(Shoporder order);
}
