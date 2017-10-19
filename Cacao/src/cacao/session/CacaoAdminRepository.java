package cacao.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import cacao.model.vo.Member;
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
	
	public List<QA> getAnswerList(String email){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			HashMap hash = new HashMap();
			hash.put("email", email);
		return sess.selectList(namespace+".answerList", hash);
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
//	public List<Comment> selectComment(){
//		SqlSession sess = getSqlSessionFactory().openSession();
//		//JDBC의 연결 객체 -> SqlSession
//		try {
//		return sess.selectList(namespace+".selectAll");
//		}finally {
//			sess.close();
//		}
//	}
//	
//	public Integer insertComment(Comment c){
//		SqlSession sess = getSqlSessionFactory().openSession();
//		
//		//JDBC의 연결 객체 -> SqlSession
//		try {
//		int result =  sess.insert(namespace + ".insertComment",c);
//		if(result > 0) {
//			sess.commit();
//		}else {
//			sess.rollback();
//		}
//		return result;
//		}finally {
//			sess.close();
//		}	
//			
//		
//	}
//
//	public Comment selectCommentByPk(Long cId) {
//		SqlSession sess = getSqlSessionFactory().openSession();
//		//JDBC의 연결 객체 -> SqlSession
//		try {
//		HashMap hasp = new HashMap();
//		hasp.put("cId", cId);
//		return sess.selectOne(namespace+".selectAll",hasp);
//		}finally {
//			sess.close();
//		}
//	}
//	
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
