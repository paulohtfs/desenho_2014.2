		<div id="edit-user" class="content scaffold-edit" role="main">
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
				<div class="form col-md-10 center-block">
					<h3>Geral</h3>
				
					<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required form-group">
						<g:textField name="username"  value="${userInstance?.username}" placeholder="Nome" class="form-control input-lg"/>
					</div>

					<div class="form-group">
						<g:textField name="lastname" placeholder="Sobrenome" class="form-control input-lg"/>
					</div>					

					<h3>Social</h3>

					<div class="form-group">
						<g:textField name="facebook" placeholder="Facebook " class="form-control input-lg"/>
					</div>

					<div class="form-group">
						<g:textField name="google" placeholder="Google +" class="form-control input-lg"/>
					</div>

				    <div class="form-group">
						<g:textField name="youtube" placeholder="Youtube" class="form-control input-lg"/>
					</div>

					<g:actionSubmit class="save btn btn-default" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</div>
			</g:form>
		</div>