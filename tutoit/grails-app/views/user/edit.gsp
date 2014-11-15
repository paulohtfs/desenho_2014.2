<%@ page import="tutoit.User" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
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
                    <a href="${createLink(controller: 'user', action: 'show')}">
                        Perfil
                    </a>
                </li>
                <li class="active">
                    <i class="fa fa-edit"></i> Editar
                </li>
            </ol>
        </div>
    </div>
    <!-- .row -->

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
                                <b>Usuário </b>
                                <div class="form-group">
                                    <input class="form-control" placeholder="${currentUser.username}">
                                </div>
                            </li>

                            <li class="list-group-item">
                                <b>Sobrenome </b>
                                <div class="form-group">
                                    <g:if test="${!currentUser.userLastName}">
                                        <input class="form-control" placeholder="Sobrenome">
                                    </g:if>
                                    <g:else>
                                        <input class="form-control" placeholder="${currentUser.userLastName}">
                                    </g:else>
                                </div>
                            </li>

                            <li class="list-group-item">
                                <b>Email </b>
                                <div class="form-group">
                                    <g:if test="${!currentUser.userEmail}">
                                        <input class="form-control" placeholder="Email">
                                    </g:if>
                                    <g:else>
                                        <input class="form-control" placeholder="${currentUser.userEmail}">
                                    </g:else>
                                </div>
                            </li>

                            <li class="list-group-item">
                                <b>Idade </b>
                                <div class="form-group">
                                    <g:if test="${!currentUser.userAge}">
                                        <input class="form-control" placeholder="">
                                    </g:if>
                                    <g:else>
                                        <input class="form-control" placeholder="${currentUser.userAge}">
                                    </g:else>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- /.col-sm-6 -->

                    <!-- Location data -->
                    <div class="col-sm-6">
                        <ul class="list-group">
                            <div class="form-group">
                                <li class="list-group-item">
                                    <b>País </b>
                                    <select class="form-control">
                                        <option>Brasil</option>
                                    </select>
                                </li>
                            </div>

                            <div class="form-group">
                                <li class="list-group-item">
                                    <b>Estado </b>
                                    <select class="form-control">
                                        <option>Brasília</option>
                                    </select>
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

	</body>
</html>
