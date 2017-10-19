package cacao.cmd.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.service.CacaoMyPageService;



public class CmdMyPageOrderCancel implements Cmd {
	private String next;

	public CmdMyPageOrderCancel( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("useremail");
		String orderid = request.getParameter("orderid");
			
		int result = CacaoMyPageService.getInstance().updateCancel(orderid);
		
		request.setAttribute("updateResult", result);
		
		return next;			
	}


}
