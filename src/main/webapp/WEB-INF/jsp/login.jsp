
<html>
	<head>
		<title>My First Spring boot web app</title>
	</head>

	<body>
		<font color="red">${errorMessage}</font>
		<form method="POST">
			Name: <input type="text" name="name">
			Password: <input type="password" name="password">
			<input type="submit" value="Submit Query">
		</form>

		<br>
		
		Hello Spring Boot
		<br>
		Welcome ${name}
	</body>
</html>