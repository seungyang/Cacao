package cacao.cmd.yourpage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.service.CacaoMyPageService;



public class CmdYourPageOrderCancel implements Cmd {
	private String next;

	public CmdYourPageOrderCancel( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
		String email = "omy@naver.com";
		String orderid = request.getParameter("orderid");
			
		int result = CacaoMyPageService.getInstance().updateCancel(orderid);
		
		request.setAttribute("updateResult", result);
		
		return next;			
	}


}
