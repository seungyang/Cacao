package cacao.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import cacao.model.vo.Info;
import cacao.model.vo.Order;
import cacao.model.vo.QA;


public class CacaoYourPageRepository {
	private String namespace = "mapper.CacaoYourPageMapper";

	SqlSessionFactory getSqlSessionFactory(){
		InputStream in = null;
		try {
			in = Resources.getResourceAsStream("mybatis-config.xml");
		}catch(Exception ex) {
			System.out.println("마이바티즈 설정 실패:"+ex.getMessage());
		}
		SqlSessionFactory sessFac = new SqlSessionFactoryBuilder().build(in);
		return sessFac;
	}

	public List<Order> getOrderList(String email, String oId) {

		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			HashMap hash = new HashMap();
			hash.put("email", email);
			hash.put("oId", oId);
			return sess.selectList(namespace+".orderList",hash);
		}finally {
			sess.close();
		}
	}

	public List<Order> getOrderListDetail(String email,String orderid) {

		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			HashMap hash = new HashMap();
			hash.put("email", email);
			hash.put("orderid", orderid);
			return sess.selectList(namespace+".orderListDetail",hash);
		}finally {
			sess.close();
		}
	}

	
}
