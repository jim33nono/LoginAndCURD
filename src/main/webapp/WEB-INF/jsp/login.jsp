<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name= "viewport" content = "width=device-width, initial-scale=1">
<title>Cool Bootstrap</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>
	<div class="container">

<!-- 		<h2>Login Page</h2> -->
<%-- 		<form method="POST" action="tryLogin.do"> --%>
<!-- 			帳號: <input type="text" name="account" />  -->
<!-- 			密碼: <input type="text" name="password" />  -->
<!-- 			<input type="submit" value="提交" /> -->
<%-- 		</form> --%>
<!-- 		<br> -->

<!-- 		<h2>Login Page By Spring Form</h2> -->
<%-- 		<form:form action="tryLogin.do" commandName="userInfo"> --%>
<!-- 			<table> -->
<!-- 				<tr> -->
<!-- 					<td><label>帳號:</label></td> -->
<%-- 					<td><form:input path="account" /></td> --%>
<%-- 					<td><form:errors path="account" cssclass="error" style="color:#F02D2D"></form:errors></td> --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td><label>密碼:</label></td> -->
<%-- 					<td><form:input path="password" /></td> --%>
<%-- 					<td><form:errors path="password" cssclass="error" style="color:#F02D2D"></form:errors></td> --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td colspan="2"><input type="submit" value="提交" /></td> -->
<!-- 				</tr> -->
<!-- 			</table> -->
<!-- 			<br> -->

<%-- 		</form:form> --%>

		<br>
		<h2>Login Page</h2> 
		
		
		<form:form class="form-horizontal" action="tryLogin.do" method="post">
			<fieldset>
			<legend>Member Log In</legend>
			<div class="form-group">
				<label for="inputAccount3" class="col-sm-2 control-label">Account:</label>
				<div class="col-sm-10">
					<input type="text" minlength="2" class="form-control" id="inputAccount3" name="account"
						placeholder="Account" required>
					<form:errors path="account" cssclass="error" style="color:#F02D2D"></form:errors>
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">Password:</label>
				<div class="col-sm-10">
					<input type="password" minlength="2" class="form-control" id="inputPassword3" name="password"
						placeholder="Password" required>
					<form:errors path="account" cssclass="error" style="color:#F02D2D"></form:errors>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<div class="checkbox">
						<label> <input type="checkbox"> Remember me
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Sign in</button>
				</div>
			</div>
			</fieldset>
		</form:form>

	</div>
</body>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- <script src="js/jquery.validate.js"></script> -->
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		

	});
</script>

</html>
