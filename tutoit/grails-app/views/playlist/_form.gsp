<%@ page import="tutoit.Playlist" %>



<div class="fieldcontain ${hasErrors(bean: playlistInstance, field: 'playlistName', 'error')} required">
	<label for="playlistName">
		<g:message code="playlist.playlistName.label" default="Playlist Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="playlistName" required="" value="${playlistInstance?.playlistName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playlistInstance, field: 'playlistDate', 'error')} required">
	<label for="playlistDate">
		<g:message code="playlist.playlistDate.label" default="Playlist Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="playlistDate" precision="day"  value="${playlistInstance?.playlistDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: playlistInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="playlist.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${tutoit.User.list()}" optionKey="id" required="" value="${playlistInstance?.user?.id}" class="many-to-one"/>
</div>

