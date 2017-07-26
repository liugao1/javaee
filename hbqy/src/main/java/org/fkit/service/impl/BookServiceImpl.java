package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Book;
import org.fkit.domain.Cart;
import org.fkit.domain.User;
import org.fkit.mapper.BookMapper;
import org.fkit.mapper.OrderMapper;
import org.fkit.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("bookService")
public class BookServiceImpl implements BookService{
	/**
	 * 自动注入BookMapper
	 * */
	@Autowired
	private BookMapper bookMapper;
	@Autowired
	private OrderMapper orderMapper;
	@Transactional(readOnly=true)	
	//查团体定制
	@Override
	public List<Book> ttdzgetAll(String booktype) {
		// TODO Auto-generated method stub
		return bookMapper.ttdzfindAll(booktype);
	}
	//手工定制
	@Transactional(readOnly=true)
	@Override
	public List<Book> sgdzgetAll(String booktype) {
		// TODO Auto-generated method stub
		return bookMapper.sgdzfindAll(booktype);
	}
	//校园纪念
	@Transactional(readOnly=true)
	@Override
	public List<Book> xyjngetAll(String booktype) {
		// TODO Auto-generated method stub
		return bookMapper.xyjnfindAll(booktype);
	}
	
		@Override
		public List<Book> getAll() {
			// TODO Auto-generated method stub
			return bookMapper.findAll();
		}
		@Override
		public Book removeBook(int id) {
			// TODO Auto-generated method stub
			Book book = bookMapper.findWithId(id);
			bookMapper.removeBook(book);
			return book;
			
		}
	
		@Override
		public Book bookadd(String bookimage,String bookimage1,String bookimage2,String bookimage3,String bookimage4,String bookname,String booknomber,String booktype,String bookintro,String bookprice,int bookcount) {
			// TODO Auto-generated method stub
			Book book=new Book();
			book.setBookname(bookname);
			book.setBookimage(bookimage);
			book.setBookimage1(bookimage1);
			book.setBookimage2(bookimage2);
			book.setBookimage3(bookimage3);
			book.setBookimage4(bookimage4);
			book.setBooknomber(booknomber);
			book.setBooktype(booktype);
			book.setBookintro(bookintro);
			book.setBookprice(bookprice);
			book.setBookcount(bookcount);
			bookMapper.saveBook(book);
			return book; 
			
			
		}
		@Override
		public Book find(int id) {
			// TODO Auto-generated method stub
			return bookMapper.findWithId(id);
		}
		@Override
		public Book updatecount(int nowcount,int counter, int id) {
			// TODO Auto-generated method stub
			Book book=new Book();
			
			book.setNowcount(nowcount);
			book.setCounter(counter);
			book.setId(id);
			bookMapper.gaicount(book);
			return book;
		}
	
		
	
	
}
