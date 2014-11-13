
<%@ page import="tutoit.Playlist" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'playlist.label', default: 'Playlist')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="Nova Playlist" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-playlist" class="content scaffold-list" role="main">
			<h1><g:message code="Listar Playlist" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="playlistName" title="${message(code: 'playlist.playlistName.label', default: 'Nome')}" />
					
						<g:sortableColumn property="playlistDate" title="${message(code: 'playlist.playlistDate.label', default: 'Data')}" />
					
						<th><g:message code="playlist.user.label" default="Usuário" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${playlistInstanceList}" status="i" var="playlistInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${playlistInstance.id}">${fieldValue(bean: playlistInstance, field: "playlistName")}</g:link></td>
					
						<td><g:formatDate date="${playlistInstance.playlistDate}" /></td>
					
						<td>${fieldValue(bean: playlistInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${playlistInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
