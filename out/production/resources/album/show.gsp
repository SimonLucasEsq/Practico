<!DOCTYPE html>
    <html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'album.label', default: 'Album')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <h1>Show contact</h1>
        Title: ${album.title}<br />
        User: ${username}<br />
        <g:link action="edit" id="${album.id}">Edit</g:link><br />
        <g:link action="delete" id="${album.id}">Delete</g:link>
        <g:form resource="${album}" method="DELETE">
            <fieldset class="buttons">
                <g:link class="edit" action="edit" resource="${this.album}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
            </fieldset>
        </g:form>
    </body>
</html>


