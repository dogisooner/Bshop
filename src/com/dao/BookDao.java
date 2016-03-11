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

	// ��
	public void addBook(Book book) {
		Session s = factory.getCurrentSession();
		s.save(book);
	}

	// ��
	public void updateBook(Book book) {
		Session s = factory.getCurrentSession();
		s.update(book);
	}

	// ɾ
	public void deleteBook(Integer bookid) {
		Session s = factory.getCurrentSession();
		Object book = s.load(Book.class, bookid);
		s.delete(book);
	}

	// ��ȫ��
	@SuppressWarnings("unchecked")
	public ArrayList<Book> QueryAllBook() {
		Session s = factory.getCurrentSession();
		String hql = "From Book";
		Query q = s.createQuery(hql);
		List bookList = q.list();
		return (ArrayList<Book>) bookList;
	}

	// ͨ��������
	public Book GetBookById(Integer bookid) { // ͨ�������飬ֻ�ܵõ�һ����¼
		Session s = factory.getCurrentSession();
		Book book = (Book) s.get(Book.class, bookid);// �����Object���
		return book;
	}

	// ��������
	@SuppressWarnings("unchecked")
	public ArrayList<Book> QueryBook(String bookname) {
		Session s = factory.getCurrentSession();
		String hql = "From User user where 1=1";// �������
		if (!bookname.equals(""))
			hql = hql + " and book.bookname like '%" + bookname + "%'";
		Query q = s.createQuery(hql);
		List bookList = q.list();
		return (ArrayList<Book>) bookList;
	}

	// �����鼮�����߲�����
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
