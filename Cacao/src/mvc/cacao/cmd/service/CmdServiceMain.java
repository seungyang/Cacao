package mvc.cacao.cmd.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.cacao.cmd.Cmd;
import mvc.cacao.cmd.CmdException;



public class CmdServiceMain implements Cmd {
	private String next;

	public CmdServiceMain( String _next ){
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
