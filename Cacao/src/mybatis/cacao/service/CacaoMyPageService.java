package mybatis.cacao.service;

import mybatis.cacao.session.CacaoMyPageRepository;




public class CacaoMyPageService {
	private static CacaoMyPageService service;
	
	public static CacaoMyPageService getInstance() {
		if(service == null)service = new CacaoMyPageService();
		return service;
	}
	
	private CacaoMyPageService() {
		
	}
	 
	CacaoMyPageRepository repo = new CacaoMyPageRepository();
	
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
