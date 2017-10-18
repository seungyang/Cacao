package cacao.cmd.register;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;



public class CmdJoinAuth implements Cmd {
	private String next;

	public CmdJoinAuth( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String emailid = (String) session.getAttribute("emailid");
		System.out.println("email 인증 : " + emailid);
		
		// 이메일 인증코드 생성 및 보내는 코드 입력
	
		//이메일 인증코드 
		
		

		
		
		return next;			
	}


}
