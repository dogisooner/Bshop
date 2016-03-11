package com.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.BookDao;
import com.model.Book;

@Service@Transactional
public class BookServiceImpl{
	@Resource SessionFactory factory;
	@Resource BookDao bookDao;
	private String errMessage;
	
	public String getErrMessage() {
		return errMessage;
	}
	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}
	//s书籍的上架
	public void register(Book book){
		bookDao.addBook(book);
	}
	//修改图书的信息
	public void update(Book book){
		bookDao.updateBook(book);
	}
	//查找全表中的书
	public ArrayList<Book> queryAllBook(){
		ArrayList<Book> bookList=bookDao.QueryAllBook();
		return bookList;
	}
	//显示我的图书列表
	public ArrayList<Book> showMyBooks(String owner){
		ArrayList<Book> bookList=bookDao.QueryMyBook(owner);
		return bookList;
	}
	//显示图书信息详情
	public Book showBookInfo(Integer bookid){
		Book book=bookDao.GetBookById(bookid);
		return book;
	}
	//查找要删除的书籍
	public Book getBookById(Integer id){
		Book book=bookDao.GetBookById(id);
		return book;
	}
	//删除我的书籍
	public void delete(Book book){
		bookDao.deleteBook(book.getId());
	}

}
