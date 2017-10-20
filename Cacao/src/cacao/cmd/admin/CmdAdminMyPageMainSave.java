package cacao.cmd.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.QA;
import cacao.service.CacaoAdminService;



public class CmdAdminMyPageMainSave implements Cmd {
	private String next;

	public CmdAdminMyPageMainSave( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
		
	  QA qa = new QA();

	  String id = request.getParameter("qa_id");
	  qa.setqId(Integer.parseInt(id));
	  qa.setmEmail(request.getParameter("qa_userid"));
	  qa.setqAnswer(request.getParameter("qa_answer"));
	  qa.setqStatus(request.getParameter("qa_status"));
	  
	  System.out.println(request.getParameter("qa_id"));
	  System.out.println(request.getParameter("qa_userid"));
	  System.out.println(request.getParameter("qa_answer"));
	  System.out.println(request.getParameter("qa_status"));
	  
	  int qaResult = 0;
		qaResult = CacaoAdminService.getInstance().getAnswerTextList(qa);
		
		request.setAttribute("qaResult", qaResult);
		
		
		return next;			
	}

}
