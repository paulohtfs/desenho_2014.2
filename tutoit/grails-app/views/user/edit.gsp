<%@ page import="tutoit.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />

	</head>
	<body>

		<div id="edit-user" class="content scaffold-edit" role="main">
			<h1>Geral</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">

			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post">
				<g:hiddenField name="id" value="${userInstance?.id}" />
				<g:hiddenField name="version" value="${userInstance?.version}" />
				
					<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
						<g:textField name="username"  value="${userInstance?.username}" placeholder="Nome"/>
					</div>

					<div class="required">
						<g:textField name="lastname" placeholder="Sobrenome"/>
					</div>					

					<h1>Social</h1>

					<div class="required">
						<g:textField name="facebook" placeholder="Facebook"/>
					</div>

					<div class="required">
						<g:textField name="google" placeholder="Google +"/>
					</div>

				    <div class="required">
						<g:textField name="youtube" placeholder="Youtube"/>
					</div>

					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
		
			</g:form>
		</div>
	</body>
</html>
