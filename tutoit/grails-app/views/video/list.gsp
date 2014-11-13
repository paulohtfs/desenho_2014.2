
<%@ page import="tutoit.Video" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-video" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="tutoits" title="${message(code: 'video.tutoits.label', default: 'Tutoi ts')}" />
					
						<g:sortableColumn property="videoName" title="${message(code: 'video.videoName.label', default: 'Nome do video ')}" />
					
						<g:sortableColumn property="videoLink" title="${message(code: 'video.videoLink.label', default: 'Link ')}" />
					
						<g:sortableColumn property="publishDate" title="${message(code: 'video.publishDate.label', default: 'Data de publicação')}" />
					
						<th><g:message code="video.playlist.label" default="Playlist " /></th>
					
						<th><g:message code="video.category.label" default="Categoria " /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${videoInstanceList}" status="i" var="videoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${videoInstance.id}">${fieldValue(bean: videoInstance, field: "tutoits")}</g:link></td>
					
						<td>${fieldValue(bean: videoInstance, field: "videoName")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "videoLink")}</td>
					
						<td><g:formatDate date="${videoInstance.publishDate}" /></td>
					
						<td>${fieldValue(bean: videoInstance, field: "playlist")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "category")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${videoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
