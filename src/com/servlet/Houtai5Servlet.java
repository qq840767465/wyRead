package com.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.Request;

import com.dao.BclassDao;
import com.pojo.Bclass;

public class Houtai5Servlet extends HttpServlet {

	private BclassDao bclassDao = new BclassDao();

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String method = request.getParameter("method");

		if ("findall".equals(method)) {
			doFindall(request, response);
		}
		if("del".equals(method)){
			doDel(request,response);
		}
		if("xinzeng".equals(method)){
			doXinzeng(request,response);
		}
		if("xiugai".equals(method)){
			doXiugai(request,response);
		}
	}
	//修改书籍类别信息
	private void doXiugai(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String bc_id = request.getParameter("bc_id");
		String bcname = request.getParameter("bcname");
		String bcname1 = request.getParameter("bcname1");
		int n = bclassDao.xiugai(bc_id, bcname, bcname1);
		if(n==1){
			System.out.println("修改成功");
		}
		doFindall(request, response);
	}
	//新增书籍类别
	private void doXinzeng(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String bc_id = request.getParameter("bc_id");
		String bcname = request.getParameter("bcname");
		String bcname1 = request.getParameter("bcname1");
		int n  = bclassDao.xinzeng(bc_id, bcname, bcname1);
		if(n==1){
			System.out.println("新增成功");
		}
		doFindall(request, response);
	}
	//删除书籍类别
	private void doDel(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String bc_id = request.getParameter("bc_id");
		int n = bclassDao.delbclass(bc_id);
		if(n==1){
			System.out.println("删除成功");
		}
		doFindall(request, response);
	}

	// 分页查询
	private void doFindall(HttpServletRequest request,
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

		if (page < 1) {
			page = 1;
		}
		// 得到总条数
		int count = bclassDao.getCount();
		int pageCount = count % size == 0 ? count / size : count / size + 1;
		
		if(page>pageCount)
		{
			page = pageCount;
		}
		List<Bclass> bclasses = bclassDao.findall(page, size);
		Map map5 = new HashMap();
		map5.put("page", page);
		map5.put("size", size);
		map5.put("pageCount", pageCount);
		map5.put("count", count);
		map5.put("bclasses", bclasses);

		request.setAttribute("map5", map5);
		request.getRequestDispatcher("houtai5.jsp").forward(request, response);
		
	}
}
