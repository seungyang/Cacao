package cacao.session;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import cacao.model.vo.Info;
import cacao.model.vo.Member;
import cacao.model.vo.Order;
import cacao.model.vo.QA;
import cacao.model.vo.Service;


public class CacaoAdminRepository {
	private String namespace = "mapper.CacaoAdminMapper";
	
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
	public Integer selectAdminLogin(Member member){
		SqlSession sess = getSqlSessionFactory().openSession();
		
		//JDBC의 연결 객체 -> SqlSession
		try {
			
			int result1 =  sess.selectOne(namespace + ".selectAdminLogin",member);
		
		if(result1 > 0) {
			sess.commit();
		}else {
			sess.rollback();
		}
		return result1;
		}finally {
			sess.close();
		}	
	}
	
	
	public List<QA> getAnswerList(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".answerList");
		}finally {
			sess.close();
		}
	}
	
	public Integer getAnswerTextList(QA qa){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			int result =  sess.update(namespace+".answerTextList",qa);
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
	
	
	public List<Service> getServiceList(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectService");
		}finally {
			sess.close();
		}
	}
	public Integer serviceInsert(Service service){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			int result =  sess.insert(namespace + ".serviceInsert",service);
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
	public Integer serviceModify(Service service){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			int result =  sess.insert(namespace + ".serviceModify",service);
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
	
	public List<Order> getOrderList(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectOrder");
		}finally {
			sess.close();
		}
	}
	public Integer orderModify(Order order){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			int result =  sess.update(namespace + ".orderModify",order);
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
	public Integer orderModify1(Order order){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			int result =  sess.update(namespace + ".orderModify1",order);
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
	public List<Info> getInfoList(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			
		return sess.selectList(namespace+".infolist");
		}finally {
			sess.close();
		}
	}
	public Integer infoInsert(Info info){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			int result =  sess.insert(namespace + ".infoInsert",info);
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
	public Integer infoModify(Info info){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			int result =  sess.insert(namespace + ".infoModify",info);
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
}
















	