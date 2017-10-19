package cacao.service;

import java.util.List;

import cacao.model.vo.Info;
import cacao.model.vo.Order;
import cacao.model.vo.QA;
import cacao.session.CacaoMyPageRepository;




public class CacaoYourPageService {
	private static CacaoYourPageService service;
	
	public static CacaoYourPageService getInstance() {
		if(service == null)service = new CacaoYourPageService();
		return service;
	}
	
	private CacaoYourPageService() {
		
	}
	 
	CacaoMyPageRepository repo = new CacaoMyPageRepository();
	
	public List<Info> selectList(String email) {
		return repo.selectList(email);
	}
	public List<QA> getQaList(String email){
		return repo.getQaList(email);		
	}
	public int getInsert(QA q){
		return repo.getInsert(q);
	}
	public List<Order> orderList(String email) {
		return repo.getOrderList(email);
	}
	public List<Order> orderListDetail(String email,String orderid) {
		return repo.getOrderListDetail(email,orderid);
	}
	public List<Order> cancelList(String email) {
		return repo.getCancelList(email);
	}
	public List<Order> cancelListDetail(String email,String orderid) {
		return repo.getCancelListDetail(email,orderid);
	}
	public int updateCancel(String orderid) {
		return repo.getUpdateCancel(orderid);
	}
	
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
