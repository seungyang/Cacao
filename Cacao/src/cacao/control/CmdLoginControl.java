package cacao.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cacao.cmd.Cmd;
import cacao.cmd.CmdException;
import cacao.cmd.CmdNull;
import cacao.cmd.login.*;



/**
 * Servlet implementation class CmdControl
 */
public class CmdLoginControl extends HttpServlet {
	
	private HashMap commandMap;
	private String	jspDir = "/view/login/";
	private String  error = "error.jsp";
	

    public CmdLoginControl() {
    	super();       
		initCommand();
	}

	private void initCommand(){
		commandMap = new HashMap();
		commandMap.put("lMain-page",new CmdNull("Imain.jsp") );
		commandMap.put("main-page",	new CmdNull("loginForm.jsp") );
		commandMap.put("login-page",new CmdLoginFindForm("loginFindForm.jsp") );

		commandMap.put("loginEmailFind-page",new CmdLoginEmailFind("loginEmailFind.jsp") );
		commandMap.put("joinAgree-page",new CmdNull("joinAgree.jsp"));
		commandMap.put("joinInfoForm-page",new CmdNull("joinInfoForm.jsp"));
		commandMap.put("joinAuth-page",new CmdNull("joinAuth.jsp"));

		commandMap.put("loginPwdFind-page",new CmdNull("loginPwdFind.jsp"));
		commandMap.put("loginPwdFindSend-page",new CmdLoginPwdFind("loginPwdFindSend.jsp"));
		commandMap.put("loginPwdFindChage-page",new CmdNull("loginPwdFindChage.jsp"));
		commandMap.put("loginPwdFindAcc-page",new CmdLoginPwdAcc("loginPwdFindAcc.jsp"));

//		commandMap.put("input-form",new CmdNull("insertMessage.jsp")); 
//		commandMap.put("input-confirm",new CmdInput("saveMessage.jsp")); 
//		commandMap.put("delete-form",new CmdNull("deleteMessage.jsp")); 
//		commandMap.put("delete-confirm",new CmdCacaoMain("deleteConfirm.jsp")); 
		// 나머지도 추가하기		
		
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String nextPage = "";
		String cmdKey	= request.getParameter("cmd");
		if( cmdKey == null ){
			cmdKey = "main-page";
		}
		Cmd cmd = null;

		try{
			
			if( commandMap.containsKey( cmdKey ) ){
				cmd = (Cmd)commandMap.get( cmdKey);
			}else{
				throw new CmdException("지정할 명령어가 존재하지 않음");
			}

			nextPage = cmd.execute( request, response  );

		}catch( CmdException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("오류 : " + e.getMessage() );
		}

		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDp.forward( request, response );
		
	}

}
