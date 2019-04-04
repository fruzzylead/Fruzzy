<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    	System.out.print(request.getParameter("name"));
    	String name = request.getParameter("name");
    	if (name != null) {
    		out.println(name);
    	}
    %>

<script language="javascript" type="text/javascript">
	function call() {
		var name = "xyz";
		window.location.replace("test.jsp?name=" + name);
	}
</script>
    <input type="button" value="Get" onclick='call()'>
    

</body>
</html>