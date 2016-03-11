package com.dao;

import java.util.ArrayList;

import com.model.Book;

public interface IBook {
	public void addBook(Book book);
	// ��
	public void updateBook(Book book);
	// ɾ
	public void deleteBook(Integer bookid);
	// ��ȫ��
	public ArrayList<Book> QueryAllBook();

	// ͨ��������
	public Book GetBookById(Integer bookid);
	// ��������
	@SuppressWarnings("unchecked")
	public ArrayList<Book> QueryBook(String bookname);
	// �����鼮�����߲�����
	public ArrayList<Book> QueryMyBook(String owner) ;

}
