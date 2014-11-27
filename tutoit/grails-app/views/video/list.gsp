<%@ page import="tutoit.Video" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
    <body>
    <g:each in="${currentUser.videos}" var="a">
        <span class="property-value" aria-labelledby="authors-label"><g:link controller="video" action="edit" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
    </g:each>
	</body>
</html>
