<!DOCTYPE html>
<html>
	<head>
		<title>Resoconto ordine</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="/files/css/general.css">
		<link rel="stylesheet" href="/files/css/resoconto.css">
		<script type="text/javascript" src="/files/js/resoconto.js"></script>
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
                        <li><a  href="/files/index.html" role="button" class="btn btn-lg btn-block">Home</a></li>
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
						<h1 class="centra">Resoconto ordine</h1>
					</div>
				</div>
				<hr>
				<div clas="row">
					<div class="list-group">
						<form id="form" action="/GetPiatti" method="POST">
							<input type="hidden" class="form-control" name="iTipo" id="iHidden">
							<div class="list-group-item panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">Primo</h3>
								</div>
								<div class="panel-body">
									<div class="col-xs-5">
											<img class="img-max-height-125 img-responsive center-block" src="(:primo ~ [:foto:]:)" onclick="getElenco('(:primo ~ [:tipo ~ primo:]:)')">
									</div>
									<div class="col-xs-7">
										<div class="row">
											<div class="col-xs-12">
												<h3>(:primo ~ [:nome:]:)</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="list-group-item panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">Secondo</h3>
								</div>
								<div class="panel-body">
									<div class="col-xs-5">
										<img class="img-max-height-125 img-responsive center-block" src="(:secondo ~ [:foto:]:)" onclick="getElenco('(:secondo ~ [:tipo:]:)')">
									</div>
									<div class="col-xs-7">
										<div class="row">
											<div class="col-xs-12">
												<h3>(:secondo ~ [:nome:]:)</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="list-group-item panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">Contorno</h3>
								</div>
								<div class="panel-body">
									<div class="col-xs-5">
										<img class="img-max-height-125 img-responsive center-block" src="(:contorno ~ [:foto:]:)" onclick="getElenco('(:contorno ~ [:tipo:]:)')">
									</div>
									<div class="col-xs-7">
										<div class="row">
											<div class="col-xs-12">
												<h3>(:contorno ~ [:nome:]:)</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="list-group-item panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">Dessert</h3>
								</div>
								<div class="panel-body">
									<div class="col-xs-5">
										<img class="img-max-height-125 img-responsive center-block" src="(:dessert ~ [:foto:]:)" onclick="getElenco('(:dessert ~ [:tipo:]:)')">
									</div>
									<div class="col-xs-7">
										<div class="row">
											<div class="col-xs-12">
												<h3>(:dessert ~ [:nome:]:)</h3>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
					<hr>
				</div>	
				
				<div class="row">
					<div class="col-xs-12 col-sm-5 col-sm-offset-1 form-group">
	    				<a role="button" class="btn btn-lg btn-block btn-danger" href="javascript:history.back()">Indietro</a>
	    			</div>
					<div class="col-xs-12 col-sm-5 form-group">
						<a href="/Conferma" role="button" class="btn btn-lg btn-block btn-success">
							Conferma
						</a>
					</div>
				</div>
					
				
			</div>
		</div>
	</body>
</html>
