package cacao.cmd.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Info;
import cacao.service.CacaoMainService;


 

public class CmdSearch implements Cmd {
	private String next;

	public CmdSearch( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
				 
			HttpSession session = request.getSession();
			String searchtext = request.getParameter("searchtext");
			List<Info> searchresult = CacaoMainService.getInstance().selectList(searchtext);
			List<Info> searchresulthall = CacaoMainService.getInstance().selectListhprice(searchtext);
			List<Info> searchresultlall = CacaoMainService.getInstance().selectListlprice(searchtext);
			List<Info> searchresultsell = CacaoMainService.getInstance().selectListsell(searchtext);
			 session.setAttribute("sresultall", searchresult); 
			 session.setAttribute("sresulthall", searchresulthall);
			 session.setAttribute("sresultlall", searchresultlall);
			 session.setAttribute("sresultsell", searchresultsell );
		
		 
		
		return next;			
	}


}
