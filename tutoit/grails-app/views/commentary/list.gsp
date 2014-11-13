
<%@ page import="tutoit.Commentary" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'commentary.label', default: 'Commentary')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="Novo Comentário" /></g:link></li>
			</ul>
		</div>
		<div id="list-commentary" class="content scaffold-list" role="main">
			<h1><g:message code="Editar Comentário" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="commentaryDescription" title="${message(code: 'commentary.commentaryDescription.label', default: 'Descrição')}" />
					
						<g:sortableColumn property="commentaryDate" title="${message(code: 'commentary.commentaryDate.label', default: ' Data')}" />
					
						<th><g:message code="commentary.video.label" default="Video" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${commentaryInstanceList}" status="i" var="commentaryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${commentaryInstance.id}">${fieldValue(bean: commentaryInstance, field: "commentaryDescription")}</g:link></td>
					
						<td><g:formatDate date="${commentaryInstance.commentaryDate}" /></td>
					
						<td>${fieldValue(bean: commentaryInstance, field: "video")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${commentaryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
