package com.action;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.Book;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.service.BookServiceImpl;
import com.service.UserServiceImpl;

@Service@Transactional
@Controller@Scope("prototype")
public class UserAction{
	@Resource UserServiceImpl userService;
	@Resource BookServiceImpl bookService;
	
	private User user;
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	private ArrayList<Book> bookList;
	
	public ArrayList<Book> getBookList() {
		return bookList;
	}

	public void setBookList(ArrayList<Book> bookList) {
		this.bookList = bookList;
	}
	ActionContext actionContext=ActionContext.getContext();
	Map session=actionContext.getSession();
	/*private Map<String,Object> session;
	private String prePage;
    
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}*/

	/*public String getPrePage() {
		return prePage;
	}

	public void setPrePage(String prePage) {
		this.prePage = prePage;
	}*/
    //注册
	@SuppressWarnings("unchecked")
	public String register() throws Exception{
		userService.register(user);
		session.put("user", user);
		return "su_reg";
	}
	//登陆
	@SuppressWarnings("unchecked")
	public String login(){
		User db_user=userService.CheckLogin(user);
		if(db_user==null){
			return "input";
		}
		else{
			session.put("user",db_user);
			user=(User)session.get("user");
			bookList=bookService.queryAllBook();
			return "index";	
		}		
	}	
	//显示用户信息
	public String showUserInfo(){
		user=(User) session.get("user");
		bookList=bookService.queryAllBook();
		return "show_view";
	}
	//显示要修改的信息
	public String showEdit(){
		bookList=bookService.queryAllBook();
		user=(User) session.get("user");
		return "show_edit";
	}
	//修改用户信息
	public String updateUser(){
		bookList=bookService.queryAllBook();
		userService.update(user);
		return "show_view";
	}
	public String backIndex(){
		user=(User) session.get("user");
		bookList=bookService.queryAllBook();
		return "index";
	}


}
