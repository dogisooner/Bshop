package com.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dao.BookDao;
import com.dao.OrderDao;
import com.dao.UserDao;
import com.model.Book;
import com.model.Shoporder;
import com.model.User;


@Controller@Scope("prototype")
public class OrderAction {
	
	@Resource UserDao userDao;
	@Resource BookDao bookDao;
	@Resource OrderDao orderDao;
	
	private Shoporder order;
	private User user;
	private Book book;
	private List<Shoporder> orderList;
	
	public Shoporder getOrder() {
		return order;
	}
	public void setOrder(Shoporder order) {
		this.order = order;
	}
	public List<Shoporder> getOrderList() {
		return orderList;
	}
	public void setOrderList(List<Shoporder> orderList) {
		this.orderList = orderList;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	//��Ӷ���
	public String addOrder() throws Exception{
		user=userDao.GetUserById(user.getId());//��ҳ��id����
		book=bookDao.GetBookById(book.getId());
		Shoporder ord=new Shoporder();
	    ord.setBook(book);
	    ord.setUser(user);
	    ord.setSaler(book.getOwner());
	    ord.setPrice(book.getCredit());
	    orderDao.addOrder(ord);
	    return "add_order";
	}
	//��ʾ�û����еĶ���
	public String showOrder(){
		System.out.println(user.getId());
		user=userDao.GetUserById(user.getId());//��ҳ��id����
		System.out.println(user.getUsername());
		orderList=orderDao.QueryOrderInfo(user, null);
		return "show_view";
	}
	/*//��ʾĳһ����������
	public String showDetail(){
		order=orderDao.GetOrderById(order.getId());
		return "detail_view";
	}*/
	//���鼮���Ʋ�ѯĳһ���������鼮�����Բ���������
	public String queryOrders()throws Exception{
		user=userDao.GetUserById(user.getId());//��ҳ��id����
		orderList=orderDao.QueryOrderInfo(user,book);
		return "show_view";
	}

}
