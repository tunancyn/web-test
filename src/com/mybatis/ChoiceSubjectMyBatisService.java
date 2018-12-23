package com.mybatis;

import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ChoiceSubjectMyBatisService {
	private static SqlSessionFactory factory = null;
	static{
		//
		try {
			factory = new SqlSessionFactoryBuilder().build(
				Resources.getResourceAsStream("mybatisChoiceSubject.xml"));//��Ҫһ���ֽ�������
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
	//����ģʽ�ṩһ��static�Ĺ�����������factory
	public static SqlSession getSession(){
		return factory.openSession(true);//true�����Զ��ύ
	}
	//����ģʽ ˽�л����캯��
	private ChoiceSubjectMyBatisService(){
			
	}
}
