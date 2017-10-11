package mvc.cacao.cmd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CmdNull implements Cmd{
	private String next;

	public CmdNull( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request, HttpServletResponse response   ) throws CmdException{
		return next;
	}

}
