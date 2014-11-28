<%@ page import="tutoit.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.create.label" args="[entityName]"  /></title>
	</head>
	<body>
		<div id="create-category" class="content scaffold-create" role="main">
			<h1><g:message code="Criar Categoria"  /></h1>
			    <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${categoryInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${categoryInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
			</g:hasErrors>
			<g:form action="save"  class="form-horizontal">
				<fieldset>
					<g:render template="form"/>
				</fieldset>

                <div align="center">
				    <button class="btn btn-success btn-lg" name="create"  value="${message(default: 'Create')}"> Criar </button>
                </div>
			</g:form>
		</div>
	</body>
</html>
