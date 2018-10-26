<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'album.label', default: 'Album')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <h1>Vista</h1>
        Title: ${post.title}<br />
        Body: ${post.body}<br/>
        <g:link action="edit" id="${post.id}">Edit</g:link><br />
        <g:link action="delete" id="${post.id}">Delete</g:link>
        <br>
        <h1>Comentarios</h1>
        <g:each in="${comments}" var="data" status="i">
            ${"Name: " +data.name}<br>
            ${"Email: " +data.email}<br>
            ${"Body: " +data.body}<br><br>
        </g:each>
    </body>
</html>
