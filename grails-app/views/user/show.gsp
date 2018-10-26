<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<h1>Show contact</h1>
Name: ${user.name}<br />
User: ${user.username}<br />
Email: ${user.email}<br />
Phone: ${user.phone}<br />

<g:link action="edit" id="${user.id}">Edit</g:link><br />
<g:link action="delete" id="${user.id}">Delete</g:link>
<g:form resource="${user}" method="DELETE">
    <fieldset class="buttons">
        <g:link class="edit" action="edit" resource="${this.user}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
        <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
    </fieldset>
</g:form>
</body>
</html>
