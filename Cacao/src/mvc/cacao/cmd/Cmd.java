package mvc.cacao.cmd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Cmd {
	public String execute( HttpServletRequest request, HttpServletResponse response  ) throws CmdException;
}
