package cacao.cmd.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Info;
import cacao.service.CacaoMyPageService;



public class CmdMyPagePick implements Cmd {
	private String next;

	public CmdMyPagePick( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		
		// String email = request.getAttribute("");
		
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("useremail");
			
		List<Info> infolist = CacaoMyPageService.getInstance().selectList(email);
		
		request.setAttribute("infolist", infolist);
				
		return next;			
	}


}
