package cacao.cmd.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Info;
import cacao.service.CacaoAdminService;



public class CmdAdminProductMain implements Cmd {
	private String next;

	public CmdAdminProductMain( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
		
	 
		
		List<Info> infolist = CacaoAdminService.getInstance().getInfoList();
		
		request.setAttribute("infolist", infolist);
		
		
		return next;			
	}

}
