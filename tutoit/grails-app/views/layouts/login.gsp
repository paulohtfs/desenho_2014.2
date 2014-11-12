<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <title>Login Tuto It</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='reset.css'/>">
        <link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='supersized.css'/>">
        <link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='style.css'/>">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <g:layoutHead/>
        <r:layoutResources/>
    </head>

    <body>
    <div class="page-container">
    <g:layoutBody/>
    </div>

    <script type='text/javascript'>
        <!--
        (function() {
            document.forms['loginForm'].elements['j_username'].focus();
        })();
        // -->
    </script>

    <!-- Javascript -->
    <script src="<g:resource dir='js' file='jquery-1.8.2.min.js'/>"></script>
    <script src="<g:resource dir='js' file='supersized.3.2.7.min.js'/>"></script>
    <script src="<g:resource dir='js' file='supersized-init.js'/>"></script>
    <script src="<g:resource dir='js' file='scripts.js'/>"></script>
    </body>

</html>