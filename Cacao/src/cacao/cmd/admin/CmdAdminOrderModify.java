package cacao.cmd.admin;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Order;
import cacao.model.vo.QA;
import cacao.model.vo.Service;
import cacao.service.CacaoAdminService;
import cacao.service.CacaoMyPageService;



public class CmdAdminOrderModify implements Cmd {
	private String next;

	public CmdAdminOrderModify( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		
		
		String cancel = request.getParameter("ordercancel");
		Order order = new Order();
		
		order.setdId(request.getParameter("orderdid"));
		order.setdCancel(request.getParameter("ordercancel"));
		order.setdStatus(request.getParameter("orderstatus"));
		
		System.out.println(order.getdId());
		System.out.println(order.getdStatus());
		System.out.println(order.getdCancel());
		int result = 0;
		
		if(cancel.equals("F")) {
			result = CacaoAdminService.getInstance().orderModify1(order);
			
		}else if(cancel.equals("T")){
			result = CacaoAdminService.getInstance().orderModify(order);
			
		}
		request.setAttribute("orderModify", result);
		return next;			
	}


}