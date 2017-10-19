package cacao.service;

import java.util.List;

import cacao.model.vo.Deliver;
import cacao.model.vo.Info;
import cacao.model.vo.Order;
import cacao.model.vo.OrderId;
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
	
	public Info getItemList(String id){
		return repo.getItemList(id);		
	}
	public OrderId insertOrder( Order order, String[] iCnt, String[] iId) {
		return repo.insertOrder(order, iCnt, iId);
	}
	public List<Deliver> deliverList( String dId) {
		return repo.deliverList(dId);
	}
	
	

}
