package cacao.session;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import cacao.model.vo.Info;

 

public class CacaoProductRepository {
	private String namespace = "mapper.CacaoProductMapper";
	
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
	
	public List<Info> selectList(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAll");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListhprice(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllhprice");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListlprice(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAlllprice");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListsell(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllsell");
		}finally {
			sess.close();
		}
	}
	
	
	
	public List<Info> selectListLi(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllLi");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListhpriceLi(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllhpriceLi");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListlpriceLi(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAlllpriceLi");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListsellLi(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllsellLi");
		}finally {
			sess.close();
		}
	}
	
	
	
	public List<Info> selectListAp(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllAp");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListhpriceAp(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllhpriceAp");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListlpriceAp(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAlllpriceAp");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListsellAp(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllsellAp");
		}finally {
			sess.close();
		}
	}
	
 	
	
	public List<Info> selectListDoll(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllDoll");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListhpriceDoll(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllhpriceDoll");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListlpriceDoll(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAlllpriceDoll");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListsellDoll(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllsellDoll");
		}finally {
			sess.close();
		}
	}
	
	
	
	
	public List<Info> selectListCup(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllCup");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListhpriceCup(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllhpriceCup");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListlpriceCup(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAlllpriceCup");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListsellCup(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllsellCup");
		}finally {
			sess.close();
		}
	}
	
	
	
	
	
	public List<Info> selectListPhone(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllPhone");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListhpricePhone(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllhpricePhone");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListlpricePhone(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAlllpricePhone");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListsellPhone(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllsellPhone");
		}finally {
			sess.close();
		}
	}
	
	
	
	public List<Info> selectListShoes(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllShoes");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListhpriceShoes(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllhpriceShoes");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListlpriceShoes(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAlllpriceShoes");
		}finally {
			sess.close();
		}
	}
	
	public List<Info> selectListsellShoes(){
		SqlSession sess = getSqlSessionFactory().openSession();
		//JDBC의 연결 객체 -> SqlSession
		try {
		return sess.selectList(namespace+".selectAllsellShoes");
		}finally {
			sess.close();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	

}
