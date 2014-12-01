<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="tutoit.Category" %>
<%@ page import="tutoit.VideoController" %>

<html xmlns="http://www.w3.org/1999/html">
<head>
    <title></title>
</head>

<body>
<!-- Page Content -->
<div class="container">

    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-9">
            <h1 class="page-header">Categorias</h1>
        </div>
    </div>
    <!-- /.row -->

    <!-- Projects Row -->
    <div class="row">
        <div class="col-md-3 portfolio-item">
                <g:link action="show" id="1">
                    <img class="img-responsive" src="${resource(dir: 'images/categories', file: 'TI.jpg')}" alt="">
                </g:link>
        </div>
        <div class="col-md-3 portfolio-item">
             <g:link action="show" id="2">
                 <img class="img-responsive" src="${resource(dir: 'images/categories', file: 'gastronomia.jpg')}" alt="">
             </g:link>
        </div>
        <div class="col-md-3 portfolio-item">
             <g:link action="show" id="3">
                 <img class="img-responsive" src="${resource(dir: 'images/categories', file: 'beleza.jpg')}" alt="">
             </g:link>
        </div>
    </div>
    <!-- /.row -->

    <!-- Projects Row -->
    <div class="row">
        <div class="col-md-3 portfolio-item">
            <g:link action="show" id="4">
                <img class="img-responsive" src="${resource(dir: 'images/categories', file: 'fitness.jpg')}" alt="">
            </g:link>
        </div>
        <div class="col-md-3 portfolio-item">
            <g:link action="show" id="5">
                <img class="img-responsive" src="${resource(dir: 'images/categories', file: 'saude-e-bem-estar.jpg')}" alt="">
            </g:link>
        </div>
        <div class="col-md-3 portfolio-item">
            <g:link action="show" id="6">
                <img class="img-responsive" src="${resource(dir: 'images/categories', file: 'marketing.jpg')}" alt="">
            </g:link>
        </div>
    </div>
    <!-- /.row -->

    <!-- Projects Row -->
    <div class="row">
        <div class="col-md-3 portfolio-item">
            <g:link action="show" id="7">
                <img class="img-responsive" src="${resource(dir: 'images/categories', file: 'serviços-Gerais.jpg')}" alt="">
            </g:link>
        </div>
        <div class="col-md-3 portfolio-item">
            <g:link action="show" id="8">
                <img class="img-responsive" src="${resource(dir: 'images/categories', file: 'fotografia.jpg')}" alt="">
            </g:link>
        </div>
        <div class="col-md-3 portfolio-item">
            <g:link action="show" id="9">
                <img class="img-responsive" src="${resource(dir: 'images/categories', file: 'idiomas.png')}" alt="">
            </g:link>
        </div>
    </div>
    <!-- /.row -->

 </div>
<!-- /.container -->

</body>
</html>