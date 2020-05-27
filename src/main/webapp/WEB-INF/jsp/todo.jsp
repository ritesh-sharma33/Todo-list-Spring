<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

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

        <fieldset class="form-group">
            <form:label path="targetDate">Target Date</form:label>
            <form:input type="text" path="targetDate" class="form-control" required="required" />
            <form:errors path="targetDate" cssClass="text-warning"></form:errors>
        </fieldset>
        
        <button type="submit" class="btn btn-success">Add</button>
    </form:form>
</div>

<%@ include file="common/footer.jspf" %>