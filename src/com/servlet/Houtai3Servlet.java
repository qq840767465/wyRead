
package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AuthorDao;
import com.dao.BclassDao;
import com.dao.BookDao;
import com.pojo.Author;
import com.pojo.Book;

public class Houtai3Servlet extends HttpServlet {

	private BookDao bookDao = new BookDao();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String method = request.getParameter("method");
		if("findall".equals(method)){
			doFindallbook(request,response);
		}
		
		if("updatebook".equals(method)){
			doUpdatebook(request,response);
		}
		if("delbook".equals(method)){
			doDelbook(request,response);
		}
		if("xinzeng".equals(method)){
			doXinzeng(request,response);
		}
		
	}
	//新增书籍信息
	private void doXinzeng(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String bid =request.getParameter("bid");
		String bname = request.getParameter("bname");
		int bcount = Integer.parseInt(request.getParameter("bcount"));
		int bccount = Integer.parseInt(request.getParameter("bccount"));
		
		String aid = request.getParameter("aid").trim();
		System.out.println(aid);
		AuthorDao authorDao = new AuthorDao();
		aid = authorDao.zuozheid(aid);
		System.out.println(aid);
		System.out.println("laile");
		String bintroduction = request.getParameter("bintroduction");
		String b_img = request.getParameter("b_img");
		int b_click = Integer.parseInt(request.getParameter("b_click"));
		
		String bc_id = request.getParameter("bc_id").trim();
		BclassDao bclassDao = new BclassDao();
		bc_id = bclassDao.bc_id(bc_id);
		
		bookDao.xinzeng(bid, bname, bcount, bccount, aid, bintroduction, b_img, b_click, bc_id);
		doFindallbook(request, response);
	}
	//删除作者信息
	private void doDelbook(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String bid = request.getParameter("bid");
		bookDao.del(bid);
		doFindallbook(request, response);
	}
	//修改书籍信息
	private void doUpdatebook(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String bid =request.getParameter("bid");
		String bname = request.getParameter("bname");
		int bcount = Integer.parseInt(request.getParameter("bcount"));
		int bccount = Integer.parseInt(request.getParameter("bccount"));
		String aid = request.getParameter("aid");
		String bintroduction = request.getParameter("bintroduction");
		String b_img = request.getParameter("b_img");
		int b_click = Integer.parseInt(request.getParameter("b_click"));
		String bc_id = request.getParameter("bc_id");
		bookDao.update(bid, bname, bcount, bccount, aid, bintroduction, b_img, b_click, bc_id);
		doFindallbook(request, response);
	}
	//分页查询所有书籍
	private void doFindallbook(HttpServletRequest request,
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
		int count = bookDao.getCount();

		int pageCount = count % size == 0 ? count / size : count / size + 1;

		if (page > pageCount) {
			page = pageCount;
		}

		List<Book> list =bookDao.findall(page, size);
		AuthorDao authorDao = new AuthorDao();
		BclassDao bclassDao = new BclassDao();
		for (int i = 0; i < list.size(); i++) {
			list.get(i).setAname(authorDao.findnamebyid(list.get(i).getAid()).getAname());
			list.get(i).setBcname(bclassDao.findbyid(list.get(i).getBc_id()).getBcname());
		}
		
		List<Book> authors = bookDao.findall(page,size);
		Map map3 = new HashMap();
		map3.put("list", list);
		map3.put("page", page);
		map3.put("size", size);
		map3.put("pageCount", pageCount);
		map3.put("count", count);
		map3.put("authors", authors);

		request.setAttribute("map3", map3);
		request.getRequestDispatcher("houtai3.jsp").forward(request, response);
		
	}

}
