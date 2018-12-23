package com.servlet.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ShowModifyMsg
 */
//@WebServlet("/ShowModifyMsg")
public class ShowModifyMsg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowModifyMsg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("do showmodifymsg");
		String name=request.getParameter("name");
		String pwd=request.getParameter("pwd");
		String email=request.getParameter("email");
		String active=request.getParameter("active");
		System.out.println(name+":"+pwd+":"+email+":"+active);
		HttpSession session=request.getSession();
		session.setAttribute("name", name);
		session.setAttribute("pwd", pwd);
		session.setAttribute("email", email);
		session.setAttribute("active", active);
		request.getRequestDispatcher("WEB-INF/jsp/admin/usermg/modify.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
