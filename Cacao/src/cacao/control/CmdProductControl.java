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
import cacao.cmd.product.CmdpCateCupView;
import cacao.cmd.product.CmdpCateDollView;
import cacao.cmd.product.CmdpCatePhoneView;
import cacao.cmd.product.CmdpCateShoesView;
import cacao.cmd.product.CmdpCateView;
import cacao.cmd.product.CmdpCharApView;
import cacao.cmd.product.CmdpCharLiView;



/**
 * Servlet implementation class CmdControl
 */
public class CmdProductControl extends HttpServlet {
	
	private HashMap commandMap;
	private String	jspDir = "/view/product/";
	private String  error = "error.jsp";
	

    public CmdProductControl() {
    	super();       
		initCommand();
	}

	private void initCommand(){
		commandMap = new HashMap();
	
		commandMap.put("pCateView-page",new CmdpCateView("pCateView.jsp") );
		commandMap.put("pCateCaseView-page",new CmdNull("pCateCaseView.jsp") );
		commandMap.put("pCharLiView-page",new CmdpCharLiView("pCharLiView.jsp") );
		commandMap.put("pCharApView-page",new CmdpCharApView("pCharApView.jsp") );
		commandMap.put("pCateDollView-page",new CmdpCateDollView("pCateDollView.jsp") );
		commandMap.put("pCateCupView-page",new CmdpCateCupView("pCateCupView.jsp") );
		commandMap.put("pCatePhoneView-page",new CmdpCatePhoneView("pCatePhoneView.jsp") );
		commandMap.put("pCateShoesView-page",new CmdpCateShoesView("pCateShoesView.jsp") );
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
		System.out.println("접근");
		try{
			
			if( commandMap.containsKey(cmdKey) ){
				cmd = (Cmd)commandMap.get(cmdKey);
			}else{
				throw new CmdException("Product 부분 - 지정할 명령어가 존재하지 않음");
			}

			nextPage = cmd.execute( request, response  );

		}catch( CmdException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("Product 오류 : " + e.getMessage() );
		}

		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDp.forward( request, response );
		
	}

}
