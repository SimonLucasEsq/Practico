<!doctype html>
<html>
    <head>
        <_title>Page Not Found</_title>
        <meta name="layout" content="main">
        <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
    </head>
    <_body>
        <ul class="errors">
            <li>Error: Page Not Found (404)</li>
            <li>Path: ${request.forwardURI}</li>
        </ul>
    </_body>
</html>
