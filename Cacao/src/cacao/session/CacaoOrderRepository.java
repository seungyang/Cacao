package cacao.session;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import cacao.model.vo.Choose;
import cacao.model.vo.Deliver;
import cacao.model.vo.Order;



public class CacaoOrderRepository {
	private String namespace = "mapper.CacaoOrderMapper";
	
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
	public List<Choose> getItemList(String iid){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		HashMap hash = new HashMap();
		hash.put("iid", iid);
		return sess.selectList(namespace+".orderList",hash);
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
	public Integer insertOrder(Order order, String[] iCnt, String[] iId){
		SqlSession sess = getSqlSessionFactory().openSession();
		
		//JDBC의 연결 객체 -> SqlSession
		try {
			String str= sess.selectOne(namespace+".orderNextval");
			order.setoStr(str);
			
			int find = sess.selectOne(namespace+".findEmail",order);
			if(find < 1) {
				int findInsert = sess.insert(namespace + ".insertEmail",order);
				if(findInsert > 0) {
					sess.commit();
				}else {
					sess.rollback();
				}
			}
			int result1 =  sess.insert(namespace + ".orderInsert",order);
			if(result1 > 0) {
				int result2 = 0;
				for(int i = 0; i < iCnt.length;i++) {
					Deliver d = new Deliver();
					d.setOlDid(str);
					d.setOlEmail(order.getmEmail());
					d.setOlIid(iId[i]);
					d.setOlOcnt(iCnt[i]);
								
					result2 +=  sess.insert(namespace+".itemInsert",d);
				}			
				if(result2 == iCnt.length) {
					sess.commit();
				}
				else {
					sess.rollback();
					return 0;
				}
			}else {
				sess.rollback();
			}
			return result1;
		}finally {
			sess.close();
		}	
	}

}
