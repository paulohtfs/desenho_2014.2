<!DOCTYPE html>
<html>
<head>
    <g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>

<div class="row">
    <div class="col-lg-9">
        <h2 class="page-header">${video[0]}</h2>
        <iframe width="720" height="480" src="${video[1]}" frameborder="0" allowfullscreen></iframe>
        <h1 class="page-header"></h1>
    </div>
</div>

</body>
</html>
