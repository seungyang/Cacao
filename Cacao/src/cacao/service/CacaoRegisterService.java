package cacao.service;

import cacao.model.vo.Member;
import cacao.session.CacaoRegisterRepository;


public class CacaoRegisterService {
	private static CacaoRegisterService service;
	
	public static CacaoRegisterService getInstance() {
		if(service == null)service = new CacaoRegisterService();
		return service;
	}
	
	private CacaoRegisterService() {
		
	}
	 
	CacaoRegisterRepository repo = new CacaoRegisterRepository();
	
//	public int getGroupId(){
//		return repo.getGroupId();
//	}
//	
	public int getInsert( Member m ) {
		return repo.getInsert(m);
	}
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
