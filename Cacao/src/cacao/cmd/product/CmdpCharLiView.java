package cacao.cmd.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Info;
import cacao.service.CacaoProductService;



public class CmdpCharLiView implements Cmd {
	private String next;

	public CmdpCharLiView( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
		
		
				HttpSession session = request.getSession();
				
				List<Info> Liresultall = CacaoProductService.getInstance().selectListLi();
				List<Info> Liresulthall = CacaoProductService.getInstance().selectListhpriceLi();
				List<Info> Liresultlall = CacaoProductService.getInstance().selectListlpriceLi();
				List<Info> Liresultsell = CacaoProductService.getInstance().selectListsellLi();
				 session.setAttribute("Liresultall", Liresultall);
				 session.setAttribute("Liresulthall", Liresulthall);
				 session.setAttribute("Liresultlall", Liresultlall);
				 session.setAttribute("Liresultsell", Liresultsell);
			
			
			return next;				
	}


}
