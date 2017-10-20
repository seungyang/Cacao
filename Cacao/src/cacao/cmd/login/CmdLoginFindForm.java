package cacao.cmd.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Member;
import cacao.model.vo.Order;
import cacao.service.CacaoAdminService;
import cacao.service.CacaoLoginService;
import cacao.service.CacaoOrderService;



public class CmdLoginFindForm implements Cmd {
	private String next;

	public CmdLoginFindForm( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
			
			HttpSession session = request.getSession();
						
			String adminName = request.getParameter("user");
		
			Member member = new Member();
	
			member.setmEmail(request.getParameter("user"));
			member.setmPwd(request.getParameter("pass"));
			
			int res = 0;
			int result =0;
	
			
			if(adminName.equals("masteradmin@cacao.com") || adminName.equals("mypageadmin@cacao.com") || adminName.equals("serviceadmin@cacao.com") || adminName.equals("productadmin@cacao.com") || adminName.equals("orderadmin@cacao.com")) {
				res = CacaoAdminService.getInstance().selectAdminLogin(member);
			}else{
				result = CacaoLoginService.getInstance().selectLogin(member);
		
			}
			if (result==1) {
				session.setAttribute("loginresult", result);
				session.setAttribute("useremail",request.getParameter("user"));
				session.setMaxInactiveInterval(60*60) ;
			}
			
			request.setAttribute("selectAdminLoginAll", res);
			request.setAttribute("selectLogin", result);
		
		return next;			
	}

}
