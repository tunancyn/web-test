package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
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
import com.bean.User;
import com.dao.IPaperService;
import com.dao.IUserService;
import com.mybatis.MyBatisService;
import com.mybatis.PaperMyBatisService;

/**
 * Servlet implementation class MainToOnline
 */
//@WebServlet("/MainToOnline")
public class ToOnline extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToOnline() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("do MainToOnine");
		HttpSession session=request.getSession();
		SqlSession sqlsession=PaperMyBatisService.getSession();
		try{
			IPaperService service=sqlsession.getMapper(IPaperService.class);
			int num=service.selectNum();
			int pages=num%3==0?num/3:num/3+1;
			List<Integer> javapages=new ArrayList<Integer>();
			//
			for(int i=0;i<pages;++i){
				javapages.add(i+1);
			}
			session.setAttribute("javapages", javapages);
			System.out.println("javapages:"+pages);
			Map<String,Integer> map=new HashMap<String,Integer>();
			map.put("begin", 0);
			map.put("pages", 3);
			List<Paper> list=service.selectjavapages(map);
			session.setAttribute("javalist", list);
			System.out.println(list.toString());
			request.getRequestDispatcher("WEB-INF/jsp/user/exame/online.jsp").forward(request, response);
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
