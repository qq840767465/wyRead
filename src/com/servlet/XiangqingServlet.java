package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AuthorDao;
import com.dao.BclassDao;
import com.dao.BookDao;
import com.dao.CommentDao;
import com.dao.UserDao;
import com.pojo.Author;
import com.pojo.Bclass;
import com.pojo.Book;
import com.pojo.Comment;
import com.sun.org.apache.regexp.internal.RE;

public class XiangqingServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String method = request.getParameter("method");
		String bid = request.getParameter("bid");
		if ("findbyid".equals(method)) {
			doFindbyid(request, response, bid);
		}
	}
	// 根据一本书的id找到该书的详细信息
	private void doFindbyid(HttpServletRequest request,
			HttpServletResponse response, String bid) throws ServletException,
			IOException {

		BookDao bookDao = new BookDao();
		Book book = bookDao.findbyid(bid);
		// 根据作者编号，得到作者信息
		String aid = book.getAid();
		AuthorDao authorDao = new AuthorDao();
		Author author = authorDao.findbyid(aid);

		// 根据书的id找到书的类别
		String bc_id = book.getBc_id();
		BclassDao bclassDao = new BclassDao();
		Bclass bclass = bclassDao.findbyid(bc_id);

		// 得到一本书的所有评论
		CommentDao commentDao = new CommentDao();

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
		int count = commentDao.getCount();

		int pageCount = count % size == 0 ? count / size : count / size + 1;

		if (page > pageCount) {
			page = pageCount;
		}
		List<Comment> comments = commentDao.findbybid(bid,page,size);
		for (int i = 0; i < comments.size(); i++) {
			UserDao dao = new UserDao();
			String name = dao.findnamebyid(comments.get(i).getUid());
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String str1 = sdf.format(comments.get(i).getPtime());
			String[] str2 = str1.split(" ", 2);
			String[] str3 = str2[1].split(":");
			String str = str2[0]+" "+str3[0]+":"+str3[1];
			comments.get(i).setTime(str);
			comments.get(i).setUname(name);
		}
		List<Comment> c = comments;
		
		request.setAttribute("c", c);
		request.setAttribute("a", author);
		request.setAttribute("b", book);
		request.setAttribute("bc", bclass);
		request.getRequestDispatcher("xiangqing.jsp")
				.forward(request, response);

	}

}