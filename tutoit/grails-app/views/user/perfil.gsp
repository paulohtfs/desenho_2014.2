<%@ page import="tutoit.User" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Tuto It</title>

    <!-- Bootstrap Core CSS -->
    <link href="${request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${request.contextPath}/css/sb-admin.css" rel="stylesheet">
    <link href="${request.contextPath}/css/perfil.css" rel="stylesheet">
    

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />

</head>

<body id="page-top">

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/tutoit/">TUTO IT</a>
            </div>

            <!-- Search-->
            <form class="navbar-form navbar-right" action="#" role="search">
                <div class="form-group">
                  <div class="input-group">
                    <input class="form-control" id="navbarInput-01" type="search" placeholder="Search">
                    <span class="input-group-btn">
                      <button type="submit" class="btn btn-default">
                        <span class="glyphicon glyphicon-search"></span></button>
                    </span>
                  </div>
                </div>
            </form>

            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <!-- Image Profile -->
                    <li>
                        <a href="#"><img src="${resource(dir: 'images', file: 'user.png')}"</a>
                    </li>

                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>

                    <li>
                        <a href="/tutoit/user/perfil"><i class="fa fa-fw fa-dashboard"></i> Perfil</a>
                    </li>

                    <li class="page-scroll">
                        <a href="#Alterar"><i class="fa fa-fw fa-bar-chart-o"></i> Alterar Perfil
                        </a>
                    </li>
                    <li class="page-scroll">
                        <a href="#Excluir"<i class="fa fa-fw fa-table"></i> Excluir Conta</a>
                    </li>

                    <!--
                    <li>
                        <a href="forms.html"><i class="fa fa-fw fa-edit"></i> Forms</a>
                    </li>
                    <li>
                        <a href="bootstrap-elements.html"><i class="fa fa-fw fa-desktop"></i> Bootstrap Elements</a>
                    </li>
                    <li>
                        <a href="bootstrap-grid.html"><i class="fa fa-fw fa-wrench"></i> Bootstrap Grid</a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Dropdown <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="#">Dropdown Item</a>
                            </li>
                            <li>
                                <a href="#">Dropdown Item</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="blank-page.html"><i class="fa fa-fw fa-file"></i> Blank Page</a>
                    </li>
                </ul>
            </div>
             /.navbar-collapse -->
        </nav>

        <!-- Add here the other pages-->
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Alterar Perfil</h1>
                        <ol class="breadcrumb">
                            <li> 
                                <i class="fa fa-dashboard"></i>  <a href="/tutoit/">Home</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-file"></i> Alterar Perfil
                            </li>
                        </ol>
                    </div>
                </div><!-- /.row -->

                <section id="perfil">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <h1>Perfil</h1>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 col-lg-offset-2">
                                <p>Freelancer is a free bootstrap theme created by Start Bootstrap. The download includes the complete source files including HTML, CSS, and JavaScript as well as optional LESS stylesheets for easy customization.</p>
                            </div>
                            <div class="col-lg-4">
                                <p>Whether you're a student looking to showcase your work, a professional looking to attract clients, or a graphic artist looking to share your projects, this template is the perfect starting point!</p><p>Whether you're a student looking to showcase your work, a professional looking to attract clients, or a graphic artist looking to share your projects, this template is the perfect starting point!</p><p>Whether you're a student looking to showcase your work, a professional looking to attract clients, or a graphic artist looking to share your projects, this template is the perfect starting point!</p><p>Whether you're a student looking to showcase your work, a professional looking to attract clients, or a graphic artist looking to share your projects, this template is the perfect starting point!</p><p>Whether you're a student looking to showcase your work, a professional looking to attract clients, or a graphic artist looking to share your projects, this template is the perfect starting point!</p>

                            </div>
                        </div>
                    </div>

                    
                </section>

                <section id="Alterar">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <h1>Alterar</h1>
                        </div>
                    </div>

                    <g:render template="edit"/>    
                </section>

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
            </div> <!-- /#page-wrapper -->
        </div><!-- /#wrapper -->
        


        <!-- jQuery Version 1.11.0 -->
        <script src="${request.contextPath}/js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="${request.contextPath}/js/bootstrap.min.js"></script>
            <!-- Plugin JavaScript -->
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="${request.contextPath}/js/perfil.js"></script>



    </body>

</html>