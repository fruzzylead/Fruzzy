<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	if (session.getAttribute("me") == null) {
		response.sendRedirect("homepage");
	}

	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("Expires", "0");
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Fruzzy</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/profileStyles.css">
</head>

<body onload="getDeviceWidthInit()" onresize="getDeviceWidth()">
	<table>
		<tr>
			<td><jsp:include page="navbar.jsp"></jsp:include></td>
		</tr>
		<tr>
			<td><jsp:include page="profile.jsp"></jsp:include></td>
		</tr>
		<tr>
			<td><jsp:include page="footer.jsp"></jsp:include></td>
		</tr>
	</table>


	<%
		String done = request.getParameter("done");
		if ("true".equals(done)) {
	%><p id="testP">2</p>
	<%
		} else {
	%>
	<p id="testP">1</p>

	<%
		}
	%>





	<script language="javascript" type="text/javascript">
		function getDeviceWidth() {
			var deviceWidth = window.screen.width;
			window.location.replace("dashboard?deviceWidth=" + deviceWidth
					+ "&done=true");
		};
		function getDeviceWidthInit() {
			var x = document.getElementById("testP").innerHTML;
			console.log(x);
			if (1 == x) {
				document.getElementById("testP").innerHTML = "2";
				console.log(document.getElementById("testP").innerHTML);
				var deviceWidth = window.screen.width;
				window.location.replace("dashboard?deviceWidth=" + deviceWidth
						+ "&done=true");
			}

		}
	</script>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>