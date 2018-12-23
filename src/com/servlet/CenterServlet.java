package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dao.IUserService;
import com.mybatis.MyBatisService;

/**
 * Servlet implementation class CenterServlet
 */
public class CenterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CenterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("do center");
		String name=(String)request.getSession().getAttribute("name");
		System.out.println("name:"+name);
		SqlSession sqlsession=MyBatisService.getSession();
		try{
			IUserService service=sqlsession.getMapper(IUserService.class);
			String email=service.selectEmail(name);
			request.getSession().setAttribute("email", email);
			request.getRequestDispatcher("WEB-INF/jsp/user/home/center.jsp").forward(request, response);
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
