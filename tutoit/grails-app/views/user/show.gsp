
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
                USER
            </h3>
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
                    <h3 class="panel-title"> Principal</h3>
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
                                Tada
                            </li>

                            <li class="list-group-item">
                                <b>Idade: </b>
                                22
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
                                    Brasil
                                </li>
                            </div>

                            <div class="form-group">
                                <li class="list-group-item">
                                    <b>Estado: </b>
                                    Brasília
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
