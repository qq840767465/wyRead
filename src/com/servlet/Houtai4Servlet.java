package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BookDao;
import com.dao.CommentDao;
import com.dao.UserDao;
import com.pojo.Author;
import com.pojo.Book;
import com.pojo.Comment;
import com.sun.org.apache.bcel.internal.generic.NEW;

public class Houtai4Servlet extends HttpServlet {

	private CommentDao commentDao = new CommentDao();
	private BookDao bookDao = new BookDao();
	private UserDao userDao = new UserDao();

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String method = request.getParameter("method");

		if ("findall".equals(method)) {
			doFindallcomment(request, response);
		}
		if ("delpinlun".equals(method)) {
			doDel(request, response);
		}
		if ("findplbyid".equals(method)) {
			doFindplbyid(request, response);
		}

	}

	// 查询一本书的评论
	private void doFindplbyid(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String bname = request.getParameter("bname").trim();
		bname = new String(bname.getBytes("ISO-8859-1"), "utf-8");
		String bid = bookDao.findidbyname(bname);
		System.out.println(bname);
		System.out.println(bid);

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

		List<Comment> comments = commentDao.findbybid(bid, page, size);
		for (int i = 0; i < comments.size(); i++) {
			System.out.println("来了");
			comments.get(i).setBname(
					bookDao.findbyid(comments.get(i).getBid()).getBname());
			comments.get(i).setUname(
					userDao.findnamebyid(comments.get(i).getUid()));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String str1 = sdf.format(comments.get(i).getPtime());
			String[] str2 = str1.split(" ", 2);
			String[] str3 = str2[1].split(":");
			String str = str2[0] + " " + str3[0] + ":" + str3[1];
			comments.get(i).setTime(str);

		}

		/*
		 * Map map4 = new HashMap(); map4.put("page", page); map4.put("size",
		 * size); map4.put("pageCount", pageCount); map4.put("count", count);
		 * map4.put("comments", comments);
		 */

		if (comments.size() == 0) {
			doFindallcomment(request, response);
		} else {
			StringBuffer sb = new StringBuffer("[");

			for (Comment c : comments) {
				sb.append("{'uname':'").append(c.getUname())
						.append("','content':'").append(c.getContent()).append("','c_click':'").append(c.getThumbs()).append("','ptime':'").append(c.getTime())
						.append("'},");
			}

			sb.replace(sb.length() - 1, sb.length(), "]");
			System.out.println(sb.toString());
			response.getWriter().print(
					sb.replace(sb.length()-1, sb.length(), "]"));
		}
		

	}

	// 删除评论
	private void doDel(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int cid = Integer.parseInt(request.getParameter("cid"));
		int n = commentDao.del(cid);
		if (n == 1)
			System.out.println("删除成功");
		doFindallcomment(request, response);
	}

	// 后台评论分页查询
	private void doFindallcomment(HttpServletRequest request,
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
		int count = commentDao.getCount();

		int pageCount = count % size == 0 ? count / size : count / size + 1;

		if (page > pageCount) {
			page = pageCount;
		}

		List<Comment> comments = commentDao.findall(page, size);
		for (int i = 0; i < comments.size(); i++) {
			comments.get(i).setBname(
					bookDao.findbyid(comments.get(i).getBid()).getBname());
			comments.get(i).setUname(
					userDao.findnamebyid(comments.get(i).getUid()));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String str1 = sdf.format(comments.get(i).getPtime());
			String[] str2 = str1.split(" ", 2);
			String[] str3 = str2[1].split(":");
			String str = str2[0] + " " + str3[0] + ":" + str3[1];
			comments.get(i).setTime(str);

		}
		List<Book> books = bookDao.findshuming();
		Map map4 = new HashMap();
		map4.put("page", page);
		map4.put("size", size);
		map4.put("pageCount", pageCount);
		map4.put("count", count);
		map4.put("comments", comments);
		map4.put("books", books);

		request.setAttribute("map4", map4);
		request.getRequestDispatcher("houtai4.jsp").forward(request, response);
	}

}
