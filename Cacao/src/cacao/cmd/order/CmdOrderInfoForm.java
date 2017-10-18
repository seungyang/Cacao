package cacao.cmd.order;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Choose;
import cacao.model.vo.Info;
import cacao.model.vo.Order;
import cacao.model.vo.QA;
import cacao.service.CacaoMyPageService;
import cacao.service.CacaoOrderService;



public class CmdOrderInfoForm implements Cmd {
	private String next;

	public CmdOrderInfoForm( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
				
		
		String id = request.getParameter("id");
		
		List<Info> orderList = CacaoOrderService.getInstance().getItemList(id);
		
		request.setAttribute("orderResult", orderList);
		
		return next;			
	}


}
