
<%@ page import="tutoit.Playlist" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'playlist.label', default: 'Playlist')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="Listar Playlist" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="Nova Playlist" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-playlist" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list playlist">
			
				<g:if test="${playlistInstance?.playlistName}">
				<li class="fieldcontain">
					<span id="playlistName-label" class="property-label"><g:message code="playlist.playlistName.label" default="Nome : " /></span>
					
						<span class="property-value" aria-labelledby="playlistName-label"><g:fieldValue bean="${playlistInstance}" field="playlistName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playlistInstance?.playlistDate}">
				<li class="fieldcontain">
					<span id="playlistDate-label" class="property-label"><g:message code="playlist.playlistDate.label" default="Data: " /></span>
					
						<span class="property-value" aria-labelledby="playlistDate-label"><g:formatDate date="${playlistInstance?.playlistDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${playlistInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="playlist.user.label" default="Usuário: " /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${playlistInstance?.user?.id}">${playlistInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${playlistInstance?.id}" />
					<g:link class="edit" action="edit" id="${playlistInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
