package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.bean.Paper;
import com.bean.User;
import com.dao.IPaperService;
import com.dao.IUserService;
import com.mybatis.MyBatisService;
import com.mybatis.PaperMyBatisService;

/**
 * Servlet implementation class CheckLogin
 */
//@WebServlet("/checkregist")
public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("do Login");
		/*System.out.println("referer:"+request.getHeader("referer"));
		System.out.println("host:"+request.getHeader("Host"));*/
		String name=request.getParameter("name");
		String pwd=request.getParameter("password");
		SqlSession session=MyBatisService.getSession();
		try{
			IUserService service=session.getMapper(IUserService.class);
			User user=service.selectUserByName(name);
			if(user!=null && user.getPassword().equals(pwd)==true){
				if(user.getActive()){
					//登录成功
					//request.getRequestDispatcher("WEB-INF/jsp/user/main.jsp").forward(request, response);
					request.getSession().setAttribute("name", name);
					request.getSession().setAttribute("loginstate", true);
					//response.sendRedirect("index.html");
					request.getRequestDispatcher("online").forward(request, response);
					/*SqlSession sqlsession=PaperMyBatisService.getSession();
					try{
						IPaperService paperservice=sqlsession.getMapper(IPaperService.class);
						int num=paperservice.selectNum();
						int pages=num%3==0?num/3:num/3+1;
						List<Integer> javapages=new ArrayList<Integer>();
						//
						for(int i=0;i<pages;++i){
							javapages.add(i+1);
						}
						request.getSession().setAttribute("javapages", javapages);
						System.out.println("javapages:"+pages);
						Map<String,Integer> map=new HashMap<String,Integer>();
						map.put("begin", 0);
						map.put("pages", 3);
						List<Paper> list=paperservice.selectjavapages(map);
						request.getSession().setAttribute("javalist", list);
						System.out.println(list.toString());
						request.getRequestDispatcher("WEB-INF/jsp/user/exame/online.jsp").forward(request, response);
					}finally{
						sqlsession.close();
					}*/
					
				}else{
					//没有激活
					request.setAttribute("errorMsg", "账号没有激活请在邮箱激活");
					request.getRequestDispatcher("WEB-INF/jsp/user/login.jsp").forward(request, response);
				}
			}else{
				request.setAttribute("errorMsg", "用户名或密码错误请重试");
				request.getRequestDispatcher("WEB-INF/jsp/user/login.jsp").forward(request, response);
			}
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
