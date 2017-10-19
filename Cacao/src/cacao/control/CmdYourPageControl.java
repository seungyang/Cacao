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
import cacao.cmd.mypage.*;



/**
 * Servlet implementation class CmdControl
 */
public class CmdYourPageControl extends HttpServlet {
	
	private HashMap commandMap;
	private String	jspDir = "/view/mypage/";
	private String  error = "error.jsp";
	

    public CmdYourPageControl() {
    	super();       
		initCommand();
	}

	private void initCommand(){
		commandMap = new HashMap();

		commandMap.put("main-page",new CmdNull("yourPageMain.jsp")); 
		commandMap.put("myPageOrder-page",new CmdMyPageOrder("myPageOrder.jsp"));
		commandMap.put("CmdMyPageOrderDetail-page",new CmdMyPageOrderDetail("myPageOrderDetail.jsp"));
		commandMap.put("myPagePick-page", new CmdMyPagePick("myPagePick.jsp"));
		
		commandMap.put("myPageOrderCancel-page", new CmdMyPageOrderCancel("myPageOrderCancel.jsp"));
		commandMap.put("myPageCancelList-page",new CmdMyPageCancelList("myPageCancelList.jsp"));
		commandMap.put("CmdMyPageCancelDetail-page",new CmdMyPageCanceDetail("myPageCancelDetail.jsp"));
		
		
		commandMap.put("myPageQAList-page",new CmdMyPageQAList("myPageQAList.jsp"));
		commandMap.put("myPageQAForm-page",new CmdNull("myPageQAForm.jsp"));
		commandMap.put("myPageQASave-page", new CmdMyPageQASave("myPageQASave.jsp"));
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
