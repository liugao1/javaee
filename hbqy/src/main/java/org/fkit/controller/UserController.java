package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.fkit.domain.Cart;
import org.fkit.domain.User;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

/**
 * 处理用户请求控制器
 * */
@Controller
public class UserController {
	
	/**
	 * 自动注入UserService
	 * */
	@Autowired
	@Qualifier("userService")
	private UserService userService;

	/**
	 * 处理/userlogin请求
	 * */
	@RequestMapping(value="/userlogin")
	 public ModelAndView userlogin(
			 String loginnumber,String password,
			 ModelAndView mv,
			 HttpSession session,HttpServletRequest request){
		// 根据登录名和密码查找用户，判断用户登录

		User user = userService.login(loginnumber, password);
		if(user != null){
			// 登录成功，将user对象设置到HttpSession作用范围域
			session.setAttribute("user", user);
			// 转发到mainshop请求
			mv.setViewName("mainshop");
		}else{
			// 登录失败，设置失败提示信息，并跳转到登录页面
			mv.addObject("message", "登录名或密码错误，请重新输入!");
			mv.setViewName("login");
		}
		
		return mv;
	}
	
	 @RequestMapping(value = "/enroll",method = RequestMethod.POST)

		public ModelAndView register(String username, String loginnumber,String password,String phone,String address,String email,ModelAndView mv, HttpSession session) {
			// 根据输入的登录名和密码向数据库中添加新的用户信息,完成注册
			User user = userService.register(username, loginnumber,password,phone,address,email);
			// 注册成功，将user对象设置到HttpSession作用范围域
			session.setAttribute("user", user);
			// 转发到login请求
			mv.setViewName("login");
			return mv;
		}
	 //通过账户以及邮箱来找回密码
	 @RequestMapping(value="/find")
		public ModelAndView find(
			String loginnumber,String email,
			ModelAndView mv,
			HttpSession session,HttpServletRequest request,HttpServletResponse response)throws Exception{						    
		 User user=userService.find(loginnumber,email);
			if(user!=null){	
				StringBuffer url = new StringBuffer();
				StringBuilder builder = new StringBuilder();
				// 正文
				builder.append("");
				url.append( "您的密码是："+user.getPassword()+"");
				builder.append("");
				builder.append("" +url+ "");
				builder.append("");
				SimpleEmail sendemail = new SimpleEmail();
				sendemail.setHostName("smtp.163.com");// 指定要使用的邮件服务器
				sendemail.setAuthentication("qyliugao@163.com", "lg09153813");// 使用163的邮件服务器需提供在163已注册的用户名、密码
				sendemail.setCharset("UTF-8");
				try {
					sendemail.setCharset("UTF-8");
					sendemail.addTo(email);
					sendemail.setFrom("qyliugao@163.com");
					sendemail.setSubject("找回密码");
					sendemail.setMsg(builder.toString());
					sendemail.send();
					System.out.println(builder.toString());
				} catch (EmailException e) {
					e.printStackTrace();
				}
				response.sendRedirect("login");	

//				response.getWriter().println("你的密码为已成功发送到邮箱");	
//				mv.setViewName("login");
			}else{
				response.getWriter().println("获取密码失败");
			}
		    return null;
		}

	 //遍历用户
	 @RequestMapping(value = "/users")
		public String users(Model model) {
			
			// 获得所有图书集合
			List<User> user_list = userService.getAll();
			// 将图书集合添加到model当中
			
			model.addAttribute("user_list", user_list);
			// 跳转到users页面
			return "users";
		
		}
	 //删除用户信息
	 @RequestMapping(value="/deleteuser")
	 public String deleteuser(Model model,HttpServletRequest request){
		 String id = request.getParameter("user_id");
			int id_ = Integer.parseInt(id);
			userService.removeUser(id_);
			List<User> user_list = userService.getAll();
			// 将用户信息集合添加到model当中		
			model.addAttribute("user_list", user_list);
			// 跳转到users页面
		return "users";
		 
	 }
	 //修改密码
	 @RequestMapping(value="/gaimima")
	 public String gaimima(String email,String password,String newpwd,ModelAndView mv,
				HttpSession session,HttpServletRequest request,HttpServletResponse response,
				Model model)throws Exception{
		User user=userService.update(email, password,newpwd);
		if(user!=null){	
			StringBuffer url = new StringBuffer();
			StringBuilder builder = new StringBuilder();
			// 正文
			builder.append("");
			url.append( "您的新密码是："+user.getNewpwd()+"");
			builder.append("");
			builder.append("" +url+ "");
			builder.append("");
			SimpleEmail sendemail = new SimpleEmail();
			sendemail.setHostName("smtp.163.com");// 指定要使用的邮件服务器
			sendemail.setAuthentication("qyliugao@163.com", "lg09153813");// 使用163的邮件服务器需提供在163已注册的用户名、授权码
			sendemail.setCharset("UTF-8");
			try {
				sendemail.setCharset("UTF-8");
				sendemail.addTo(email);
				sendemail.setFrom("qyliugao@163.com");
				sendemail.setSubject("修改密码");
				sendemail.setMsg(builder.toString());
				sendemail.send();
				System.out.println(builder.toString());
			} catch (EmailException e) {
				e.printStackTrace();
			}
			response.sendRedirect("main");	

//			response.getWriter().println("你的新密码为已成功发送到邮箱");	
//			mv.setViewName("login");
		}else{
			String error="您输入的邮箱或密码错误，请重新输入";
		    model.addAttribute("error", error);
			System.out.print("没有此用户");
			response.getWriter().println("修改密码失败");
			response.sendRedirect("updatepwd");
		}
	    return null;
	}

		 
	 }
	 
