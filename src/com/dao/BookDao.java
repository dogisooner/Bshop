package com.dao;

import java.util.ArrayList;
import java.util.List;

import com.model.Book;
import org.hibernate.Session;
import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class BookDao {
	@Resource
	SessionFactory factory;
	private String errMessage;

	public String getErrMessage() {
		return errMessage;
	}

	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}

	// 增
	public void addBook(Book book) {
		Session s = factory.getCurrentSession();
		s.save(book);
	}

	// 改
	public void updateBook(Book book) {
		Session s = factory.getCurrentSession();
		s.update(book);
	}

	// 删
	public void deleteBook(Integer bookid) {
		Session s = factory.getCurrentSession();
		Object book = s.load(Book.class, bookid);
		s.delete(book);
	}

	// 查全表
	@SuppressWarnings("unchecked")
	public ArrayList<Book> QueryAllBook() {
		Session s = factory.getCurrentSession();
		String hql = "From Book";
		Query q = s.createQuery(hql);
		List bookList = q.list();
		return (ArrayList<Book>) bookList;
	}

	// 通过主键查
	public Book GetBookById(Integer bookid) { // 通过主键查，只能得到一条记录
		Session s = factory.getCurrentSession();
		Book book = (Book) s.get(Book.class, bookid);// 查出是Object类的
		return book;
	}

	// 条件查找
	@SuppressWarnings("unchecked")
	public ArrayList<Book> QueryBook(String bookname) {
		Session s = factory.getCurrentSession();
		String hql = "From User user where 1=1";// 最基本的
		if (!bookname.equals(""))
			hql = hql + " and book.bookname like '%" + bookname + "%'";
		Query q = s.createQuery(hql);
		List bookList = q.list();
		return (ArrayList<Book>) bookList;
	}

	// 根据书籍的作者查找书
	public ArrayList<Book> QueryMyBook(String owner) {
		Session s = factory.getCurrentSession();
		String hql = "From Book book where 1=1";
		if (!owner.equals(""))
			hql = hql + " and book.owner like '%" + owner + "%'";
		Query q=s.createQuery(hql);
		List bookList=q.list();
		return (ArrayList<Book>)bookList;
	}

}
