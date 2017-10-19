package cacao.cmd.yourpage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Order;
import cacao.service.CacaoMyPageService;



public class CmdYourPageOrderDetail implements Cmd {
	private String next;

	public CmdYourPageOrderDetail( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		
		String email = "omy@naver.com";
		String orderid = request.getParameter("orderid");
		
			
		List<Order> orderListDetail = CacaoMyPageService.getInstance().orderListDetail(email,orderid);
		
		request.setAttribute("orderListDetail", orderListDetail);
		
		
		return next;			
	}


}
