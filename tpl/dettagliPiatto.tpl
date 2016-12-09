<!DOCTYPE html>
<html>
	<head>
		<title>Dettagli</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<link rel="stylesheet" href="files/bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css">
		<script type="text/javascript" src="files/bootstrap/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="files/bootstrap/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="files/css/general.css">
		<link rel="stylesheet" href="files/css/dettagliPiatto.css">
	</head>
	<body>
		<!-- navbar -->    
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/files/index.html">APSP Pasti</a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                 	 </button>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-left">
                        <li class="active"><a  href="/files/index.html">Home</a></li>
                        <li><a href="#">Page 1</a></li>
                        <li><a href="#">Page 2</a></li> 
                        <li><a href="#">Page 3</a></li> 
                    </ul>
                    
                    <ul class="nav navbar-nav navbar-right">
                        <li>
							<a href="/files/editUser.html" role="button" class="btn btn-lg btn-block">
                                <span class="glyphicon glyphicon-user"> </span>
                                Profilo
                            </a>
                		</li>
                        <li>
							<a href="/LogOut" role="button" class="btn btn-lg btn-block">
                                <span class="glyphicon glyphicon-log-out"> </span>
                                Esci
                            </a>
                		</li>
                        
                    </ul>
            	</div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <!-- navbar -->
        
        <div class="container">
        	<div class="jumbotron">
        		<div class="row">
        			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        				<h1 class="centra">(:piatto ~ [:nome:]:)</h1>
        			</div>
        		</div>
        		<hr>
        		<div class="row">
        			<div class="col-xs-12 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1">
        				<img class="img-max-height-300 img-responsive center-block" src="(:piatto ~ [:foto:]:)">
        			</div>
        		</div>
        		<div class="panel panel-primary">
        			<div class="panel-heading">
        				<h3 class="panel-title">Ingredienti:</h3>
        			</div>
        			<div class="panel-body">
        				<div class="row">
        					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        						<p>(:piatto ~ [:ingredienti:]:)</p>
        					</div>
        				</div>
        			</div>
        		</div>
        		<div class="panel panel-warnign">
        			<div class="panel-heading">
        				<h3 class="panel-title">Curiosità:</h3>
        			</div>
        			<div class="panel-body">
        				<div class="row">
        					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        						<p>(:piatto ~ [:curiosita:]:)</p>
        					</div>
        				</div>
        			</div>
        		</div>
        		<hr>
        		<div class="row">
        			<div class="col-xs-5 col-xs-offset-1">
        				<a role="button" class="btn btn-lg btn-block btn-danger" href="javascript:history.back()">Indietro</a>
        			</div>
        			<form action="/ScegliPiatto" method="POST">
        				<div class="col-xs-5">
        					<div class="form-group">
        						<input type="hidden" class="form-control" value="(:piatto ~ [:nome:]:)" name="iPiatto">
        						<input type="submit" class="btn btn-lg btn-block btn-success" value="Ordina">
        					</div>
        				</div>
        			</form>
        		</div>
        	</div>
        </div>
	</body>
</html>
