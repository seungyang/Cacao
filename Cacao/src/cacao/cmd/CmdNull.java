package cacao.cmd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//db에 접근을 하지 않을시 page이동만 하는 controller
public class CmdNull implements Cmd{
	private String next;

	public CmdNull( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request, HttpServletResponse response   ) throws CmdException{
		return next;
	}

}
