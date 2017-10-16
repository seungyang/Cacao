package mail;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
 
public class Gmail {
    
    public static void sendMail(){
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
 
            msg.setSubject("kostacacao@gmail.com");
            Address fromAddr = new InternetAddress("kostacacao@gmail.com"); // 보내는사람 EMAIL ex)test@gmail.com
            msg.setFrom(fromAddr);
            Address toAddr = new InternetAddress("kostacacao@gmail.com");    //받는사람 EMAIL ex)test@gmail.com
            msg.addRecipient(Message.RecipientType.TO, toAddr);
            msg.setContent("메일에 전송될 내용", "text/plain;charset=KSC5601"); //메일 전송될 내용
            Transport.send(msg);
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static class senderAccount extends javax.mail.Authenticator {
 
        public PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication("kostacacao", "kosta149"); // @gmail.com 제외한 계정 ID, PASS
 
        }
    }
    public static void main(String[] args) {
    	Gmail.sendMail();
	}
}
