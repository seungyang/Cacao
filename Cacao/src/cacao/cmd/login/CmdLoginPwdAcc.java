package cacao.cmd.login;

import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.model.vo.Member;
import cacao.service.CacaoLoginService;
import cacao.service.CacaoRegisterService;


public class CmdLoginPwdAcc implements Cmd {
	private String next;

	public CmdLoginPwdAcc( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
			String pwd1 = request.getParameter("pwd1");
			System.out.println("requestpwd1 :"+pwd1);
			HttpSession session = request.getSession();
			Member m = (Member) session.getAttribute("findM");
			m.setmPwd(pwd1);
			
			
			System.out.println("session 후  :"+pwd1);
			int result = CacaoLoginService.getInstance().updatePwd(m);
			System.out.println("update : "+result);
		return next;
	}
}
