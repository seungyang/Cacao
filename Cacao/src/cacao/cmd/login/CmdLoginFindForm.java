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
			int result1 = 0;
			int result2 = 0;
			int result3 = 0;
			int result4 = 0;
			
			if(adminName.equals("masteradmin@cacao.com")) {
				res = CacaoAdminService.getInstance().selectAdminLogin(member);
			}else if(adminName.equals("mypageadmin@cacao.com")){
				result1 = CacaoAdminService.getInstance().selectAdminLogin(member);
			}else if(adminName.equals("serviceadmin@cacao.com")){
				result2 = CacaoAdminService.getInstance().selectAdminLogin(member);
			}else if(adminName.equals("productadmin@cacao.com")){
				result3 = CacaoAdminService.getInstance().selectAdminLogin(member);
			}else if(adminName.equals("orderadmin@cacao.com")){
				result4 = CacaoAdminService.getInstance().selectAdminLogin(member);
			}else{
				result = CacaoLoginService.getInstance().selectLogin(member);
		
			}
			if (result==1) {
				session.setAttribute("loginresult", result);
				session.setAttribute("useremail",request.getParameter("user"));
				session.setMaxInactiveInterval(60*60) ;
			}
			
			request.setAttribute("selectAdminLoginAll", res);
			request.setAttribute("selectAdminLoginMypage", result1);
			request.setAttribute("selectAdminLoginService", result2);
			request.setAttribute("selectAdminLoginProduct", result3);
			request.setAttribute("selectAdminLoginOrder", result4);
			request.setAttribute("selectLogin", result);
		
		return next;			
	}

}
