package cacao.cmd.yourpage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Order;
import cacao.service.CacaoYourPageService;



public class CmdYourPageMain implements Cmd {
	private String next;

	public CmdYourPageMain( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
		
		String oId = request.getParameter("oId");
		String mEmail = request.getParameter("mEmail");
				
		List<Order> yourList = CacaoYourPageService.getInstance().orderList(oId,mEmail);
		
		request.setAttribute("yourList", yourList);
		
		
		return next;			
	}


}
