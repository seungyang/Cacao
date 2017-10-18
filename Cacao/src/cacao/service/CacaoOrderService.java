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
	public int insertOrder( Order order, String[] iCnt, String[] iId) {
		return repo.insertOrder(order, iCnt, iId);
	}

}
