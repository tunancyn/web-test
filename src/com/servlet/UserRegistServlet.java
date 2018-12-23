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
			request.setAttribute("registMsg", "注册成功，验证已发至您邮箱，请从邮箱登录");
			PrintWriter out=new PrintWriter(response.getOutputStream(),true);
			out.println("注册成功，激活的登录连接已发至您邮箱，请从邮箱登录");
			//request.getRequestDispatcher("WEB-INF/jsp/user/regist.jsp");
			SimpleEmail emailSend = new SimpleEmail();
			emailSend.setHostName("smtp.163.com");
			try {
				emailSend.setAuthentication("413246753@163.com", "Apptree2009");//系统邮件的用户名和密码
				emailSend.setSSLOnConnect(true);
				emailSend.setFrom("413246753@163.com", "激活登录邮件");
				emailSend.setSubject("系统邮件，激活信息");//邮件的标题`	
				emailSend.setCharset("UTF-8");
				this.getServletContext().setAttribute("codename",name);
				emailSend.setMsg("http://10.101.222.57/exameonline/checkemail?name="+name);//邮件内容 携带一个激活的code
				emailSend.addTo(email);//邮件需要发送到 哪儿
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
