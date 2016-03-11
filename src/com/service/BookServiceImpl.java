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
	//s�鼮���ϼ�
	public void register(Book book){
		bookDao.addBook(book);
	}
	//�޸�ͼ�����Ϣ
	public void update(Book book){
		bookDao.updateBook(book);
	}
	//����ȫ���е���
	public ArrayList<Book> queryAllBook(){
		ArrayList<Book> bookList=bookDao.QueryAllBook();
		return bookList;
	}
	//��ʾ�ҵ�ͼ���б�
	public ArrayList<Book> showMyBooks(String owner){
		ArrayList<Book> bookList=bookDao.QueryMyBook(owner);
		return bookList;
	}
	//��ʾͼ����Ϣ����
	public Book showBookInfo(Integer bookid){
		Book book=bookDao.GetBookById(bookid);
		return book;
	}
	//����Ҫɾ�����鼮
	public Book getBookById(Integer id){
		Book book=bookDao.GetBookById(id);
		return book;
	}
	//ɾ���ҵ��鼮
	public void delete(Book book){
		bookDao.deleteBook(book.getId());
	}

}
