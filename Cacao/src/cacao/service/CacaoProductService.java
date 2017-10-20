package cacao.service;

import java.util.List;

import cacao.model.vo.Info;
import cacao.session.CacaoProductRepository;


public class CacaoProductService {
	private static CacaoProductService service;
	
	public static CacaoProductService getInstance() {
		if(service == null)service = new CacaoProductService();
		return service;
	}
	
	private CacaoProductService() {
		
	}
	 
	CacaoProductRepository repo = new CacaoProductRepository();
	
//	public int getGroupId(){
//		return repo.getGroupId();
//	}
//	
//	public int insert( BoardRec rec ) {
//		return repo.insert( rec );
//	}
//	
	public List<Info> selectList() {
		return repo.selectList();
	}
	public List<Info> selectListhprice() {
		return repo.selectListhprice();
	}
	public List<Info> selectListlprice() {
		return repo.selectListlprice();
	}
	public List<Info> selectListsell() {
		return repo.selectListsell();
	}
	
	
	
	public List<Info> selectListLi() {
		return repo.selectListLi();
	}
	public List<Info> selectListhpriceLi() {
		return repo.selectListhpriceLi();
	}
	public List<Info> selectListlpriceLi() {
		return repo.selectListlpriceLi();
	}
	public List<Info> selectListsellLi() {
		return repo.selectListsellLi();
	}
	
	public List<Info> selectListAp() {
		return repo.selectListAp();
	}
	public List<Info> selectListhpriceAp() {
		return repo.selectListhpriceAp();
	}
	public List<Info> selectListlpriceAp() {
		return repo.selectListlpriceAp();
	}
	public List<Info> selectListsellAp() {
		return repo.selectListsellAp();
	}
	
	
	
	public List<Info> selectListDoll() {
		return repo.selectListDoll();
	}
	public List<Info> selectListhpriceDoll() {
		return repo.selectListhpriceDoll();
	}
	public List<Info> selectListlpriceDoll() {
		return repo.selectListlpriceDoll();
	}
	public List<Info> selectListsellDoll() {
		return repo.selectListsellDoll();
	}
	
	
	
	public List<Info> selectListCup() {
		return repo.selectListCup();
	}
	public List<Info> selectListhpriceCup() {
		return repo.selectListhpriceCup();
	}
	public List<Info> selectListlpriceCup() {
		return repo.selectListlpriceCup();
	}
	public List<Info> selectListsellCup() {
		return repo.selectListsellCup();
	}
	
	
	public List<Info> selectListPhone() {
		return repo.selectListPhone();
	}
	public List<Info> selectListhpricePhone() {
		return repo.selectListhpricePhone();
	}
	public List<Info> selectListlpricePhone() {
		return repo.selectListlpricePhone();
	}
	public List<Info> selectListsellPhone() {
		return repo.selectListsellPhone();
	}
	
	
	
	public List<Info> selectListShoes() {
		return repo.selectListShoes();
	}
	public List<Info> selectListhpriceShoes() {
		return repo.selectListhpriceShoes();
	}
	public List<Info> selectListlpriceShoes() {
		return repo.selectListlpriceShoes();
	}
	public List<Info> selectListsellShoes() {
		return repo.selectListsellShoes();
	}
	
	
	
}
