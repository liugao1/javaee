package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.mapping.FetchType;
import org.fkit.domain.Book;
import org.fkit.domain.User;

public interface BookMapper {
	/**
	 * 查询所有产品
	 * 
	 * @return 团体定制对象集合
	 */
	//查询所有团体定制的集合
	@Select("select * from book where booktype=#{booktype}")
	List<Book> ttdzfindAll(@Param("booktype") String booktype);
	
	
	@Select("select * from book where id=#{id}")
	@Results({ @Result(id = true, column = "id", property = "id"), @Result(column = "bookimage", property = "bookimage"),
			@Result(column = "booknomber", property = "booknomber"), @Result(column = "booktype", property = "booktype"),
			@Result(column = "bookname", property = "bookname"),@Result(column = "bookimage1", property = "bookimage1"),@Result(column = "bookimage2", property = "bookimage2"),
			@Result(column = "bookintro", property = "bookintro"), @Result(column = "bookprice", property = "bookprice"),@Result(column = "bookimage3", property = "bookimage3"),
			@Result(column = "bookimage4", property = "bookimage4"),
			@Result(column = "bookcount", property = "bookcount"),@Result(column = "remark", property = "bookimage")})
	List<Book> selectByBookId(int id);
	/**
	 * 查询所有产品
	 * 
	 * @return 手工定制对象集合
	 */
	//查询所有手工定制的集合
	@Select("select * from book  where booktype=#{booktype}")
	List<Book> sgdzfindAll(@Param("booktype") String booktype);
	/**
	 * 查询所有产品
	 * 
	 * @return 校园纪念对象集合
	 */
	
	
	//查询所有校园纪念的集合
	@Select("select * from book where booktype=#{booktype}")
	List<Book>xyjnfindAll(@Param("booktype") String booktype);
    
	//遍历所有产品
	 @Select("select * from book")
	 List<Book> findAll();
	 //下架
	 
	    @Delete("delete from book where id=#{id}") 
	    void removeBook(Book book);
	    // 
	    @Select("select * from book where id=#{id}")
		@Results({ @Result(id = true, column = "id", property = "id"), @Result(column = "bookimage", property = "bookimage"),
				@Result(column = "booknomber", property = "booknomber"), @Result(column = "booktype", property = "booktype"),
				@Result(column = "bookname", property = "bookname"),
				@Result(column = "bookintro", property = "bookintro"), @Result(column = "bookprice", property = "bookprice"),
				@Result(column = "bookcount", property = "bookcount"),@Result(column = "remark", property = "bookimage")})
	  		Book findWithId(@Param("id") int id);
	    
	    @Insert("insert into book(bookimage,bookname,booknomber,booktype,bookintro,bookprice,bookcount,bookimage1,bookimage2,bookimage3,bookimage4) values(#{bookimage},#{bookname},#{booknomber},#{booktype},#{bookintro},#{bookprice},#{bookcount},#{bookimage1},#{bookimage2},#{bookimage3},#{bookimage4})")
		 @Options(useGeneratedKeys = true, keyProperty = "id")
		 int saveBook(Book book);
	   //修改书籍数量
	    @Update("update book set bookcount=#{nowcount},booksale=booksale+#{counter} where id=#{id}")
		 int gaicount(Book book);
	 
		
}
