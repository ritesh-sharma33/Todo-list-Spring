<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <title>Add a Todo</title>
</head>
<body>

    <div class="container">
        <!-- modelAttribute is used instead of the depricated commandName -->
        <form:form method="post" modelAttribute="todo">
            <!--The below hidden field is created for populating id of the todo -->
            <form:hidden path="id"></form:hidden>
            <fieldset class="form-group">
                <form:label path="desc">Description</form:label>
                <form:input type="text" path="desc" class="form-control" required="required" />
                <form:errors path="desc" cssClass="text-warning"></form:errors>
            </fieldset>
            
            <button type="submit" class="btn btn-success">Add</button>
        </form:form>
    </div>
    
    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
</body>
</html>