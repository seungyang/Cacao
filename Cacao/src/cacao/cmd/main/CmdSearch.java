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
			if(searchresult==null) {
				System.out.println("null");
			}else {
				System.out.println("사이즈~~~~~~" + searchresult.size());
			}
			
			session.setAttribute("searchresult", searchresult);
		
		
		return next;			
	}


}
