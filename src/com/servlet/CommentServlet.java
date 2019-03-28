package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CommentDao;

public class CommentServlet extends HttpServlet {

	private CommentDao commentDao = new CommentDao();

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String method = request.getParameter("method");
		String uid = request.getParameter("uid");
		String bid = request.getParameter("bid");

		if ("addthumbs".equals(method)) {
			doAddthumbs(request, response);
		}

		if ("pinglun".equals(method)) {
			doAddpinglun(request, response, uid, bid);
		}
	}

	// 添加评论信息
	private void doAddpinglun(HttpServletRequest request,
			HttpServletResponse response, String uid, String bid)
			throws IOException, ServletException {
		String pinglun = request.getParameter("pinglun");
		if (pinglun.length()==0) {
			
		}
		else{
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String ptime = sdf.format(dt);
		
		commentDao.addpinglun(pinglun, uid, bid, ptime);
		System.out.println(ptime);
		response.sendRedirect("xiangqing.do?method=findbyid&bid=" + bid);
	}
	
}
	// 点赞
	private void doAddthumbs(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		
		String cid = request.getParameter("cid");
		int c = Integer.parseInt(cid);
		int n = commentDao.addthumbs(c);
		int a = commentDao.thumbs(c);
		
		response.getWriter().print(""+a);
	}
}
