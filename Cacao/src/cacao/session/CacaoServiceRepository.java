package cacao.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import cacao.model.vo.Service;


public class CacaoServiceRepository {
	private String namespace = "mapper.CacaoServiceMapper";
	
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
	
	public List<Service> getNoticeList(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectNotice");
		}finally {
			sess.close();
		}
	}
	public List<Service> getFaqList(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectFaq");
		}finally {
			sess.close();
		}
	}
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
