<%@ page import="tutoit.User" %>
<!DOCTYPE html>
<html>

	<head>
        <meta name="layout" content="login">
		<g:set var="entityName" value="${message(code: 'springSecurity.login.username.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>

	<body>

    <div id="create-user" class="content scaffold-create" role="main">

        <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if>

        <g:hasErrors bean="${userInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${userInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                    <g:message error="${error}"/>
                </li>
                </g:eachError>
            </ul>
        </g:hasErrors>

        <g:form action="save">
            <g:render template="signinform"/>
        </g:form>
    </div>

	</body>
</html>
