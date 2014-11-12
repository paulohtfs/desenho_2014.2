
<%@ page import="tutoit.Commentary" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'commentary.label', default: 'Commentary')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-commentary" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-commentary" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list commentary">
			
				<g:if test="${commentaryInstance?.commentaryDescription}">
				<li class="fieldcontain">
					<span id="commentaryDescription-label" class="property-label"><g:message code="commentary.commentaryDescription.label" default="Commentary Description" /></span>
					
						<span class="property-value" aria-labelledby="commentaryDescription-label"><g:fieldValue bean="${commentaryInstance}" field="commentaryDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentaryInstance?.commentaryDate}">
				<li class="fieldcontain">
					<span id="commentaryDate-label" class="property-label"><g:message code="commentary.commentaryDate.label" default="Commentary Date" /></span>
					
						<span class="property-value" aria-labelledby="commentaryDate-label"><g:formatDate date="${commentaryInstance?.commentaryDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentaryInstance?.video}">
				<li class="fieldcontain">
					<span id="video-label" class="property-label"><g:message code="commentary.video.label" default="Video" /></span>
					
						<span class="property-value" aria-labelledby="video-label"><g:link controller="video" action="show" id="${commentaryInstance?.video?.id}">${commentaryInstance?.video?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${commentaryInstance?.id}" />
					<g:link class="edit" action="edit" id="${commentaryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
