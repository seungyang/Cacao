package cacao.cmd.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Service;
import cacao.service.CacaoService;



public class CmdServiceNotice implements Cmd {
	private String next;

	public CmdServiceNotice( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
				
		
			List<Service> noticeInfo = CacaoService.getInstance().getNoticeList();
			//int resultCnt = 0;
			request.setAttribute("noticeResult", noticeInfo);
		
		
		return next;			
	}


}
