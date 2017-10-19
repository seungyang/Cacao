package cacao.cmd.order;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Order;
import cacao.model.vo.OrderId;
import cacao.service.CacaoOrderService;



public class CmdOrderInfoSave implements Cmd {
	private String next;

	public CmdOrderInfoSave( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {

		String imsi = request.getParameter("qEmail");
	
		
		Order order = new Order();
		/*String email = "omy@naver.com";*/
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
				
		OrderId oi = CacaoOrderService.getInstance().insertOrder(order,iCnt,iId);
		
		order.setdId(oi.getoStr());
				
		request.setAttribute("orderInsert", oi.getoResult());
		
		HttpSession session = request.getSession();
		
		session.setAttribute("orderAcc", order);
		session.setAttribute("iCnt", iCnt);
		session.setAttribute("iId", iId);
						
		return next;			
	}


}
