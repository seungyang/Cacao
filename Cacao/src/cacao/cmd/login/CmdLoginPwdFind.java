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


public class CmdLoginPwdFind implements Cmd {
	private String next;

	public CmdLoginPwdFind( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CmdException {
		// TODO Auto-generated method stub
	
			
			Member m = new Member();
			
			String findMail = request.getParameter("findMail");
			String findNick = request.getParameter("findNick");
			String findBirth = request.getParameter("findBirth");
			
			m.setmEmail(findMail);
			m.setmName(findNick);
			m.setmBirth(findBirth);
			HttpSession session = request.getSession();
			if( findMail == null || findNick==null || findBirth == null ) {
				session.setAttribute("findPwdResult", "0");
				return next;
			}
			int result = CacaoLoginService.getInstance().findPwd(m);
						
			if(result==1) {
							
				session.setAttribute("findPwdMail", findMail);
				session.setAttribute("findM",  m);
									
				String findRandom = random();
				session.setAttribute("findRandom", findRandom);
					
				sendMail(findMail,findRandom);
				
			}
			
			session.setAttribute("findPwdResult", result);
			
		return next;			
	}

	
	public String random() {
		 
	      String str = null;
	      StringBuffer temp = new StringBuffer();
	      Random rnd = new Random();
	      for (int i = 0; i < 6; i++) {
	         int rIndex = rnd.nextInt(3);
	         switch (rIndex) {
	         case 0:
	            // a-z
	            temp.append((char) ((int) (rnd.nextInt(26)) + 97));
	            break;
	         case 1:
	            // A-Z
	            temp.append((char) ((int) (rnd.nextInt(26)) + 65));
	            break;
	         case 2:
	            // 0-9
	            temp.append((rnd.nextInt(10)));
	            break;
	         }
	      }      return temp.toString();

	   }
	
	
	 public void sendMail(String emailid,String authRandom){
	        Properties properties = new Properties();
	        properties.put("mail.smtp.user", "kostacacao@gmail.com"); //구글 계정 ex)test@gmail.com
	        properties.put("mail.smtp.host", "smtp.gmail.com");
	        properties.put("mail.smtp.port", "465");
	        properties.put("mail.smtp.starttls.enable", "true");
	        properties.put("mail.smtp.auth", "true");
	        properties.put("mail.smtp.debug", "true");
	        properties.put("mail.smtp.socketFactory.port", "465");
	        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	        properties.put("mail.smtp.socketFactory.fallback", "false");
	        
	        try {
	            Authenticator auth = new senderAccount();
	            Session session = Session.getInstance(properties, auth);
	            session.setDebug(true); // 메일을 전송할 때 상세한 상황을 콘솔에 출력한다.
	            MimeMessage msg = new MimeMessage(session);
	            String message = "안녕하세요. Cacao팀입니다. 비밀번호 재설정을 위해 인증코드를 발송한 메일입니다. 인증코드를 올바르게 입력해주시기바랍니다. 인증코드 : "+ authRandom;
	            
	            msg.setSubject("kostacacao@gmail.com");
	            Address fromAddr = new InternetAddress("kostacacao@gmail.com"); // 보내는사람 EMAIL ex)test@gmail.com
	            msg.setFrom(fromAddr);
	            Address toAddr = new InternetAddress(emailid);    //받는사람 EMAIL ex)test@gmail.com
	            msg.addRecipient(Message.RecipientType.TO, toAddr);
	            msg.setContent( message, "text/plain;charset=KSC5601"); //메일 전송될 내용
	            Transport.send(msg);
	            
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

	    private class senderAccount extends javax.mail.Authenticator {
	 
	        public PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication("kostacacao", "kosta149"); // @gmail.com 제외한 계정 ID, PASS
	 
	        }
	    }

}
