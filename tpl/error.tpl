<html>

<head>
	<title>Profilo</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width , initial-scale=1">

    <script type="text/javascript" src="bootstrap/jquery-3.1.1.min.js"></script>	
    <script type="text/javascript" src="bootstrap/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link href="bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    
    <link href="css/general.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="js/form.js"></script>
    <script type="text/javascript" src="js/editUser.js"></script>

</head>

<body>

    <!-- navbar -->    
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/files/index.html">Pasti</a>
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
                    <h1 class="centra">ERRORE</h1>               
                </div>
            </div>
            <hr>
    		<p>
    			(:messaggio:)
    		</p>

		</div>
	</div>
</body>

</html>


