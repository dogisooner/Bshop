package com.dao;

import java.util.ArrayList;

import com.model.Book;
import com.model.Shoporder;
import com.model.User;

public interface IOrder {
	public void addOrder(Shoporder shoporder);
	// 改
	public void updateOrder(Shoporder shoporder);
	// 删
	public void deleteOrder(Integer orderid);
	// 查全表
	public ArrayList<Shoporder> QueryAllFood();
	// 通过主键查
	public Shoporder GetOrderById(Integer orderid);
	// 条件查找
	public ArrayList<Shoporder> QueryOrderInfo(User user,Book book);

}
