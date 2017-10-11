package mvc.cacao.cmd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.cacao.model.MessageDao;
import mvc.cacao.model.MessageException;

public class CmdLoginForm implements Cmd {
	private String next;

	public CmdLoginForm( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
		try{
				
		
			int messageId = Integer.parseInt(request.getParameter("messageId"));
			String password = request.getParameter("password");
			
			int resultCnt = MessageDao.getInstance().delete(messageId, password);
			
			request.setAttribute("result", resultCnt);
		}catch( MessageException ex ){
			throw new CmdException("CommandDelete.java < 삭제시 > " + ex.toString() ); 
		}
		
		return next;			
	}

}
