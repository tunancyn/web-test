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

import com.bean.Paper;
import com.bean.User;
import com.dao.IPaperService;
import com.dao.IUserService;
import com.mybatis.MyBatisService;
import com.mybatis.PaperMyBatisService;

/**
 * Servlet implementation class UserManage
 */
//@WebServlet("/UserManage")
public class UserManage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserManage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("do usermanager");
		HttpSession session=request.getSession();
		SqlSession sqlsession=MyBatisService.getSession();
		try{
			IUserService service=sqlsession.getMapper(IUserService.class);
			int num=service.selectNum();
			int pages=num%10==0?num/10:num/10+1;
			List<Integer> userpages=new ArrayList<Integer>(10);
			//
			for(int i=0;i<pages;++i){
				userpages.add(i+1);  
			}
			session.setAttribute("userpages", userpages);
			System.out.println("pages:"+pages);
			Map<String,Integer> map=new HashMap<String,Integer>(10);
			map.put("begin", 0);
			map.put("pages", 10);
			List<User> list=service.selectuserpages(map);
			session.setAttribute("userlist", list);
			//System.out.println(list.toString());
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
