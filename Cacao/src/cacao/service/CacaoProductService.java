package cacao.service;

import java.util.List;

import cacao.model.vo.Info;
import cacao.session.CacaoProductRepository;


public class CacaoProductService {
	private static CacaoProductService service;
	
	public static CacaoProductService getInstance() {
		if(service == null)service = new CacaoProductService();
		return service;
	}
	
	private CacaoProductService() {
		
	}
	 
	CacaoProductRepository repo = new CacaoProductRepository();
	
//	public int getGroupId(){
//		return repo.getGroupId();
//	}
//	
//	public int insert( BoardRec rec ) {
//		return repo.insert( rec );
//	}
//	
	public List<Info> selectList() {
		return repo.selectList();
	}
	public List<Info> selectListhprice() {
		return repo.selectListhprice();
	}
	public List<Info> selectListlprice() {
		return repo.selectListlprice();
	}
	public List<Info> selectListsell() {
		return repo.selectListsell();
	}
	
	
	
	public List<Info> selectListLi() {
		return repo.selectListLi();
	}
	public List<Info> selectListhpriceLi() {
		return repo.selectListhpriceLi();
	}
	public List<Info> selectListlpriceLi() {
		return repo.selectListlpriceLi();
	}
	public List<Info> selectListsellLi() {
		return repo.selectListsellLi();
	}
//	
//	public BoardRec selectById(int id){
//		return repo.selectById(id);
//	}
//	public void increaseReadCount( String article_id ){
//		repo.increaseReadCount(article_id );
//	}
//	public int update( BoardRec rec ){
//		return repo.update(rec);
//	}
//	public int delete( int article_id, String password ){
//		return repo.delete(article_id,password );
//	}
//	public String selectLastSequenceNumber( String maxSeqNum, String minSeqNum ){
//		return repo.selectLastSequenceNumber(maxSeqNum,minSeqNum );
//	}
//	
//	public int getTotalCount(){
//		return repo.getTotalCount();
//	}
}
