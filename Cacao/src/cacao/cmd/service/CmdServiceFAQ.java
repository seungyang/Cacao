package cacao.cmd.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Service;
import cacao.service.CacaoService;



public class CmdServiceFAQ implements Cmd {
	private String next;

	public CmdServiceFAQ( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
			
			List<Service> faqInfo = CacaoService.getInstance().getFaqList();
			request.setAttribute("faqResult", faqInfo);
//			int messageId = Integer.parseInt(request.getParameter("messageId"));
//			String password = request.getParameter("password");
//			
//			//int resultCnt = MessageDao.getInstance().delete(messageId, password);
//			int resultCnt = 0;
//			request.setAttribute("result", resultCnt);
		
		
		return next;			
	}


}
