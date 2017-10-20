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
import cacao.cmd.admin.CmdAdminMyPageMain;
import cacao.cmd.admin.CmdAdminMyPageMainSave;
import cacao.cmd.admin.CmdAdminOrderForm;
import cacao.cmd.admin.CmdAdminOrderModify;
import cacao.cmd.admin.CmdAdminProductMain;
import cacao.cmd.admin.CmdAdminProductMainSave;
import cacao.cmd.admin.CmdAdminServiceForm;
import cacao.cmd.admin.CmdAdminServiceSave;



/**
 * Servlet implementation class CmdControl
 */
public class CmdAdminControl extends HttpServlet {
	
	private HashMap commandMap;
	private String	jspDir = "/view/admin/";
	private String  error = "error.jsp";
	

    public CmdAdminControl() {
    	super();       
		initCommand();
	}

	private void initCommand(){
		commandMap = new HashMap();
		
		
		commandMap.put("main-page",	new CmdNull("adminMain.jsp"));
		
		commandMap.put("adminProductMain-page",	new CmdAdminProductMain("adminProductMain.jsp") );
		commandMap.put("adminProductMainSave-page",	new CmdAdminProductMainSave("adminProductMainSave.jsp") );
		
		commandMap.put("adminOrderMain-page",	new CmdAdminOrderForm("adminOrderMain.jsp") );
		commandMap.put("adminOrderModify-page",	new CmdAdminOrderModify("adminOrderModify.jsp") );
		
		commandMap.put("adminMyPageMain-page",	new CmdAdminMyPageMain("adminMyPageMain.jsp") );
		commandMap.put("adminMyPageMainSave-page",	new CmdAdminMyPageMainSave("adminMyPageMainSave.jsp") );
		
		commandMap.put("adminServiceMain-page",	new CmdAdminServiceForm("adminServiceMain.jsp") );
		commandMap.put("adminServiceSave-page",	new CmdAdminServiceSave("adminServiceSave.jsp") );
		
	

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
