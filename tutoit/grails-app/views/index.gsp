<!DOCTYPE html>
<html>
<head>
</head>

<body>
<div id="page-body" role="main">
    <div id="controller-list" role="navigation">
        <h2>Available Controllers:</h2>
        <ul>
            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></l>
            </g:each>
        </ul>
    </div>
</div>
</body>
</html>