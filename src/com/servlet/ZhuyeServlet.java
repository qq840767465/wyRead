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
import com.pojo.Bclass;
import com.pojo.Book;

public class ZhuyeServlet extends HttpServlet {

	private BookDao bookDao = new BookDao();
	private BclassDao bclassDao = new BclassDao();
	private AuthorDao authorDao = new AuthorDao();
	
	
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String method = request.getParameter("method");
		
		if("findall".equals(method))
		{
			System.out.println("来了");
			doFindall(request,response);
		}
	}

	private void doFindall(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		AuthorDao authorDao = new AuthorDao();
		
		//查询本周强推（主页左上角）
		List<Book> books = bookDao.findqtb();
		for (int i = 0; i < books.size(); i++) {
			books.get(i).setBcname1((bclassDao.findnamebyid(books.get(i).getBc_id())).getBcname1());
		}
		request.setAttribute("books", books);
		
		//查询右侧24小时热销
		List<Book> books2 = bookDao.finddjb();
		Book book1 = books2.get(0);
		Book book2 = books2.get(1);
		Book book3 = books2.get(2);
		
		book1.setAname((authorDao.findbyid(book1.getAid())).getAname());
		book2.setAname((authorDao.findbyid(book2.getAid())).getAname());
		book3.setAname((authorDao.findbyid(book3.getAid())).getAname());
		
		
		request.setAttribute("book1", book1);
		request.setAttribute("book2", book2);
		request.setAttribute("book3", book3);
		request.setAttribute("books2", books2);
		
		
		List<Book> books3 = bookDao.findliu1();
		Book book4 = books3.get(5);
		List<Book> books4 = bookDao.findliu2();
		Book book5 = books4.get(5);
		
		request.setAttribute("book4", book4);
		request.setAttribute("book5", book5);
		request.setAttribute("books3", books3);
		request.setAttribute("books4", books4);
		
		
		List<Book> books5 = bookDao.findliu3();
		Book b61 = books5.get(0);
		Book b62 = books5.get(1);
		Book b63 = books5.get(2);
		Book b64 = books5.get(3);
		Book b65 = books5.get(4);
		Book b66 = books5.get(5);
		b61.setBcname((bclassDao.findbyid(b61.getBc_id())).getBcname());
		b62.setBcname((bclassDao.findbyid(b62.getBc_id())).getBcname());
		b63.setBcname((bclassDao.findbyid(b63.getBc_id())).getBcname());
		b64.setBcname((bclassDao.findbyid(b64.getBc_id())).getBcname());
		b65.setBcname((bclassDao.findbyid(b65.getBc_id())).getBcname());
		b66.setBcname((bclassDao.findbyid(b66.getBc_id())).getBcname());
		request.setAttribute("b66", b66);
		request.setAttribute("b65", b65);
		request.setAttribute("b64", b64);
		request.setAttribute("b63", b63);
		request.setAttribute("b62", b62);
		request.setAttribute("b61", b61);
		
	
		List<Book> books6 =  bookDao.findb17();
		for (int i = 0; i<17; i++) {
			(books6.get(i)).setBcname((bclassDao.findbyid(books6.get(i).getBc_id())).getBcname());
			(books6.get(i)).setAname((authorDao.findbyid(books6.get(i).getAid())).getAname());
		}
		request.setAttribute("books6", books6);
		
		
		request.getRequestDispatcher("main.jsp").forward(request, response);	
	}
}
