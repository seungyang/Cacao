package cacao.cmd.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Info;
import cacao.service.CacaoProductService;



public class CmdpCatePhoneView implements Cmd {
	private String next;

	public CmdpCatePhoneView( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
		HttpSession session = request.getSession();	
		
		List<Info> Phoneresultall = CacaoProductService.getInstance().selectListPhone();
		List<Info> Phoneresulthall = CacaoProductService.getInstance().selectListhpricePhone();
		List<Info> Phoneresultlall = CacaoProductService.getInstance().selectListlpricePhone();
		List<Info> Phoneresultsell = CacaoProductService.getInstance().selectListsellPhone();
		 
		 session.setAttribute("Phoneresultall", Phoneresultall);
		 session.setAttribute("Phoneresulthall", Phoneresulthall);
		 session.setAttribute("Phoneresultlall", Phoneresultlall);
		 session.setAttribute("Phoneresultsell", Phoneresultsell);
		
		
		return next;			
	}


}
