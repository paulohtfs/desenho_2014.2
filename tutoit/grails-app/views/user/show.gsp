
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
            <h1 class="page-header">
                Perfil
            </h1>
            <ol class="breadcrumb">
                <li>
                    <i class="fa fa-user"></i>  <a href="show.gsp"> Perfil</a>
                </li>
                <li class="active">
                    <i class="fa fa-eye"></i> Visualizar
                </li>
            </ol>
        </div>
    </div>
    <!-- .row -->

    <div class="row">

        <div class="col-lg-12">
            <div class="col-sm-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"> *User*</h3>
                    </div>
                    <div class="panel-body">
                        <div class="page-header">
                            <h4> Principal</h4>
                        </div>
                        <div class="col-sm-6">
                            <ul class="list-group">
                                <li class="list-group-item"> Nome: </li>
                                <li class="list-group-item"> Sobrenome: </li>
                                <li class="list-group-item"> Sexo: </li>
                            </ul>
                        </div>
                        <!-- /.col-sm-4 -->
                    </div>
                </div>
            </div>
            <!-- /.col-sm-4 -->

        </div>
    </div>
	</body>
</html>
