package com.dao;

import java.util.ArrayList;

import com.model.Book;
import com.model.Shoporder;
import com.model.User;

public interface IOrder {
	public void addOrder(Shoporder shoporder);
	// ��
	public void updateOrder(Shoporder shoporder);
	// ɾ
	public void deleteOrder(Integer orderid);
	// ��ȫ��
	public ArrayList<Shoporder> QueryAllFood();
	// ͨ��������
	public Shoporder GetOrderById(Integer orderid);
	// ��������
	public ArrayList<Shoporder> QueryOrderInfo(User user,Book book);

}
