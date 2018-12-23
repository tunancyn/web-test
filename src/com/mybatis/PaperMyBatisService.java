package com.mybatis;

import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class PaperMyBatisService {
	private static SqlSessionFactory factory = null;
	static{
		//
		try {
			factory = new SqlSessionFactoryBuilder().build(
				Resources.getResourceAsStream("mybatisPaper.xml"));//需要一个字节流对象
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
	//单例模式提供一个static的工厂方法返回factory
	public static SqlSession getSession(){
		return factory.openSession(true);//true代表自动提交
	}
	//单例模式 私有化构造函数
	private PaperMyBatisService(){
			
	}
}
