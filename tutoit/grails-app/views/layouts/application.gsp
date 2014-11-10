<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <title>Tuto It</title>

        <!-- Core meta-->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Core CSS -->
        <link rel="stylesheet" href="<g:resource dir='css' file='bootstrap.min.css'/>">
        <link rel="stylesheet" href="<g:resource dir='css' file='sb-admin.css'/>">
        <link rel="stylesheet" type="text/css" href="<g:resource dir='font-awesome-4.1.0/css' file='font-awesome.min.css'/>">

        <g:layoutHead/>
        <r:layoutResources/>
    </head>

    <body>

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
                    <a class="navbar-brand" href="/tutoit">Tuto It</a>
                </div>

                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">

                        <img class="avatar" src="${resource(dir: 'images', file: 'profile.png')}"/>

                        <li>
                            <a href=""><i class="fa fa-fw fa-search"></i> Explorar</a>
                        </li>

                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#profile">
                                <i class="fa fa-fw fa-user"></i> Perfil <i class="fa fa-fw fa-caret-down"></i>
                            </a>
                            <ul id="profile" class="collapse">
                                <li>
                                    <a href="${createLink(controller: 'user', action: 'profile')}"> Visualizar</a>
                                </li>

                                <li class="page-scroll">
                                    <a href=""> Alterar Perfil</a>
                                </li>

                                <li>
                                    <a href=""> Configurações</a>
                                </li>

                                <li>
                                    <a href=""> Excluir Conta</a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <a href=""><i class="fa fa-fw fa-play-circle"></i> Meus Vídeos</a>
                        </li>

                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#categories">
                                <i class="fa fa-fw fa-stack-exchange"></i> Categorias <i class="fa fa-fw fa-caret-down"></i>
                            </a>
                            <ul id="categories" class="collapse">

                                <li>
                                    <a href=""> Todas</a>
                                </li>

                                <li>
                                    <a href=""> Tecnologia</a>
                                </li>

                            </ul>
                        </li>

                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#market">
                                <i class="fa fa-fw fa-gift"></i> Mercado <i class="fa fa-fw fa-caret-down"></i>
                            </a>
                            <ul id="market" class="collapse">
                                <li>
                                    <a href=""> Meus Itens</a>
                                </li>

                                <li>
                                    <a href=""> Loja</a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <a href=""><i class="fa fa-fw fa-wrench"></i> Bootstrap Grid</a>
                        </li>

                    </ul>
                </div>
                <!-- /.navbar-collapse -->

            </nav>

            <div id="page-wrapper">

                <div class="container-fluid">
                    <g:layoutBody/>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="<g:resource dir='js' file='jquery.js'/>"></script>
        <script src="<g:resource dir='js' file='bootstrap.min.js'/>"></script>
    </body>
</html>