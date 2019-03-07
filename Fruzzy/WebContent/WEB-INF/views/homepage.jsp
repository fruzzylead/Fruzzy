<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fruzzy</title>
</head>
<body>

	<div class="signUp" style="display: block; margin-left: 500px; max-width: 400px;">
		<form:form method="post" modelAttribute="signupModel" action="signUp">
			<fieldset>
				<legend>Sign Up </legend>
				UserName:&nbsp;
				<form:input path="username" type="text" pattern="[A-Za-z0-9_@#]+"
					placeholder="Enter a cool username..." />
				<br /> Email:&nbsp;
				<form:input path="email" type="email" placeholder="Your email..." />
				<br /> Password:&nbsp;
				<form:password path="password"
					placeholder="Type in your password..." />
				<br /> Gender:&nbsp;
				<form:radiobutton path="gender" label="Male" />
				&nbsp;&nbsp;
				<form:radiobutton path="gender" label="Female" />
				&nbsp;&nbsp;
				<form:radiobutton path="gender" label="Others" />
				<br /> Date of Birth:&nbsp;
				<form:input path="dob" type="date" placeholder="Your date of birth" />
				<br />
				<form:button type="submit" label="Sign Up" style>Sign Up</form:button>
				<br />
			</fieldset>
		</form:form>
	</div>

	<div class="signIn"
		style="display: block; margin-left: 500px; margin-top: 100px; max-width: 400px;">
		<form:form method="post" modelAttribute="signinModel" action="signin">
			<fieldset>
				<legend>Sign In </legend>
				Email:&nbsp;
				<form:input path="email" type="email" placeholder="Your email..." />
				<br /> Password:&nbsp;
				<form:password path="password"
					placeholder="Type in your password..." />
				<br />
				<form:button type="submit" label="Sign In">Sign In</form:button>
				<br />
			</fieldset>
		</form:form>

	</div>

</body>
</html>