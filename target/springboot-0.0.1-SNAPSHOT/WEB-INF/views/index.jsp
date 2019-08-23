<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="/resources/js/app.js"></script>

<title>Spring Boot</title>
</head>
<body>
<h1>Spring boot - Web Application</h1>
<hr>

<div class="form">
	<form action="hello" method ="post" onsubmit="return validate()">
		<table>
			<tr>
				<td>Enter your name</td>
				<td><input id="name" name="name"></td>
				<td><input type="submit" value="Submit"></td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>