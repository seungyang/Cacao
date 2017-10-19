package cacao.cmd.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Order;
import cacao.service.CacaoMyPageService;



public class CmdMyPageCancelList implements Cmd {
	private String next;

	public CmdMyPageCancelList( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("useremail");
		
		List<Order> cancelList = CacaoMyPageService.getInstance().cancelList(email);
		
		request.setAttribute("cancelList", cancelList);
		

		return next;			
	}


}
