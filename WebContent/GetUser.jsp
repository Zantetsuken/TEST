<%
	String name = (String)session.getAttribute("name");
	if(name != null){
		try{
			out.println(name);
		}catch(Exception ex){}
	}
%>