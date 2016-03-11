package com.service;

import java.util.ArrayList;

import com.model.Book;

public interface IBookService {
	public void register(Book book);
	//修改图书的信息
	public void update(Book book);
	//查找全表中的书
	public ArrayList<Book> queryAllBook();
	//显示我的图书列表
	public ArrayList<Book> showMyBooks(String owner);
	//显示图书信息详情
	public Book showBookInfo(Integer bookid);
	//查找要删除的书籍
	public Book getBookById(Integer id);
	//删除我的书籍
	public void delete(Book book);
}
