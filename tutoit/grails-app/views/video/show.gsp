
<%@ page import="tutoit.Video" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-video" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-video" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list video">
			
				<g:if test="${videoInstance?.tutoits}">
				<li class="fieldcontain">
					<span id="tutoits-label" class="property-label"><g:message code="video.tutoits.label" default="Tutoits" /></span>
					
						<span class="property-value" aria-labelledby="tutoits-label"><g:fieldValue bean="${videoInstance}" field="tutoits"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.videoName}">
				<li class="fieldcontain">
					<span id="videoName-label" class="property-label"><g:message code="video.videoName.label" default="Video Name" /></span>
					
						<span class="property-value" aria-labelledby="videoName-label"><g:fieldValue bean="${videoInstance}" field="videoName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.videoLink}">
				<li class="fieldcontain">
					<span id="videoLink-label" class="property-label"><g:message code="video.videoLink.label" default="Video Link" /></span>
					
						<span class="property-value" aria-labelledby="videoLink-label"><g:fieldValue bean="${videoInstance}" field="videoLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.publishDate}">
				<li class="fieldcontain">
					<span id="publishDate-label" class="property-label"><g:message code="video.publishDate.label" default="Publish Date" /></span>
					
						<span class="property-value" aria-labelledby="publishDate-label"><g:formatDate date="${videoInstance?.publishDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="video.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="category" action="show" id="${videoInstance?.category?.id}">${videoInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.commentaries}">
				<li class="fieldcontain">
					<span id="commentaries-label" class="property-label"><g:message code="video.commentaries.label" default="Commentaries" /></span>
					
						<g:each in="${videoInstance.commentaries}" var="c">
						<span class="property-value" aria-labelledby="commentaries-label"><g:link controller="commentary" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.playlist}">
				<li class="fieldcontain">
					<span id="playlist-label" class="property-label"><g:message code="video.playlist.label" default="Playlist" /></span>
					
						<span class="property-value" aria-labelledby="playlist-label"><g:link controller="playlist" action="show" id="${videoInstance?.playlist?.id}">${videoInstance?.playlist?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="video.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${videoInstance?.user?.id}">${videoInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${videoInstance?.id}" />
					<g:link class="edit" action="edit" id="${videoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
