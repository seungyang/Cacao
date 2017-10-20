package cacao.cmd.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Info;
import cacao.service.CacaoProductService;



public class CmdpCateCupView implements Cmd {
	private String next;

	public CmdpCateCupView( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
		HttpSession session = request.getSession();	
		
		List<Info> Cupresultall = CacaoProductService.getInstance().selectListCup();
		List<Info> Cupresulthall = CacaoProductService.getInstance().selectListhpriceCup();
		List<Info> Cupresultlall = CacaoProductService.getInstance().selectListlpriceCup();
		List<Info> Cupresultsell = CacaoProductService.getInstance().selectListsellCup();
		 
		 session.setAttribute("Cupresultall", Cupresultall);
		 session.setAttribute("Cupresulthall", Cupresulthall);
		 session.setAttribute("Cupresultlall", Cupresultlall);
		 session.setAttribute("Cupresultsell", Cupresultsell);
		
		
		return next;			
	}


}
