package mvc.cacao.cmd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//cacao mvc 구조를 시작하기 위한 interface
public interface Cmd {
	public String execute( HttpServletRequest request, HttpServletResponse response  ) throws CmdException;
}
