package com.servlet.admin;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.bean.User;
import com.dao.IUserService;
import com.mybatis.MyBatisService;

/**
 * Servlet implementation class Modify
 */
//@WebServlet("/Modify")
public class Modify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Modify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("do usermodify");
		HttpSession session = request.getSession();
		String username=(String) session.getAttribute("name");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String email=request.getParameter("email");
		Boolean active=Boolean.parseBoolean(request.getParameter("active"));
		System.out.println(username+":"+name);
		SqlSession sqlsession=MyBatisService.getSession();
		try{
			IUserService service=sqlsession.getMapper(IUserService.class);
			if(name!=null && pwd!=null && email!=null && active!=null){
				User user=service.selectUserByName(name);
				if(user!=null){
					session.setAttribute("errmsg", "用户名已存在，请重新输入");
					request.getRequestDispatcher("WEB-INF/jsp/admin/usermg/modify.jsp").forward(request, response);
					return;
				}else if(name.equals(username) && pwd.equals(session.getAttribute("pwd")) && email.equals(session.getAttribute("email")) && active.equals(session.getAttribute("active"))){
					session.setAttribute("errmsg", "信息没有修改，请重新输入");
					request.getRequestDispatcher("WEB-INF/jsp/admin/usermg/modify.jsp").forward(request, response);
				}else{
					service.deleteByname(username);
					service.insert(new User(name,pwd,email,active));
					session.setAttribute("name", name);
					session.setAttribute("pwd", pwd);
					session.setAttribute("email", email);
					session.setAttribute("active", active);
					session.setAttribute("errmsg", "信息修改成功");
					request.getRequestDispatcher("modifyuser").forward(request, response);
					return;
				}
			}
			session.setAttribute("errmsg", "信息不完全，请重输");
			request.getRequestDispatcher("WEB-INF/jsp/admin/usermg/modify.jsp").forward(request, response);
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
