<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<div class="container">
	<font color="red">${errorMessage}</font>
	<form method="POST">
		Name: <input type="text" name="name">
		Password: <input type="password" name="password">
		<input type="submit" value="Submit Query">
	</form>
</div>
<%@ include file="common/footer.jspf" %>
