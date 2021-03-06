<!DOCTYPE html>
<html>
	<head>
		<title>ADMINISTRATOR</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="/files/css/general.css">
        <link rel="stylesheet" href="/files/css/admin.css">
          <script type="text/javascript" src="/files/js/form.js"></script>
        <script type="text/javascript" src="/files/js/admin.js"></script>
        <script>
        	$(document).ready(function(){
        		var messaggio="(:messaggio:)";
        		if(messaggio!=""){
        			alert("Attenzione!\n"+messaggio);
        		}
        	});
        </script>
        
	</head>
	<body>
    
    	<!-- navbar -->    
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/files/admin.html">APSP Pasti</a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                 	 </button>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-left">
                        <li class="active"><a  href="/files/admin.html" role="button" class="btn btn-lg btn-block">Home</a></li>
                        <li><a href="/GetElencoPrenotazioni" role="button" class="btn btn-lg btn-block">
                        	<span class="glyphicon glyphicon-list-alt"></span> 
                        	Elenco Prenotazioni
                        	</a>
                        </li>
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
						<h1 class="centra">Pagina Amministratore</h1>
					</div>
				</div>
                
                <hr>
                <form action="/GetPiatto" method="POST" id="search">
					<div class="row" >
                        <div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
                            <div class="form-group" id="cCerca">
                                <label for="iCerca" class="control-label"> Nome piatto da cercare</label>
                                <input type="text" class="form-control" id="iCerca" placeholder="Inserisci nome piatto da cercare" maxlength="255" name="iCerca">
                            </div>
                        </div>
                    </div>
                    <div class="row">
						<div class="col-xs-5 col-xs-offset-1">
		    				<input type="reset" class="btn btn-lg btn-block btn-danger" value="Resetta" onClick="resetta()">
		    			</div>
						<div class="col-xs-5">
							<div class="form-group">
								<input type="button" class="btn btn-lg btn-block btn-primary" value="Cerca" onClick="controlloCerca()">
							</div>
						</div>
					</div>
                </form>    
				<hr>
                
                
				<form action="/AddPiatto" enctype="multipart/form-data" method="POST" id="modulo">
					<div class="row" >
                        <div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
                            <div class="form-group" id="cNome">
                                <label for="iNome" class="control-label"> Nome piatto</label>
                                <input type="text" class="form-control" id="iNome" placeholder="Inserisci nome piatto" maxlength="255" name="iNome">
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
                            <div class="form-group" id="cFotoProfilo">
                               <label for="LabelFoto"> Foto Piatto </label>
                               <label for="file" id="LabelFoto" class="form-control center-block labelFoto"></label>
                               <input type="file" id="file" onchange="cambiaFoto()" name="file" accept="image/*" class="invisibile">
                             </div>
                        </div>
                    </div>
                    
                    <div class="row" >
                        <div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
                            <div class="form-group" id="cTipo">
                                <label for="iTipo" class="control-label"> Tipo</label>
                                <select id="iTipo"  class="form-control" name="iTipo">
                                    <option value="1">Primo</option>
                                    <option value="2">Secondo</option>
                                    <option value="3">Contorno</option>
                                    <option value="4">Dessert</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    <div class="row" >
                        <div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
                            <div class="form-group" id="cIngredienti">
                                <label for="iIngredienti" class="control-label"> Ingredienti</label>
                                <textarea class="form-control" rows="5" id="iIngredienti" name="iIngredienti" style="resize:none"></textarea>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row" >
                        <div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
                            <div class="form-group" id="cAllergeni">
                                <label for="iAllergeni" class="control-label"> Allergeni</label>
                                <textarea class="form-control" rows="5" id="iAllergeni" name="iAllergeni" style="resize:none"></textarea>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row" >
                        <div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
                            <div class="form-group" id="cCuriosita">
                                <label for="iCuriosita" class="control-label"> Curiosità</label>
                                <textarea class="form-control" rows="5" id="iCuriosita" name="iCuriosita" style="resize:none"></textarea>
                            </div>
                        </div>
                    </div>
                    
					<hr>
					<div class="row">
						<div class="col-xs-5 col-xs-offset-1">
		    				<input type="reset" class="btn btn-lg btn-block btn-danger" value="Resetta" onClick="resetta()">
		    			</div>
						<div class="col-xs-5">
							<div class="form-group">
								<input type="button" class="btn btn-lg btn-block btn-success" value="Aggiungi"  onClick="controlloInvia()">
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>
