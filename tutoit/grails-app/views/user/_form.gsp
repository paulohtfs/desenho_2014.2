<%@ page import="tutoit.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="user.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" maxlength="30" required="" value="${userInstance?.userName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userEmail', 'error')} ">
	<label for="userEmail">
		<g:message code="user.userEmail.label" default="User Email" />
		
	</label>
	<g:field type="email" name="userEmail" value="${userInstance?.userEmail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userPassword', 'error')} ">
	<label for="userPassword">
		<g:message code="user.userPassword.label" default="User Password" />
		
	</label>
	<g:field type="password" name="userPassword" value="${userInstance?.userPassword}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'videos', 'error')} ">
	<label for="videos">
		<g:message code="user.videos.label" default="Videos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.videos?}" var="v">
    <li><g:link controller="video" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="video" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'video.label', default: 'Video')])}</g:link>
</li>
</ul>

</div>

