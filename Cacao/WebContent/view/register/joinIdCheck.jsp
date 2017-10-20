<%@page import="cacao.service.CacaoRegisterService"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page import = "org.json.simple.JSONArray" %>
<%@ page import = "org.json.simple.JSONObject" %>
    
<%
	String emailid = request.getParameter("emailid");

	int idCheck = CacaoRegisterService.getInstance().idCheck(emailid);
	
	JSONObject jObj = new JSONObject();
	jObj.put("idCheck",idCheck);
	out.print(jObj.toString());
%>