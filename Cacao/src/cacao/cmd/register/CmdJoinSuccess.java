package cacao.cmd.register;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Member;
import cacao.service.CacaoRegisterService;



public class CmdJoinSuccess implements Cmd {
	private String next;

	public CmdJoinSuccess( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
		HttpSession session = request.getSession();
				
		Member m = (Member) session.getAttribute("loginM");

			
		int result = CacaoRegisterService.getInstance().getInsert(m);

		return next;			
	}


}
