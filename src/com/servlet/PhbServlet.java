package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AuthorDao;
import com.dao.BclassDao;
import com.dao.BookDao;
import com.pojo.Author;
import com.pojo.Bclass;
import com.pojo.Book;

public class PhbServlet extends HttpServlet {

	private BookDao bookDao = new BookDao();
	private AuthorDao authorDao = new AuthorDao();
	private BclassDao bclassDao = new BclassDao();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String method = request.getParameter("method");
		
		if("showall".equals(method))
		{
		doShowall(request,response);
		}
		}

	private void doShowall(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<Book> list = bookDao.finddjb();
		String aname = (authorDao.findbyid(list.get(0).getAid())).getAname();
		Book book = list.get(0);
		Bclass bcname = (bclassDao.findbyid(book.getBc_id()));
	
		request.setAttribute("b1", book);
		request.setAttribute("n1", bcname);
		request.setAttribute("list", list);
		request.setAttribute("a1", aname);
		
		
		List<Book> list2 = bookDao.finddjb1();
		String aname2 = (authorDao.findbyid(list2.get(0).getAid())).getAname();
		Book book2 = list2.get(0);
		Bclass bcname2 = (bclassDao.findbyid(book2.getBc_id()));
		
		request.setAttribute("b2", book2);
		request.setAttribute("n2", bcname2);
		request.setAttribute("list2", list2);
		request.setAttribute("a2", aname2);
		
		
		List<Book> list3 = bookDao.finddjb2();
		String aname3 = (authorDao.findbyid(list3.get(0).getAid())).getAname();
		Book book3 = list3.get(0);
		Bclass bcname3 = (bclassDao.findbyid(book3.getBc_id()));
		
		request.setAttribute("b3", book3);
		request.setAttribute("n3", bcname3);
		request.setAttribute("list3", list3);
		request.setAttribute("a3", aname3);
		
		
		
		
		request.getRequestDispatcher("phb.jsp").forward(request, response);
	}
}
