package cacao.cmd.order;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Info;
import cacao.service.CacaoOrderService;



public class CmdOrderInfoForm implements Cmd {
	private String next;

	public CmdOrderInfoForm( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
	
		HttpSession session = request.getSession();
		List<Info> buylist = (List<Info>)session.getAttribute("buylist");
		List<Info> orderList = new ArrayList<Info>();
		Info info = new Info();
		
		for(int i=0;i<buylist.size();i++) {
			System.out.println("buylist : "+buylist.get(i).getiId());
			info = CacaoOrderService.getInstance().getItemList(buylist.get(i).getiId());
			orderList.add(info);
		}
		
		
		request.setAttribute("orderResult", orderList);
		
		return next;			
	}


}
