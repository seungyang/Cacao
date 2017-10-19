package cacao.cmd.admin;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.QA;
import cacao.model.vo.Service;
import cacao.service.CacaoAdminService;
import cacao.service.CacaoMyPageService;



public class CmdAdminServiceSave implements Cmd {
	private String next;

	public CmdAdminServiceSave( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		
		String id = request.getParameter("serviceid");
		System.out.println(id);
		Service service = new Service();
		
		service.setsId(Integer.parseInt(request.getParameter("serviceid")));
		service.setsKind(request.getParameter("servicekind"));
		service.setsCate(request.getParameter("servicecate"));
		service.setsTitle(request.getParameter("servicetitle"));
		service.setsDetail(request.getParameter("servicedetail"));
		
		int result = 0;
		int result1 = 0;
		
		if(id.equals("0")) {
			result = CacaoAdminService.getInstance().serviceInsert(service);
			
		}else {
			result1 = CacaoAdminService.getInstance().serviceModify(service);
			
		}
		request.setAttribute("serviceSave", result);
		request.setAttribute("serviceModify", result1);
		return next;			
	}


}