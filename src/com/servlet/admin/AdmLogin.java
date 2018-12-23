package com.servlet.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdmLogin
 */
//@WebServlet("/AdmLogin")
public class AdmLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdmLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("do admin login");
		String name=request.getParameter("name").trim();
		String pwd=request.getParameter("pwd").trim();
		if("zhang san".equals(name) && "111".equals(pwd)){
			System.out.println("login");
			request.getRequestDispatcher("questionmanage").forward(request, response);
			//request.getRequestDispatcher("WEB-INF/jsp/admin/questionmanager.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("WEB-INF/jsp/admin/login.jsp").forward(request, response);
			System.out.println("error");
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
