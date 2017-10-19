package cacao.cmd.order;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.*;
import cacao.service.CacaoOrderService;



public class CmdOrderAccView implements Cmd {
	private String next;

	public CmdOrderAccView( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
			
		HttpSession session = request.getSession();
		Order orderAcc = (Order)session.getAttribute("orderAcc");
		
		System.out.println("OrderAccView.java:"+orderAcc.getdId());	
		
		
		String dId = orderAcc.getdId();
		
		List<Deliver> deliverAcc = CacaoOrderService.getInstance().deliverList(dId);
		request.setAttribute("deliverAcc", deliverAcc);
		
		
		return next;			
	}


}
