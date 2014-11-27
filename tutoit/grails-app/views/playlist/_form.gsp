<%@ page import="tutoit.Playlist" %>



<div class="fieldcontain ${hasErrors(bean: playlistInstance, field: 'playlistName', 'error')} required">
	<label for="playlistName">
		<g:message code="playlist.playlistName.label" default=" Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="playlistName" required="" value="${playlistInstance?.playlistName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playlistInstance, field: 'videos', 'error')} ">
	<label for="videos">
		<g:message code="playlist.videos.label" default="Videos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${playlistInstance?.videos?}" var="v">
    <li><g:link controller="video" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="video" action="create" params="['playlist.id': playlistInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'video.label', default: 'Video')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: playlistInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="playlist.user.label" default="Usuário" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${tutoit.User.list()}" optionKey="id" required="" value="${playlistInstance?.user?.id}" class="many-to-one"/>
</div>

