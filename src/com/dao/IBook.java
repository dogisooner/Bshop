package com.dao;

import java.util.ArrayList;

import com.model.Book;

public interface IBook {
	public void addBook(Book book);
	// 改
	public void updateBook(Book book);
	// 删
	public void deleteBook(Integer bookid);
	// 查全表
	public ArrayList<Book> QueryAllBook();

	// 通过主键查
	public Book GetBookById(Integer bookid);
	// 条件查找
	@SuppressWarnings("unchecked")
	public ArrayList<Book> QueryBook(String bookname);
	// 根据书籍的作者查找书
	public ArrayList<Book> QueryMyBook(String owner) ;

}
