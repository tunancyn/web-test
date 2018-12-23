package com.servlet.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.bean.Paper;
import com.dao.IPaperService;
import com.mybatis.PaperMyBatisService;

/**
 * Servlet implementation class JavaPaperByPage
 */
//@WebServlet("/JavaPaperByPage")
public class JavaPaperByPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JavaPaperByPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("do showjavapaperbypage");
		int pagenum=Integer.parseInt(request.getParameter("pagenum"));
		HttpSession session=request.getSession();
		SqlSession sqlsession=PaperMyBatisService.getSession();
		try{
			IPaperService service=sqlsession.getMapper(IPaperService.class);
			Map<String,Integer> map=new HashMap<String,Integer>();
			map.put("begin", (pagenum-1)*3);
			map.put("pages", 3);
			List<Paper> list=service.selectjavapages(map);
			session.setAttribute("javalist", list);
			request.getRequestDispatcher("WEB-INF/jsp/admin/questionmanager.jsp").forward(request, response);
		}finally{
			sqlsession.close();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
