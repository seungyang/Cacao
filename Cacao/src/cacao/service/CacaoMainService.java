package cacao.service;

import cacao.model.vo.*;

import java.util.ArrayList;
import java.util.List;
import cacao.session.CacaoMainRepository;


public class CacaoMainService {
	private static CacaoMainService service;
	
	public static CacaoMainService getInstance() {
		if(service == null)service = new CacaoMainService();
		return service;
	}
	
	private CacaoMainService() {
		
	}
	 
	CacaoMainRepository repo = new CacaoMainRepository();
	
//	public ArrayList<Info> selectInfo(ArrayList<Info> list){
//		return repo.selectInfo(list);
//	}
//	
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
