<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="tutoit.Category" %>
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
                <a class="navbar-brand" href="${createLink(uri: '/')}">Tuto It</a>
            </div>

            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="${createLink(controller: 'user', action: 'show')}">
                                <i class="fa fa-fw fa-user"></i> Visualizar
                            </a>
                        </li>
                        <li>
                            <a href="${createLink(controller: 'user', action: 'edit')}">
                                <i class="fa fa-fw fa-gear"></i> Alterar Perfil
                            </a>
                        </li>
                        <li>
                            <a href="${createLink(controller: 'user', action: 'deleteAccount')}">
                                <i class="fa fa-fw fa-ban"></i> Excluir Conta
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="${createLink(controller: 'logout', action: 'index')}">
                                <i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>


            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">

                    <div class="avatar">
                        <img src="${resource(dir: 'images', file: 'profile.png')}"/>
                    </div>

                    <li>
                        <a href="/tutoit/searchable"><i class="fa fa-fw fa-search"></i>Explorar Vídeo </a>
                    </li>

                    <!-- Meus Videos -->

                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#meusvideos">
                            <i class="fa fa-fw fa-play-circle"></i> Meus Vídeos <i class="fa fa-fw fa-caret-down"></i>
                        </a>
                        <ul id="meusvideos" class="collapse">
                            <li>
                                <a href="${createLink(controller: 'video', action: 'show')}"> Visualizar</a>
                            </li>

                            <li class="page-scroll">
                                <a href="${createLink(controller: 'video', action: 'create')}"> Adicionar</a>
                            </li>

                            <li class="page-scroll">
                                <a href="${createLink(controller: 'video', action: 'edit')}"> Editar video</a>
                            </li>

                        </ul>
                    </li>


                    <!-- Playlist -->
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#playlist">
                            <i class="fa fa-fw fa-play-circle"></i> Playlist <i class="fa fa-fw fa-caret-down"></i>
                        </a>

                            <ul id="playlist" class="collapse">
                                <li class="page-scroll">

                                    <a href="${createLink(controller: 'playlist', action: 'list')}"> PlayLists</a>
                                </li>

                                <li>
                                    <a href="${createLink(controller: 'playlist', action: 'create')}"> Criar Playlist</a>
                                </li>

                                <li>
                                    <a href="${createLink(controller: 'playlist', action: 'edit')}"> Editar Playlist</a>
                                </li>

                            </ul>
                       </li>


                <!-- Categorias -->

                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#categories">
                            <i class="fa fa-fw fa-stack-exchange"></i> Categorias <i class="fa fa-fw fa-caret-down"></i>
                        </a>

                        <ul id="categories" class="collapse">

                            <li>
                                <a href="${createLink(controller: 'category', action: 'categories')}">Todas</a>
                            </li>

                            <sec:ifAllGranted roles="ROLE_ADMIN">
                                <li>
                                    <a href="${createLink(controller: 'category', action: 'create')}">Adicionar Categoria</a>
                                </li>
                            </sec:ifAllGranted>

                        </ul>
                    </li>

                <!-- Market -->
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
