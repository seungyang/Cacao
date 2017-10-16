package cacao.cmd.product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;



public class CmdpCateCaseView implements Cmd {
	private String next;

	public CmdpCateCaseView( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
				
		
			int messageId = Integer.parseInt(request.getParameter("messageId"));
			String password = request.getParameter("password");
			
			//int resultCnt = MessageDao.getInstance().delete(messageId, password);
			int resultCnt = 0;
			request.setAttribute("result", resultCnt);
		
		
		return next;			
	}


}
