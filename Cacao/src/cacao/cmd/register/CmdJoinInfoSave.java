package cacao.cmd.register;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Member;
import cacao.service.CacaoRegisterService;




public class CmdJoinInfoSave implements Cmd {
	private String next;

	public CmdJoinInfoSave( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
				
			Member m = new Member();
			String mCheck = "T";
			
			m.setmEmail(request.getParameter("emailid"));
			m.setmName(request.getParameter("mem_name"));
			m.setmCheck(mCheck);
			m.setmPwd(request.getParameter("password"));
//			m.setmBirth(request.getParameter("mBirth"));
//			m.setmSex(request.getParameter("mSex"));
			
			
//			System.out.println("email:"+m.getmEmail());
			
			int result = CacaoRegisterService.getInstance().getInsert(m);
			
			request.setAttribute("mSave", result);
		
		
		return next;			
	}


}
