package com.service;

import java.util.ArrayList;

import com.model.Book;

public interface IBookService {
	public void register(Book book);
	//�޸�ͼ�����Ϣ
	public void update(Book book);
	//����ȫ���е���
	public ArrayList<Book> queryAllBook();
	//��ʾ�ҵ�ͼ���б�
	public ArrayList<Book> showMyBooks(String owner);
	//��ʾͼ����Ϣ����
	public Book showBookInfo(Integer bookid);
	//����Ҫɾ�����鼮
	public Book getBookById(Integer id);
	//ɾ���ҵ��鼮
	public void delete(Book book);
}
