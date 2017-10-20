package cacao.cmd.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Info;
import cacao.service.CacaoProductService;



public class CmdpCateDollView implements Cmd {
	private String next;

	public CmdpCateDollView( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
		HttpSession session = request.getSession();	
		
		List<Info> Dollresultall = CacaoProductService.getInstance().selectListDoll();
		List<Info> Dollresulthall = CacaoProductService.getInstance().selectListhpriceDoll();
		List<Info> Dollresultlall = CacaoProductService.getInstance().selectListlpriceDoll();
		List<Info> Dollresultsell = CacaoProductService.getInstance().selectListsellDoll();
		 
		 session.setAttribute("Dollresultall", Dollresultall);
		 session.setAttribute("Dollresulthall", Dollresulthall);
		 session.setAttribute("Dollresultlall", Dollresultlall);
		 session.setAttribute("Dollresultsell", Dollresultsell);
		
		
		return next;			
	}


}
