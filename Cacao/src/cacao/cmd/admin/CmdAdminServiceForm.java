package cacao.cmd.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Service;
import cacao.service.CacaoAdminService;
import cacao.service.CacaoService;



public class CmdAdminServiceForm implements Cmd {
	private String next;

	public CmdAdminServiceForm( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
				
		
			List<Service> serviceInfo = CacaoAdminService.getInstance().getServiceList();
			//int resultCnt = 0;
			request.setAttribute("serviceResult", serviceInfo);
		
		
		return next;			
	}


}