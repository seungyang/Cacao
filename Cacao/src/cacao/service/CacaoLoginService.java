package cacao.service;

import cacao.model.vo.Member;
import cacao.model.vo.Order;
import cacao.session.CacaoLoginRepository;




public class CacaoLoginService {
	private static CacaoLoginService service;
	
	public static CacaoLoginService getInstance() {
		if(service == null)service = new CacaoLoginService();
		return service;
	}
	
	private CacaoLoginService() {
		
	}
	 
	CacaoLoginRepository repo = new CacaoLoginRepository();
	
	public int selectLogin( Member member ) {
		return repo.selectLogin(member);
	}
	
//	public int getGroupId(){
//		return repo.getGroupId();
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
