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
	//添加订单
	public String addOrder() throws Exception{
		user=userDao.GetUserById(user.getId());//首页穿id进来
		book=bookDao.GetBookById(book.getId());
		Shoporder ord=new Shoporder();
	    ord.setBook(book);
	    ord.setUser(user);
	    ord.setSaler(book.getOwner());
	    ord.setPrice(book.getCredit());
	    orderDao.addOrder(ord);
	    return "add_order";
	}
	//显示用户所有的订单
	public String showOrder(){
		System.out.println(user.getId());
		user=userDao.GetUserById(user.getId());//首页穿id进来
		System.out.println(user.getUsername());
		orderList=orderDao.QueryOrderInfo(user, null);
		return "show_view";
	}
	/*//显示某一订单的详情
	public String showDetail(){
		order=orderDao.GetOrderById(order.getId());
		return "detail_view";
	}*/
	//以书籍名称查询某一订单。将书籍名称以参数传进来
	public String queryOrders()throws Exception{
		user=userDao.GetUserById(user.getId());//首页穿id进来
		orderList=orderDao.QueryOrderInfo(user,book);
		return "show_view";
	}

}
