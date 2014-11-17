<%@ page import="tutoit.User" %>

<div class="page-container">

    <h1>Tuto it</h1>

    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
        <g:textField name="username" class="username" value="${userInstance?.username}" placeholder="Nome"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
        <g:passwordField name="password" class="password" value="${userInstance?.password}" placeholder="Senha"/>
    </div>

    <button class="btn btn-theme btn-lg btn-block save" name="create"
            value="${message(default: 'Create')}">Cadastrar</button>

    <g:hiddenField name="enabled" value="${userInstance?.enabled = true}"/>

</div>