package cacao.cmd.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Order;
import cacao.service.CacaoMyPageService;



public class CmdMyPageCanceDetail implements Cmd {
	private String next;

	public CmdMyPageCanceDetail( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("useremail");
		String cancelid = request.getParameter("cancelid");
		
			
		List<Order> cancelListDetail = CacaoMyPageService.getInstance().cancelListDetail(email,cancelid);
		
		request.setAttribute("cancelListDetail", cancelListDetail);
		
		
		return next;				
	}


}
