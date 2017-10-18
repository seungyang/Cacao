package cacao.service;

import cacao.model.vo.Member;
import cacao.session.CacaoAdminRepository;





public class CacaoAdminService {
	private static CacaoAdminService service;
	
	public static CacaoAdminService getInstance() {
		if(service == null)service = new CacaoAdminService();
		return service;
	}
	
	private CacaoAdminService() {
		
	}
	 
	CacaoAdminRepository repo = new CacaoAdminRepository();
	
	public int selectAdminLogin( Member member ) {
		return repo.selectAdminLogin(member);
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
