<%@ page import="tutoit.Commentary" %>



<div class="fieldcontain ${hasErrors(bean: commentaryInstance, field: 'commentaryDescription', 'error')} required">
	<label for="commentaryDescription">
		<g:message code="commentary.commentaryDescription.label" default="Commentary Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="commentaryDescription" cols="40" rows="5" maxlength="255" required="" value="${commentaryInstance?.commentaryDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentaryInstance, field: 'commentaryDate', 'error')} required">
	<label for="commentaryDate">
		<g:message code="commentary.commentaryDate.label" default="Commentary Date" />
		<span class="required-indicator">*</span>
	</label>
	${commentaryInstance?.commentaryDate?.toString()}
</div>

<div class="fieldcontain ${hasErrors(bean: commentaryInstance, field: 'video', 'error')} required">
	<label for="video">
		<g:message code="commentary.video.label" default="Video" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="video" name="video.id" from="${tutoit.Video.list()}" optionKey="id" required="" value="${commentaryInstance?.video?.id}" class="many-to-one"/>
</div>

