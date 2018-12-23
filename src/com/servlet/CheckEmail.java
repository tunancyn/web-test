package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dao.IUserService;
import com.mybatis.MyBatisService;

/**
 * Servlet implementation class CheckEmail
 */
public class CheckEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckEmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("do checkemail");
		String name=(String) request.getParameter("name");
		SqlSession session=MyBatisService.getSession();
		try{
			IUserService service=session.getMapper(IUserService.class);
			service.updateActive(name);
			request.setAttribute("errorMsg", "¼¤»î³É¹¦£¬ÇëµÇÂ¼");
			request.getRequestDispatcher("WEB-INF/jsp/user/login.jsp").forward(request, response);
		}finally{
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
