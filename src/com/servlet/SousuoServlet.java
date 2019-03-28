package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AuthorDao;
import com.dao.BookDao;
import com.pojo.Book;

public class SousuoServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String method = request.getParameter("method");
		String key = request.getParameter("key").trim();
		

		if ("sousuo".equals(method)) {
			dosousuo(request, response, key);
		}

	}

	private void dosousuo(HttpServletRequest request,
			HttpServletResponse response, String key) throws ServletException, IOException {
		BookDao bookDao = new BookDao();
		AuthorDao authorDao = new AuthorDao();
		List<Book> books = bookDao.sousuo(key);
		for (int i = 0; i < books.size(); i++) {
			books.get(i).setAname(authorDao.findnamebyid(books.get(i).getAid()).getAname());
		}
		
		request.setAttribute("books", books);
		request.getRequestDispatcher("jieguo.jsp").forward(request, response);
	}
}
