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
                    <a class="navbar-brand" href="/tutoit">Tuto It</a>>
                </div>
                                 <div class="nav navbar-right top-nav" >
                -                 <li>
                                     <a href="${createLink(controller: 'login', action: 'full')}"> Login <li>
                                     </li></a>
                                 </li>
                -                </div>

            <div class="nav navbar-right top-nav" >
                -                 <li>
                <a href="${createLink(controller: 'user', action: 'create')}"> Cadastrar <li>
                </li></a>
            </li>
                -                </div>

                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">

                        <div class="avatar">
                            <img src="${resource(dir: 'images', file: 'profile.png')}"/>
                        </div>

                        <li>
                            <a href="/tutoit/searchable"><i class="fa fa-fw fa-search"></i>Explorar Vídeo </a>
                        </li>

                        <!-- Profile -->

                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#profile">
                                <i class="fa fa-fw fa-user"></i> Perfil <i class="fa fa-fw fa-caret-down"></i>
                            </a>
                            <ul id="profile" class="collapse">
                                <li>
                                    <a href="${createLink(controller: 'user', action: 'show')}"> Visualizar</a>
                                </li>

                                <li class="page-scroll">
                                    <a href="${createLink(controller: 'user', action: 'edit')}"> Alterar Perfil</a>
                                </li>

                                <li>
                                    <a href="${createLink(controller: 'user', action: 'deleteAccount')}"> Excluir Conta</a>
                                </li>
                            </ul>
                        </li>

                        <!-- Meus Videos -->

                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#meusvideos">
                                <i class="fa fa-fw fa-play-circle"></i> Meus Vídeos <i class="fa fa-fw fa-caret-down"></i>
                            </a>
                            <ul id="meusvideos" class="collapse">
                                <li>
                                    <a href="${createLink(controller: 'video', action: 'list')}"> Visualizar</a>
                                </li>

                                <li class="page-scroll">
                                    <a href="${createLink(controller: 'video', action: 'create')}"> Adicionar</a>
                                </li>

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
                                    <a href="${createLink(controller: 'playlist', action: 'delete')}"> Excluir Playlist</a>
                                   </li>

                                   <li>
                                       <a href="${createLink(controller: 'playlist', action: 'edit')}"> Alterar Playlist</a>
                                   </li>

                               </ul>

                            </ul>
                        </li>





                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#categories">
                                <i class="fa fa-fw fa-stack-exchange"></i> Categorias <i class="fa fa-fw fa-caret-down"></i>
                            </a>
                            <ul id="categories" class="collapse">

                                <li>
                                    <a href="/tutoit/category/list"> Todas</a>
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
