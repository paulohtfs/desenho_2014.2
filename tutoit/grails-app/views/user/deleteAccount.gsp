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
<div id="deleteform">
    <g:form action="delete">
        <g:render template="deleteform"/>
    </g:form>
</div>
</body>
</html>