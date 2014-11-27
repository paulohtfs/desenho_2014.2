
<%@ page import="tutoit.Playlist" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'playlist.label', default: 'Playlist')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
		</div>
		<div id="list-playlist" class="content scaffold-list" role="main">
			<h1><g:message code="Playlist"/></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="playlistName" title="${message(code: 'playlist.playlistName.label', default: 'Nome')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${playlistInstanceList}" status="i" var="playlistInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${playlistInstance.id}">${fieldValue(bean: playlistInstance, field: "playlistName")}</g:link></td>

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
