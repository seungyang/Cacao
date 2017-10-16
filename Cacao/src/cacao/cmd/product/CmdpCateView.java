package cacao.cmd.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Info;
import cacao.service.CacaoProductService;



public class CmdpCateView implements Cmd {
	private String next;

	public CmdpCateView( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
				
		
			
			List<Info> result = CacaoProductService.getInstance().selectList();
			request.setAttribute("result", result);
		
		
		return next;			
	}


}
