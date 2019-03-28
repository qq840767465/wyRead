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
import com.oreilly.servlet.MultipartRequest;
import com.pojo.Author;

public class Houtai2Servlet extends HttpServlet {
	private AuthorDao authorDao = new AuthorDao();

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String method = request.getParameter("method");
		if ("findall".equals(method)) {
			doFindallzuozhe(request, response);
		}
		if ("delzuozhe".equals(method)) {
			doDelzuozhe(request, response);
		}
		if ("updatezuozhe".equals(method)) {
			doUpdatezuozhe(request, response);
		}
		if ("insertzuozhe".equals(method)) {
			doInsertzuozhe(request, response);
		}
	}

	// 新增作者
	private void doInsertzuozhe(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// 指定文件上传路径
		String path = request.getSession().getServletContext()
				.getRealPath("image/xqimg/zuozhe");
		
		MultipartRequest multipartRequest = new MultipartRequest(request,path,1024*1024*100,"utf-8");
		
		
		
		String aid = multipartRequest.getParameter("aid");
		String aname = multipartRequest.getParameter("aname");
		String a_img = multipartRequest.getFile("a_img").getName();
		String a_introduction = multipartRequest.getParameter("a_introduction");
		
		System.out.println(a_img);
		System.out.println(aid);
		System.out.println(aname);
		System.out.println(a_introduction);
		
		authorDao.xinzengzuozhe(aid, aname, a_img, a_introduction);
		doFindallzuozhe(request, response);
	}

	// 修改作者信息
	private void doUpdatezuozhe(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String aid = request.getParameter("aid");
		String aname = request.getParameter("aname");
		String a_img = request.getParameter("a_img");
		String a_introduction = request.getParameter("a_introduction");
		authorDao.updatezuozhe(aid, aname, a_img, a_introduction);
		doFindallzuozhe(request, response);

	}

	// 删除作者信息
	private void doDelzuozhe(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String aid = request.getParameter("aid");
		authorDao.delzuozhe(aid);
		doFindallzuozhe(request, response);
	}

	// 查询所有作者
	private void doFindallzuozhe(HttpServletRequest request,
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
		int count = authorDao.getCount();

		int pageCount = count % size == 0 ? count / size : count / size + 1;

		if (page > pageCount) {
			page = pageCount;
		}

		List<Author> authors = authorDao.findall(page, size);
		Map map2 = new HashMap();
		map2.put("page", page);
		map2.put("size", size);
		map2.put("pageCount", pageCount);
		map2.put("count", count);
		map2.put("authors", authors);

		request.setAttribute("map2", map2);
		request.getRequestDispatcher("houtai2.jsp").forward(request, response);
	}
}
