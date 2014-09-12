<%@ page import="tutoit.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'categoryName', 'error')} required">
	<label for="categoryName">
		<g:message code="category.categoryName.label" default="Category Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="categoryName" required="" value="${categoryInstance?.categoryName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'videos', 'error')} ">
	<label for="videos">
		<g:message code="category.videos.label" default="Videos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoryInstance?.videos?}" var="v">
    <li><g:link controller="video" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="video" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'video.label', default: 'Video')])}</g:link>
</li>
</ul>

</div>

