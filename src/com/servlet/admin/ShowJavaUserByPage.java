package com.servlet.admin;

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

import com.bean.User;
import com.dao.IUserService;
import com.mybatis.MyBatisService;

/**
 * Servlet implementation class ShowJavaUserByPage
 */
//@WebServlet("/ShowJavaUserByPage")
public class ShowJavaUserByPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowJavaUserByPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("do showjavauserbypage");
		HttpSession session=request.getSession();
		SqlSession sqlsession=MyBatisService.getSession();
		try{
			IUserService service=sqlsession.getMapper(IUserService.class);
			int pagenum=Integer.parseInt(request.getParameter("pagenum"));
			Map<String,Integer> map=new HashMap<String,Integer>(10);
			map.put("begin", (pagenum-1)*10);
			map.put("pages", 10);
			List<User> list=service.selectuserpages(map);
			session.setAttribute("userlist", list);
			System.out.println(list.toString());
			request.getRequestDispatcher("WEB-INF/jsp/admin/usermanager.jsp").forward(request, response);
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
