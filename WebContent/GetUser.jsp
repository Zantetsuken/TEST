<%
	String id = (String)session.getAttribute("id");
	if(id != null){
		try{
			out.println(id);
		}catch(Exception ex){}
	}
%>