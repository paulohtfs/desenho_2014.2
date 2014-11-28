
<%@ page import="tutoit.User" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>

	<body>

    <!-- Page Header -->
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header">
                <g:fieldValue field="username" bean="${currentUser}"/>
            </h3>

            <ol class="breadcrumb">
                <li>
                    <i class="fa fa-user"></i>
                    <a class="pageHeader" href="${createLink(controller: 'user', action: 'show')}">
                    Perfil
                    </a>
                </li>
                <li class="active">
                    <i class="fa fa-eye"></i> Visualizar
                </li>
            </ol>
        </div>
    </div>
    <!-- .row -->

    <!-- User Cover -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <img class="img-responsive" src="${resource(dir: 'images', file: 'profile.png')}">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- -->

    <!-- User data -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"> Geral</h3>
                </div>

                <div class="panel-body">

                    <!-- Main user data -->
                    <div class="col-sm-6">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <b>Usuário: </b>
                                <g:fieldValue field="username" bean="${currentUser}"/>
                            </li>

                            <li class="list-group-item">
                                <b>Sobrenome: </b>
                                <g:if test="${!currentUser.userLastName}">
                                    Não Informado
                                </g:if>
                                <g:else>
                                    <g:fieldValue field="userLastName" bean="${currentUser}"/>
                                </g:else>
                            </li>

                            <li class="list-group-item">
                                <b>Email: </b>
                                <g:if test="${!currentUser.userEmail}">
                                    Não Informado
                                </g:if>
                                <g:else>
                                    <g:fieldValue field="userEmail" bean="${currentUser}"/>
                                </g:else>
                            </li>

                            <li class="list-group-item">
                                <b>Idade: </b>
                                <g:if test="${!currentUser.userAge}">
                                    Não Informado
                                </g:if>
                                <g:else>
                                    <g:fieldValue field="userAge" bean="${currentUser}"/>
                                </g:else>
                            </li>
                        </ul>
                    </div>
                    <!-- /.col-sm-6 -->

                    <!-- Location data -->
                    <div class="col-sm-6">
                        <ul class="list-group">
                            <div class="form-group">
                                <li class="list-group-item">
                                    <b>País: </b>
                                    <g:if test="${!currentUser.userCountry}">
                                        Não Informado
                                    </g:if>
                                    <g:else>
                                        <g:fieldValue field="userCountry" bean="${currentUser}"/>
                                    </g:else>
                                </li>
                            </div>

                            <div class="form-group">
                                <li class="list-group-item">
                                    <b>Estado: </b>
                                    <g:if test="${!currentUser.userState}">
                                        Não Informado
                                    </g:if>
                                    <g:else>
                                        <g:fieldValue field="userState" bean="${currentUser}"/>
                                    </g:else>
                                </li>
                            </div>
                        </ul>
                    </div>
                    <!-- /.col-sm-6 -->

                </div>
            </div>
            <!-- /.col-sm-4 -->

        </div>
    </div>
    <!-- .user data -->

    <!-- Friend Circle-->
    <div class="row">

    </div>

    </body>
</html>
