package cacao.cmd.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.QA;
import cacao.service.CacaoMyPageService;



public class CmdMyPageQASave implements Cmd {
	private String next;

	public CmdMyPageQASave( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {

		QA q = new QA();
		String email = "omy@naver.com";
		
		q.setmEmail(email);
		q.setqCate(request.getParameter("qCate"));
		q.setqTitle(request.getParameter("qTitle"));
		q.setqContent(request.getParameter("qContent"));
		q.setqFile(request.getParameter("qFile"));
				
		int result = CacaoMyPageService.getInstance().getInsert(q);
		
		request.setAttribute("qaSave", result);
		
		return next;			
	}


}
