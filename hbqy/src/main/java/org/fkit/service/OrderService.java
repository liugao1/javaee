package org.fkit.service;

import java.util.List;
import org.fkit.domain.Order;
public interface OrderService {
	List<Order> getAll();
	Order removeOrder(int book_id);
	Order findOrder(int book_id);
	Order saveOrder(int book_id,int cartcount);
	Order addOrder(int book_id,int cartcount);
	Order update(int book_id);
}  
