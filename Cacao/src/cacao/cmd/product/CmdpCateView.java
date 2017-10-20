package cacao.cmd.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Info;
import cacao.service.CacaoProductService;



public class CmdpCateView implements Cmd {
	private String next;

	public CmdpCateView( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
				
			HttpSession session = request.getSession();
			
			List<Info> resultall = CacaoProductService.getInstance().selectList();
			List<Info> resulthall = CacaoProductService.getInstance().selectListhprice();
			List<Info> resultlall = CacaoProductService.getInstance().selectListlprice();
			List<Info> resultsell = CacaoProductService.getInstance().selectListsell();
			 session.setAttribute("resultall", resultall);
			 session.setAttribute("resulthall", resulthall);
			 session.setAttribute("resultlall", resultlall);
			 session.setAttribute("resultsell", resultsell);
		
		
		return next;			
	}


}
