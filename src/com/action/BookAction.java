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

@Service@Transactional
@Controller@Scope("prototype")
public class BookAction{
	String keyName;
	
	public String getKeyName() {
		return keyName;
	}
	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}
	@Resource BookServiceImpl bookService;
	private Book book;
	
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
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
    //书籍的上架
	@SuppressWarnings("unchecked")
	public String bRegister() throws Exception{		
		/*String ownerName=((User)session.get("user")).getUsername();
		book.setOwner(ownerName);*/
		bookService.register(book);
		session.put("book", book);
		return "su_reg";
	}
	//owner登陆后，书籍上架时辅助传owner的值
	public String register(){
		return "book_register";
	}
	//显示我的图书列表
	@SuppressWarnings("unchecked")
	public String showMyBook(){
		//String ownerName=((User)session.get("user")).getUsername();
		bookList=bookService.showMyBooks(book.getOwner());
		//session.put("list", bookList);
		return "show_MyBook";
	}
	//显示书籍详细信息
	public String showBookInfo(){
        book=bookService.showBookInfo(book.getId());
		return "show_bookInfo";
	}
	//显示要修改的书籍信息
	public String showBookEdit(){
		book=bookService.showBookInfo(book.getId());
		return "show_edit";
	}
	//修改书籍详细信息
	public String updateBook(){
		bookService.update(book);
		return "show_bookInfo";
	}
	//书籍的下架（删除）
	@SuppressWarnings("unused")
	public String deleteBook(){
		User user=(User)session.get("user");
		book=bookService.getBookById(book.getId());
		bookService.delete(book);
		return "delete_book";
	}
	/*查询book*/
    public String queryBooks() throws Exception {
    	bookList = bookService.queryBooks(keyName);
    	System.out.println(keyName);
        return "index";
    }
}
