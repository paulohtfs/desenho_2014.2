<%@ page import="tutoit.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'tagName', 'error')} required">
	<label for="tagName">
		<g:message code="tag.tagName.label" default="Nome: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tagName" required="" value="${tagInstance?.tagName}"/>
</div>

