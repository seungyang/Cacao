package cacao.cmd.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.QA;
import cacao.service.CacaoMyPageService;



public class CmdMyPageQAList implements Cmd {
	private String next;

	public CmdMyPageQAList( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {

		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("useremail");
		
		List<QA> qaList = CacaoMyPageService.getInstance().getQaList(email);
		
		request.setAttribute("qaResult", qaList);
		
		return next;			
	}


}
