package cacao.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import cacao.model.vo.Member;
import cacao.model.vo.Order;


public class CacaoLoginRepository {
	private String namespace = "mapper.CacaoLoginMapper";

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
	public Integer selectLogin(Member member){
		SqlSession sess = getSqlSessionFactory().openSession();

		//JDBC의 연결 객체 -> SqlSession
		try {

			int result1 =  sess.selectOne(namespace + ".selectLogin",member);

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

	public List<Member> findEmail(String findNick, String findBirth){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			HashMap hash = new HashMap();
			hash.put("findNick", findNick);
			hash.put("findBirth", findBirth);
			return sess.selectList(namespace+".findEmail",hash);
		}finally {
			sess.close();
		}		
	}
	public int findPwd(Member m) {
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
			return sess.selectOne(namespace+".findPwd",m);
		}finally {
			sess.close();
		}		
	}

	public int updatePwd(Member m) {
		SqlSession sess = getSqlSessionFactory().openSession();

		//JDBC의 연결 객체 -> SqlSession
		try {

			int result1 =  sess.update(namespace + ".updatePwd",m);

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
