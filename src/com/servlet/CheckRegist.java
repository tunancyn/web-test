package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.bean.User;
import com.dao.IUserService;
import com.mybatis.MyBatisService;

/**
 * Servlet implementation class CheckRegist
 */
//@WebServlet("/checkregist")
public class CheckRegist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckRegist() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("do checkRegistName");
		PrintWriter out = new PrintWriter(response.getOutputStream(), true);
		String name=request.getParameter("name");
		SqlSession session=MyBatisService.getSession();
		try{
			IUserService service=session.getMapper(IUserService.class);
			User user=service.selectUserByName(name);
			if(user==null){
				out.println("no");
				System.out.println("no");
			}else{
				out.println("yes");
				System.out.println("yes");
			}
		}finally{
			out.close();
			session.close();
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
