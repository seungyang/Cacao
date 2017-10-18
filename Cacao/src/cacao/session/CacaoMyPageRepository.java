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


public class CacaoMyPageRepository {
	private String namespace = "mapper.CacaoMyPageMapper";

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

	public List<Info> selectList(String email){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			HashMap hash = new HashMap();
			hash.put("email", email);
			return sess.selectList(namespace+".selectAll",hash);
		}finally {
			sess.close();
		}
	}

	public List<QA> getQaList(String email){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			HashMap hash = new HashMap();
			hash.put("email", email);
			return sess.selectList(namespace+".qaList",hash);
		}finally {
			sess.close();
		}

	}

	public Integer getInsert(QA q){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			int result =  sess.insert(namespace + ".insertQA",q);
			if(result > 0) {
				sess.commit();
			}else {
				sess.rollback();
			}
			return result;
		}finally {
			sess.close();
		}	


	}

	public List<Order> getOrderList(String email) {

		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			HashMap hash = new HashMap();
			hash.put("email", email);
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

	public List<Order> getCancelList(String email) {

		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			HashMap hash = new HashMap();
			hash.put("email", email);
			return sess.selectList(namespace+".cancelList",hash);
		}finally {
			sess.close();
		}
	}
	public List<Order> getCancelListDetail(String email,String orderid) {

		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			HashMap hash = new HashMap();
			hash.put("email", email);
			hash.put("orderid", orderid);
			return sess.selectList(namespace+".cancelListDetail",hash);
		}finally {
			sess.close();
		}
	}
	public int getUpdateCancel(String orderid) {

		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			HashMap hash = new HashMap();
			hash.put("orderid", orderid);

			int result = sess.update(namespace+".updateCancel",hash);
			if(result > 0) {
				sess.commit();
			}else {
				sess.rollback();
			}
			return result;
		}finally {
			sess.close();
		}	
	}
	//	public int update(Long cId,String UserId,String CommentContent,String RegDate ) {
	//		SqlSession sess = getSqlSessionFactory().openSession();
	//		//JDBC의 연결 객체 -> SqlSession
	//		try {
	//		HashMap hasp = new HashMap();
	//		hasp.put("cId", cId);
	//		hasp.put("UserId", UserId);
	//		hasp.put("CommentContent", CommentContent);
	//		hasp.put("RegDate", RegDate);
	//		int result = sess.update(namespace+".update",hasp);
	//		if(result > 0) {
	//			sess.commit();
	//		}else {
	//			sess.rollback();
	//		}
	//		return result;
	//		
	//		}finally {
	//			sess.close();
	//		}
	//	}
}
