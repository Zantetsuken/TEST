<%
	try{
		String login = (String)session.getAttribute("login");
		if(login.equals("false"))pageContext.forward("loginerror.jsp");
	}catch(Exception ex){
		try{
			pageContext.forward("Loginerror.jsp");
		}catch(Exception ex2){}
	}
%>