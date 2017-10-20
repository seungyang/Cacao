package cacao.service;

import java.util.List;

import cacao.model.vo.Info;
import cacao.model.vo.Member;
import cacao.model.vo.Order;
import cacao.model.vo.QA;
import cacao.model.vo.Service;
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
	
	public List<QA> getAnswerList(){
		return repo.getAnswerList();		
	}
	
	public int getAnswerTextList(QA qa){
		return repo.getAnswerTextList(qa);		
	}
	
	
	public List<Service> getServiceList(){
		return repo.getServiceList();
	}
	public int serviceInsert(Service service){
		return repo.serviceInsert(service);
	}
	public int serviceModify(Service service){
		return repo.serviceModify(service);
	}
	
	public List<Order> getOrderList(){
		return repo.getOrderList();
	}
	public int orderModify(Order order){
		return repo.orderModify(order);
	}
	public int orderModify1(Order order){
		return repo.orderModify1(order);
	}
	
	public List<Info> getInfoList(){
		return repo.getInfoList();	 	
	}
	
	public int infoInsert(Info info){
		return repo.infoInsert(info);
	}
	
	public int infoModify(Info info){
		return repo.infoModify(info);
	}
	
}




















