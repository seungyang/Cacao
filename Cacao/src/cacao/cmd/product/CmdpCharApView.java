package cacao.cmd.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Info;
import cacao.service.CacaoProductService;



public class CmdpCharApView implements Cmd {
	private String next;

	public CmdpCharApView( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
		
		
		HttpSession session = request.getSession();
		
		List<Info> Apresultall = CacaoProductService.getInstance().selectListAp();
		List<Info> Apresulthall = CacaoProductService.getInstance().selectListhpriceAp();
		List<Info> Apresultlall = CacaoProductService.getInstance().selectListlpriceAp();
		List<Info> Apresultsell = CacaoProductService.getInstance().selectListsellAp();
		 session.setAttribute("Apresultall", Apresultall);
		 session.setAttribute("Apresulthall", Apresulthall);
		 session.setAttribute("Apresultlall", Apresultlall);
		 session.setAttribute("Apresultsell", Apresultsell);
	
	
	return next;		
	}


}
