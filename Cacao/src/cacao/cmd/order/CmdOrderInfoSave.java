package cacao.cmd.order;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Order;
import cacao.model.vo.QA;
import cacao.service.CacaoMyPageService;
import cacao.service.CacaoOrderService;



public class CmdOrderInfoSave implements Cmd {
	private String next;

	public CmdOrderInfoSave( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {

		Order order = new Order();
		String email = "omy@naver.com";
		String addr1 = request.getParameter("post1");
		String addr2 = request.getParameter("post2");
		String addr3 = request.getParameter("addr1");
		String addr4 = request.getParameter("addr2");
		String allAddr = addr1 + "-" + addr2 + " " + addr3 + " " + addr4;
		
		order.setoPayment(request.getParameter("payment"));
		order.setoName(request.getParameter("qName"));
		order.setmEmail(request.getParameter("qEmail"));
		order.setoTel(request.getParameter("qTel"));
		order.setoAddr(allAddr);
		order.setoMemo(request.getParameter("qTitle"));
		
		String[] iCnt = request.getParameterValues("iCnt");
		String[] iId = request.getParameterValues("iId");
				
		int result = CacaoOrderService.getInstance().insertOrder(order,iCnt,iId);

		request.setAttribute("orderInsert", result);
		
		return next;			
	}


}
