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

                <g:form method="post" >
                    <g:hiddenField name="id" value="${currentUser?.id}" />
                    <g:hiddenField name="version" value="${currentUser?.version}" />
                    <fieldset>
                        <g:render template="editform"/>
                    </fieldset>
                    <fieldset>
                        <g:actionSubmit class="btn btn-lg btn-primary col-lg-12" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    </fieldset>
                </g:form>
            </div>
            <!-- /.col-sm-4 -->
        </div>
    </div>
    <!-- .user data -->

	</body>
</html>
