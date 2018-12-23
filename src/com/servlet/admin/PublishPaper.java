package com.servlet.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.bean.Paper;
import com.dao.IPaperService;
import com.mybatis.PaperMyBatisService;

/**
 * Servlet implementation class PublishPaper
 */
//@WebServlet("/PublishPaper")
public class PublishPaper extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PublishPaper() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("do publish paper");
		HttpSession session=request.getSession();
		SqlSession sqlsession=PaperMyBatisService.getSession();
		try{
			IPaperService service=sqlsession.getMapper(IPaperService.class);
			String papername=request.getParameter("papername");
			boolean publish=Boolean.parseBoolean(request.getParameter("publish"));
			System.out.println("update paper publish:"+papername+"publish:"+publish);//http://localhost/exameonline/publishpaper?paperid=
			Map<String,Object> map=new HashMap<String,Object>();
			map.put("publish", publish);
			map.put("name", papername);
			service.updatePublish(map);
			request.getRequestDispatcher("questionmanage").forward(request, response);
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
