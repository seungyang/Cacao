package cacao.cmd.admin;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.QA;
import cacao.service.CacaoAdminService;



public class CmdAdminMyPageMain implements Cmd {
	private String next;

	public CmdAdminMyPageMain( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
		
	 
		String email = "omy@naver.com";
//		System.out.println(email);
		List<QA> answerList = CacaoAdminService.getInstance().getAnswerList();
		
		request.setAttribute("answerList", answerList);
		
		
		return next;			
	}

}
