package com.servlet;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.apache.ibatis.session.SqlSession;

import com.bean.User;
import com.dao.IUserService;
import com.mybatis.MyBatisService;

/**
 * Servlet implementation class UserRegistServlet
 */
public class UserRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegistServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("do Regist");
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		SqlSession session=MyBatisService.getSession();
		try{
			IUserService service=session.getMapper(IUserService.class);
			User user=new User(name,password,email);
			service.insert(user);
			request.setAttribute("registMsg", "ע��ɹ�����֤�ѷ��������䣬��������¼");
			PrintWriter out=new PrintWriter(response.getOutputStream(),true);
			out.println("ע��ɹ�������ĵ�¼�����ѷ��������䣬��������¼");
			//request.getRequestDispatcher("WEB-INF/jsp/user/regist.jsp");
			SimpleEmail emailSend = new SimpleEmail();
			emailSend.setHostName("smtp.163.com");
			try {
				emailSend.setAuthentication("413246753@163.com", "Apptree2009");//ϵͳ�ʼ����û���������
				emailSend.setSSLOnConnect(true);
				emailSend.setFrom("413246753@163.com", "�����¼�ʼ�");
				emailSend.setSubject("ϵͳ�ʼ���������Ϣ");//�ʼ��ı���`	
				emailSend.setCharset("UTF-8");
				this.getServletContext().setAttribute("codename",name);
				emailSend.setMsg("http://10.101.222.57/exameonline/checkemail?name="+name);//�ʼ����� Я��һ�������code
				emailSend.addTo(email);//�ʼ���Ҫ���͵� �Ķ�
				emailSend.send();
			} catch (EmailException e) {
				e.printStackTrace();
			}
		}finally{
			session.close();
		}
	}
	//http://localhost/exameonline/userregist?name=d&password=111&repassword=111&email=111%40qq.com

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
