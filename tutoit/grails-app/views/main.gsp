<!DOCTYPE html>
<html>
<head>

    <link rel="stylesheet" href="<g:resource dir="css" file="sb-admin.css"/>">
</head>

<body>
<div id="page-body" role="main">
    <div id="controller-list" role="navigation" class="main-controllers">
        <h2>Available Controllers:</h2>
        <ul>
            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                <li class="controller"><g:link class="main-controllers" controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
            </g:each>
        </ul>
    </div>
</div>
</body>
</html>