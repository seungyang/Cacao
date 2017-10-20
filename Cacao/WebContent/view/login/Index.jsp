<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cacao.model.vo.*"%>
<%@ page import="cacao.service.*"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page import = "org.json.simple.JSONArray" %>
<%@ page import = "org.json.simple.JSONObject" %>
<%
String findNick = request.getParameter("findNick");
String findBirth = request.getParameter("findBirth");

List<Member> findEmail = CacaoLoginService.getInstance().findEmail(findNick,findBirth);

	JSONArray jArr = new JSONArray();
	for(int i = 0;i<findEmail.size();i++){
		JSONObject jObj = new JSONObject();
		String imsi = findEmail.get(i).getmEmail();
		int idx = imsi.indexOf('@');
		String id = imsi.substring(0,idx);	// ID 01234 5 @naver.com
		int length = id.length(); 
		
		StringBuilder builder = new StringBuilder(id); //빌더로 묶어서

		for(int j = length; j > length-1; j--){
			
			builder.setCharAt(j-1, '*');
		}
		String str = builder.toString()+imsi.substring(idx,imsi.length());
		
		jObj.put("email", str);
		
		jArr.add(jObj);
	}
	JSONObject jObj = new JSONObject();
	jObj.put("result",jArr);
	out.print(jObj.toString());
%>