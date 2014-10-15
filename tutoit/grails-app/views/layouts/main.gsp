<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- Bootstrap Core CSS -->
        <link href="${request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

	    <!-- Custom CSS -->
	    <link href="${request.contextPath}/css/sb-admin.css" rel="stylesheet">

	    <!-- Custom Fonts -->
	    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

		<g:layoutHead/>
		<r:layoutResources />
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
		            <a class="navbar-brand" href="/tutoit/">TUTO IT</a> 
		        </div> 

		         <!-- Search-->
		        <form class="navbar-form navbar-right" action="#" role="search">
		            <div class="form-group">
	                  <div class="input-group">
	                    <input class="form-control" id="navbarInput-01" type="search" placeholder="Search">
	                    <span class="input-group-btn">
	                        <button type="submit" class="btn btn-default">
	                        	<span class="glyphicon glyphicon-search"></span>
	                    	</button>
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

	                    <li>
	                        <a href="/tutoit/user/perfil"><i class="fa fa-fw fa-dashboard"></i> Perfil</a>
	                        <!-- ${createLink(uri: '/grails-app/views/user/perfil.gsp')} não deu certo -->
	                    </li>

	                    <li>
	                        <a href="charts.html"><i class="fa fa-fw fa-bar-chart-o"></i> Explorar Videos 
	                            <span class="glyphicon glyphicon-search"></span>
	                        </a>
	                    </li>

	                    <li>
	                        <a href="tables.html"><i class="fa fa-fw fa-table"></i> Timeline</a>
	                    </li>

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
		        <!-- /.navbar-collapse -->
		    </nav>

		    <!-- Add here the other pages-->

	        <section id="teste">
	            <div id="page-wrapper">

	                <div class="container-fluid">

	                    <!-- Page Heading -->
	                    <div class="row">
	                        <div class="col-lg-12">
	                            <h1 class="page-header">
	                                Blank Page <small>Subheading</small>
	                            </h1>
	                            <ol class="breadcrumb">
	                                <li>
	                                    <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
	                                </li>
	                                <li class="active">
	                                    <i class="fa fa-file"></i> Blank Page
	                                </li>
	                            </ol>
	                        </div>

	                        <g:layoutBody/>
	                    </div>
	                    <!-- /.row -->
	                </div>
	                <!-- /.container-fluid-->   
	             </div>
	            <!-- /#page-wrapper -->
	        </section>
	    </div>
	    <!-- /#wrapper -->
 



		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources /> 

		<!-- jQuery Version 1.11.0 -->
	    <script src="${request.contextPath}/js/jquery-1.11.0.js"></script>

	    <!-- Bootstrap Core JavaScript -->
	    <script src="${request.contextPath}/js/bootstrap.min.js"></script>
	</body>
</html>
