<%@ page import="tutoit.User" %>

<div class="page-container">
	<h1>Tuto it</h1>

	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
		<g:textField name="username" class="username" value="${userInstance?.username}" placeholder="Nome"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
		<g:textField name="password" class="password" value="${userInstance?.password}" placeholder="Senha"/>
	</div>

	<button class="btn btn-theme btn-lg btn-block save" name="create" value="${message(default: 'Create')}">Cadastrar</button>

	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
		<label for="enabled">
			<g:message code="user.enabled.label" default="Enabled" />

		</label>
		<g:checkBox name="enabled" value="${userInstance?.enabled}" value="${true}"/>
	</div>

	<!-- Hidding

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

	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'playlist', 'error')} ">
		<label for="playlist">
			<g:message code="user.playlist.label" default="Playlist" />
		</label>

		<ul class="one-to-many">
			<g:each in="${userInstance?.playlist?}" var="p">
			    <li><g:link controller="playlist" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
			</g:each>

			<li class="add">
				<g:link controller="playlist" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'playlist.label', default: 'Playlist')])}</g:link>
			</li>
		</ul>

	</div>

	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
		<label for="accountExpired">
			<g:message code="user.accountExpired.label" default="Account Expired" />
		</label>
		<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />
	</div>

	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
		<label for="accountLocked">
			<g:message code="user.accountLocked.label" default="Account Locked" />
		</label>
		<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
	</div>

	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
		<label for="passwordExpired">
			<g:message code="user.passwordExpired.label" default="Password Expired" />
		</label>
		<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
	</div>

	End hidding-->

</div>