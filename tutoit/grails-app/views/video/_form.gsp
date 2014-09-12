<%@ page import="tutoit.Video" %>



<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'videoName', 'error')} required">
	<label for="videoName">
		<g:message code="video.videoName.label" default="Video Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="videoName" required="" value="${videoInstance?.videoName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'videoLink', 'error')} required">
	<label for="videoLink">
		<g:message code="video.videoLink.label" default="Video Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="videoLink" required="" value="${videoInstance?.videoLink}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'publishDate', 'error')} required">
	<label for="publishDate">
		<g:message code="video.publishDate.label" default="Publish Date" />
		<span class="required-indicator">*</span>
	</label>
	${videoInstance?.publishDate?.toString()}
</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="video.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${tutoit.Category.list()}" optionKey="id" required="" value="${videoInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'commentaries', 'error')} ">
	<label for="commentaries">
		<g:message code="video.commentaries.label" default="Commentaries" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${videoInstance?.commentaries?}" var="c">
    <li><g:link controller="commentary" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="commentary" action="create" params="['video.id': videoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'commentary.label', default: 'Commentary')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="video.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${tutoit.User.list()}" optionKey="id" required="" value="${videoInstance?.user?.id}" class="many-to-one"/>
</div>

