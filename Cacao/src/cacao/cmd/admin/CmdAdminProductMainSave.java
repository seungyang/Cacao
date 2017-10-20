package cacao.cmd.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Info;
import cacao.service.CacaoAdminService;



public class CmdAdminProductMainSave implements Cmd {
	private String next;

	public CmdAdminProductMainSave( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		
		
		Info info = new Info();
		String change = request.getParameter("change");
		info.setiId(request.getParameter("iId"));
		info.setiChar(request.getParameter("iChar"));
		info.setiCate(request.getParameter("iCate"));
		info.setiName(request.getParameter("iName"));
		info.setiCost(request.getParameter("iCost"));
		info.setiCnt(request.getParameter("iCnt"));
		info.setiColor(request.getParameter("iColor"));
		info.setiKor(request.getParameter("iKor"));
		info.setiImgcnt(request.getParameter("iImgcnt"));
		
		System.out.println(change);
		System.out.println(info.getiId());
		System.out.println(info.getiChar());
		System.out.println(info.getiCate());
		System.out.println(info.getiName());
		System.out.println(info.getiCost());
		System.out.println(info.getiCnt());
		System.out.println(info.getiColor());
		System.out.println(info.getiKor());
		System.out.println(info.getiImgcnt());
		
		int result = 0;
		int result1 = 0;
		
		if(change.equals("0")) {
			result = CacaoAdminService.getInstance().infoInsert(info);
			
		}else {
			result1 = CacaoAdminService.getInstance().infoModify(info);
			
		}
		request.setAttribute("infoSave", result);
		request.setAttribute("infoModify", result1);
		return next;			
	}


}