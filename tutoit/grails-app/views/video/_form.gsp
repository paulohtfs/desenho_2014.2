<%@ page import="tutoit.Video" %>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'videoName', 'error')} required">
	<label for="videoName">
		<g:message code="video.videoName.label" default="Name do video: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="videoName" required="" value="${videoInstance?.videoName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'videoLink', 'error')} required">
	<label for="videoLink">
		<g:message code="video.videoLink.label" default="Link: " />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="videoLink" required="" value="${videoInstance?.videoLink}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'publishDate', 'error')} required">
	<label for="publishDate">
		<g:message code="video.publishDate.label" default="Data de publicação: " />
		<span class="required-indicator">*</span>
	</label>
	${videoInstance?.publishDate?.toString()}
</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'playlist', 'error')} ">
	<label for="playlist">
		<g:message code="video.playlist.label" default="Playlist: " />
		
	</label>
	<g:select id="playlist" name="playlist.id" from="${tutoit.Playlist.list()}" optionKey="id" value="${videoInstance?.playlist?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="video.category.label" default="Categoria : " />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${tutoit.Category.list()}" optionKey="id" required="" value="${videoInstance?.category?.id}" class="many-to-one"/>
</div>

<g:hiddenField name="user.id" value="${currentUser.id}"/>

