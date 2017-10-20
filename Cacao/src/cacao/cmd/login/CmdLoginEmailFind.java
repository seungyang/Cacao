package cacao.cmd.login;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Member;
import cacao.service.CacaoLoginService;


public class CmdLoginEmailFind implements Cmd {
	private String next;

	public CmdLoginEmailFind( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
				
		String findNick = request.getParameter("findNick");
		String findBirth = request.getParameter("findBirth");
						
		if(findNick==null || findBirth==null) {
			findNick = "1";
			findBirth ="1";
		}
		
		List<Member> findEmail = CacaoLoginService.getInstance().findEmail(findNick,findBirth);
		
		HttpSession session = request.getSession();
		
		session.setAttribute("findEmail", findEmail);

		return next;
		
	}

}
