package cacao.service;

import java.util.List;

import cacao.model.vo.Service;
import cacao.session.CacaoServiceRepository;


public class CacaoService {
	private static CacaoService service;
	
	public static CacaoService getInstance() {
		if(service == null)service = new CacaoService();
		return service;
	}
	
	private CacaoService() {
		
	}
	 
	CacaoServiceRepository repo = new CacaoServiceRepository();
	
	public List<Service> getNoticeList(){
		return repo.getNoticeList();
	}
	
	public List<Service> getFaqList(){
		return repo.getFaqList();
	}
	
//	public int insert( BoardRec rec ) {
//		return repo.insert( rec );
//	}
//	
//	public List<BoardRec> selectList(int firstrow,int endrow) {
//		return repo.selectList(firstrow,endrow);
//	}
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
