package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.naming.ldap.Rdn;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AuthorDao;
import com.dao.UserDao;
import com.pojo.Author;
import com.pojo.User;
import com.util.DButil;

public class HoutaiServlet extends HttpServlet {

	
	private UserDao userDao = new UserDao();
	private AuthorDao authorDao = new AuthorDao();
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String method = request.getParameter("method");

		if("findall".equals(method)){
			doFindallyonghu(request, response);
		}
		if("delyonghu".equals(method)){
			String uid = request.getParameter("uid");
			doDelyonghu(request,response,uid);
		}
		if("updateyonghu".equals(method)){
			doUpdateyonghu(request,response);
		}
		if("xinzeng".equals(method)){
			doXinzeng(request,response);
		}
	}

	//新增
	private void doXinzeng(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("uid");
		String uname  = request.getParameter("uname");
		String upassword  =request.getParameter("upassword");
		String uIDNO = request.getParameter("uIDNO");
		String uphone = request.getParameter("uphone");
		userDao.insertyonghu(uid, uname, upassword, uIDNO, uphone);
		doFindallyonghu(request, response);
	}
	//修改用户信息
	private void doUpdateyonghu(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("uid");
		String uname = request.getParameter("uname");
		String uphone = request.getParameter("uphone");
		String upassword = request.getParameter("upassword");
		userDao.updateyonghu(uname, upassword, uphone, uid);
		doFindallyonghu(request, response);
	}
	//删除用户
	private void doDelyonghu(HttpServletRequest request,
			HttpServletResponse response, String uid) throws IOException, ServletException {
		userDao.delyonghu(uid);
		doFindallyonghu(request, response);
	}

	// 用户分页查询
	private void doFindallyonghu(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		int page = 1;
		int size = 10;

		String pageString = request.getParameter("page");
		if (pageString != null && pageString.trim().length() > 0) {
			page = Integer.parseInt(pageString);
		}

		String sizeString = request.getParameter("size");
		if (sizeString != null && sizeString.trim().length() > 0) {
			size = Integer.parseInt(sizeString);
		}

		// 越界判断
		if (page < 1) {
			page = 1;
		}

		// 先查找总条数
		int count = userDao.getCount();

		int pageCount = count % size == 0 ? count / size : count / size + 1;

		if (page > pageCount) {
			page = pageCount;
		}

		List<User> list = userDao.findall(page, size);
		
		List<Author> authors = authorDao.findall(page,size);
		Map map = new HashMap();
		map.put("list", list);
		map.put("page", page);
		map.put("size", size);
		map.put("pageCount", pageCount);
		map.put("count", count);
		map.put("authors", authors);

		request.setAttribute("map1", map);
		request.getRequestDispatcher("houtai.jsp").forward(request, response);
	}
	
}
