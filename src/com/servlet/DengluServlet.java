package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.pojo.Book;
import com.pojo.User;

public class DengluServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		String method = request.getParameter("method");
		String uid = request.getParameter("uid");
		String password = request.getParameter("pwd");
		
		if("zhudenglu".equals(method)){
			doZhudenglu(request,response,uid,password);
		}
		
		if("xqdenglu".equals(method)){
			doXqdenglu(request,response,uid,password);
		}
		
		if("phbdenglu".equals(method)){
			doPhbdenglu(request,response,uid,password);
		}
	}

	private void doPhbdenglu(HttpServletRequest request,
			HttpServletResponse response, String uid, String password) throws ServletException, IOException {
		UserDao userDao = new UserDao();
		User user = userDao.denglu(uid, password);
		if(user==null)
			System.out.println("µÇÂ¼Ê§°Ü");
		else 
			System.out.println("µÇÂ¼³É¹¦");
		System.out.println(user.getUname());
		
		request.getSession().setAttribute("user", user);
		request.getRequestDispatcher("phb.do?method=showall").forward(request, response);
		
	}

	private void doXqdenglu(HttpServletRequest request,
			HttpServletResponse response, String uid, String password) throws ServletException, IOException {
		UserDao userDao = new UserDao();
		User user = userDao.denglu(uid, password);
		if(user==null)
			System.out.println("µÇÂ¼Ê§°Ü");
		else 
			System.out.println("µÇÂ¼³É¹¦");
		System.out.println(user.getUname());
		
		String bid = request.getParameter("bid");
		System.out.println(bid);
		request.getSession().setAttribute("user", user);
		request.getRequestDispatcher("xiangqing.do?method=findbyid&bid="+bid).forward(request, response);
		
	}

	private void doZhudenglu(HttpServletRequest request,
			HttpServletResponse response, String uid, String password) throws ServletException, IOException {
		UserDao userDao = new UserDao();
		User user = userDao.denglu(uid, password);
		if(user==null)
			System.out.println("µÇÂ¼Ê§°Ü");
		else 
			System.out.println("µÇÂ¼³É¹¦");
		System.out.println(user.getUname());
		
		request.getSession().setAttribute("user", user);
		request.getRequestDispatcher("zhuye.do?method=findall").forward(request, response);
	}
}
