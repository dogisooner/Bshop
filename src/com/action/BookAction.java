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
    //�鼮���ϼ�
	@SuppressWarnings("unchecked")
	public String bRegister() throws Exception{		
		/*String ownerName=((User)session.get("user")).getUsername();
		book.setOwner(ownerName);*/
		bookService.register(book);
		session.put("book", book);
		return "su_reg";
	}
	//owner��½���鼮�ϼ�ʱ������owner��ֵ
	public String register(){
		return "book_register";
	}
	//��ʾ�ҵ�ͼ���б�
	@SuppressWarnings("unchecked")
	public String showMyBook(){
		//String ownerName=((User)session.get("user")).getUsername();
		bookList=bookService.showMyBooks(book.getOwner());
		//session.put("list", bookList);
		return "show_MyBook";
	}
	//��ʾ�鼮��ϸ��Ϣ
	public String showBookInfo(){
        book=bookService.showBookInfo(book.getId());
		return "show_bookInfo";
	}
	//��ʾҪ�޸ĵ��鼮��Ϣ
	public String showBookEdit(){
		book=bookService.showBookInfo(book.getId());
		return "show_edit";
	}
	//�޸��鼮��ϸ��Ϣ
	public String updateBook(){
		bookService.update(book);
		return "show_bookInfo";
	}
	//�鼮���¼ܣ�ɾ����
	@SuppressWarnings("unused")
	public String deleteBook(){
		User user=(User)session.get("user");
		book=bookService.getBookById(book.getId());
		bookService.delete(book);
		return "delete_book";
	}
	/*��ѯbook*/
    public String queryBooks() throws Exception {
    	bookList = bookService.queryBooks(keyName);
    	System.out.println(keyName);
        return "index";
    }
}
