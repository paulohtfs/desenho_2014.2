<%@ page import="tutoit.User" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Profile CSS Style -->
        <link rel="stylesheet" href="<g:resource dir='css' file='profile.css'/>">
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    </head>

    <body>
    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                Perfil
            </h1>
            <ol class="breadcrumb">
                <li>
                    <i class="fa fa-user"></i>  <a href=""> Paulo</a>
                </li>
            </ol>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <section id="Alterar">
                <h1>Alterar</h1>
                <g:render template="edit"/>
            </section>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
        </div>
    </div>
    <section id="Excluir">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1>Excluir</h1>
                </div>
            </div>

            <!-- Reason button -->
            <div class="btn-group form-group">
              <button type="button" class="btn btn-default btn-lg input-lg">Motivo</button>
              <button type="button" class="btn btn-default btn-lg dropdown-toggle input-lg" data-toggle="dropdown">
                <span class="caret"></span>
                <span class="sr-only">Toggle Dropdown</span>
              </button>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
              </ul>
            </div>

            <g:form method="post">
                <div class="btn btn-default save form-group">
                    <g:hiddenField name="id" value="${userInstance?.id}" />
                    <g:actionSubmit class="delete" action="delete" value="Excluir conta" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Você tem certeza?')}');" />
                </div>
            </g:form>
        </div>
    </section>

    <!-- Custom JS Scroll Page -->
    <script src="<g:resource dir='js' file='profile.js'/>"></script>
    <script src="<g:resource dir='js' file='jquery-1.11.0.js'/>"></script>
    <script src="<g:resource dir='js' file='jquery.easing.min.js'/>"></script>
    </body>

</html>