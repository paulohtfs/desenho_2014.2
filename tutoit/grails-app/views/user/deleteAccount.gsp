<%--
  Created by IntelliJ IDEA.
  User: paulo
  Date: 11/16/14
  Time: 7:02 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
</head>

<body>

<!-- Good bye Message -->
<div class="row">
    <div class="page-header"></div>
    <div class="col-lg-12">
        <div class="col-xs-3">
            <img class="img-rounded col-xs-12" src="http://free.clipartof.com/28-Free-Crying-Smiley-Face-Clip-Art-Illustration.jpg">
        </div>
        <div class="col-xs-8">
            <h2>
                <g:fieldValue field="username" bean="${currentUser}"/>,
                <br>
                <br>
                Você está nos deixando!
            </h2>
        </div>
    </div>
</div>

<br>

<!-- Page Header -->
<div class="row">
    <div class="page-header"></div>
    <div class="col-lg-8">
        <h3> Deixe o motivo</h3>
        <textarea class="form-control" rows="3"></textarea>
        <br>
        <g:actionSubmit class="btn btn-lg btn-danger"
                        action="delete"
                        value="Excluir"
                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
    </div>
</div>
<!-- .row -->
</body>
</html>