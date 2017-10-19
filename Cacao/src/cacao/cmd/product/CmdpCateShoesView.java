package cacao.cmd.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Info;
import cacao.service.CacaoProductService;



public class CmdpCateShoesView implements Cmd {
	private String next;

	public CmdpCateShoesView( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
		HttpSession session = request.getSession();	
		
		List<Info> Shoesresultall = CacaoProductService.getInstance().selectListShoes();
		List<Info> Shoesresulthall = CacaoProductService.getInstance().selectListhpriceShoes();
		List<Info> Shoesresultlall = CacaoProductService.getInstance().selectListlpriceShoes();
		List<Info> Shoesresultsell = CacaoProductService.getInstance().selectListsellShoes();
		 
		 session.setAttribute("Shoesresultall", Shoesresultall);
		 session.setAttribute("Shoesresulthall", Shoesresulthall);
		 session.setAttribute("Shoesresultlall", Shoesresultlall);
		 session.setAttribute("Shoesresultsell", Shoesresultsell);
		
		
		return next;			
	}


}
