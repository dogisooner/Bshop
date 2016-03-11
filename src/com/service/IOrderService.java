package com.service;

import java.util.ArrayList;

import com.model.Book;
import com.model.Shoporder;
import com.model.User;

public interface IOrderService {
	public void register(Shoporder order);
	//�޸Ķ�����Ϣ
	public void update(Shoporder order);
	//��ʾ�ҵĶ����б�
	public ArrayList<Shoporder> showMyOrder(User user,Book book);
	//��ʾ������Ϣ����
	public Shoporder showOrderInfo(Integer orderid);
	//����Ҫɾ�����鼮
	public Shoporder getOrderById(Integer orderid);
	public void delete(Shoporder order);
}
