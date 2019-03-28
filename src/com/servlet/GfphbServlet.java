package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.AuthorDao;
import com.dao.BookDao;
import com.pojo.Author;
import com.pojo.Book;

public class GfphbServlet extends HttpServlet {

	private BookDao bookDao = new BookDao();

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String method = request.getParameter("method");
		String bc_id = request.getParameter("bc_id");
		
		
		if ("findbc_id".equals(method)) {
			doFindbybc_id(request, response, bc_id);
		}
		
		//查询所有书     查询默认页面点击榜
		if ("findallbook".equals(method)) {
			doFindallbook(request, response);
			
		}
		
		if("findbyzishu".equals(method))
		{
			String min = request.getParameter("min");
			String max = request.getParameter("max");
			doFindbyzishu(request,response,min,max);
		}

	}

	
	

	//根据字数查询
	private void doFindbyzishu(HttpServletRequest request,
			HttpServletResponse response, String min, String max) throws ServletException, IOException {
		List<Book> list = bookDao.findbyzishu(min, max);
		request.setAttribute("list", list);
		request.getRequestDispatcher("gfphb.jsp").forward(request, response);
		
	}


	
	

	// 进入全部作品时默认查询所有图书信息
	private void doFindallbook(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		List<Book> list = bookDao.findall();
		AuthorDao authorDao = new AuthorDao();
		for (int i = 0; i < list.size(); i++) {
			String aid = list.get(i).getAid();

			Author author = authorDao.findnamebyid(aid);
			String aname = author.getAname();
			list.get(i).setAname(aname);

		}
		//查询点击榜信息
		List<Book> books = bookDao.finddjb();
		request.setAttribute("books", books);
		request.setAttribute("list", list);
		request.getRequestDispatcher("gfphb.jsp").forward(request, response);

	}

	// 按类型查找书籍
	private void doFindbybc_id(HttpServletRequest request,
			HttpServletResponse response, String bc_id)
			throws ServletException, IOException {
		
		List<Book> list = bookDao.fingbybc_id(bc_id);
		AuthorDao authorDao = new AuthorDao();
		for (int i = 0; i < list.size(); i++) {
			String aid = list.get(i).getAid();

			Author author = authorDao.findnamebyid(aid);
			String aname = author.getAname();
			list.get(i).setAname(aname);

		}
		
		List<Book> books1 = bookDao.finddjb();
		request.getSession().setAttribute("books",books1);
		request.setAttribute("list", list);
		request.getRequestDispatcher("gfphb.jsp").forward(request, response);
	}

}
