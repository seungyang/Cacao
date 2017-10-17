package cacao.service;

import java.util.List;

import cacao.model.vo.Choose;
import cacao.model.vo.Info;
import cacao.model.vo.Order;
import cacao.model.vo.QA;
import cacao.session.CacaoOrderRepository;




public class CacaoOrderService {
	private static CacaoOrderService service;
	
	public static CacaoOrderService getInstance() {
		if(service == null)service = new CacaoOrderService();
		return service;
	}
	
	private CacaoOrderService() {
		
	}
	 
	CacaoOrderRepository repo = new CacaoOrderRepository();
	
	public List<Choose> getItemList(String iid){
		return repo.getItemList(iid);		
	}
//	public int getGroupId(){
//		return repo.getGroupId();
//	}
//	
	public int insertOrder( Order order ) {
		return repo.insertOrder(order);
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
