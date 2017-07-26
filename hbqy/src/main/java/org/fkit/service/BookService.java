package org.fkit.service;

import java.util.List;

import org.fkit.domain.Book;


public interface BookService {
	/**
	 * 查找所有产品
	 * @param booktype 
	 * @return 团体定制对象集合
	 * */
	//遍历团体定制的集合
	List<Book> ttdzgetAll(String booktype);
	/**
	 * 查找所有产品
	 * @param booktype 
	 * @return 手工定制对象集合
	 * */
	//遍历手工定制的集合
	List<Book> sgdzgetAll(String booktype);
  //遍历校园纪念的集合
    List<Book> xyjngetAll(String booktype);
    
	List<Book> getAll();
	Book removeBook(int id);
    Book find(int id);
    //修改产品数量
    Book updatecount(int nowcount, int counter,int id);
	Book bookadd(String bookimage,String bookimage1,String bookimage2,String bookimage3,String bookimage4,String bookname,  String booknomber, String booktype, String bookintro,
			String bookprice, int bookcount);
	
	
}
