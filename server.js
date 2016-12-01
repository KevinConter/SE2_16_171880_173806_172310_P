/*
	Server
*/
/*************** LIBRERIE **********************/
var util = require('util');
var express = require('express');
var bodyParser = require('body-parser');
var bind = require('bind');
var session = require('express-session');
var db = require('./moduli/db.js');
/************************************************/

/************** INIZIALIZZAZIONE ******************/
var app = express();

//set della PORT del server
app.set('port',( process.env.PORT || 8848));
//set il server per rispondere a richieste di file
app.use('/files',express.static(__dirname+'/web'));
//applica body-parser alle richieste
app.use(bodyParser.urlencoded({ extended: false }));
//inizializzazione delle sessioni
app.use(session({secret: "MySecretPassword"}));
/*************************************************/

//Set del server per reindirizzare le richieste fatte alla root
app.get("/",function(request,response){
	//Controlli per verificare se esiste la sessione
	var sess = request.session;
	if(sess.user){
		response.redirect("/files/index.html");
	}else{	//Se non esiste
		response.redirect("/files/logIn.html");
	}
});

app.get("/files/elenco.html",function(request,response){
	bind.toFile("tpl/elenco.tpl",
		{},
		function(data){
			response.writeHead(200,{"Content-Type":"text/html"});
			response.end(data)
		});
});

app.get("/files/resoconto.html",function(request,response){
	bind.toFile("tpl/resoconto.tpl",
		{},
		function(data){
			response.writeHead(200,{"Content-Type":"text/html"});
			response.end(data)
		});
});

//per il signin dell'utente
app.post("/SignIn",function(request,response){
	var errore=false;
	var nome = undefined;
	var cognome = undefined;
	var indirizzo = undefined;
	var data = undefined;
	var numero = undefined;
	var mail = undefined;
	var pwd = undefined;
	
	if(request.body.iNome){
		nome = request.body.iNome;
	}else{
		errore=true;
	}
	
	if(request.body.iCognome){
		cognome = request.body.iCognome;
	}else{
		errore=true;
	}
	
	if(request.body.iIndirizzo){
		indirizzo = request.body.iIndirizzo;
	}else{
		errore=true;
	}
	
	if(request.body.iData){
		data = request.body.iData;
	}else{
		errore=true;
	}
	
	if(request.body.iNumero){
		numero = request.body.iNumero;
	}else{
		errore=true;
	}
	
	if(request.body.iMail){
		mail = request.body.iMail;
	}else{
		errore=true;
	}
	
	if(request.body.iPassword){
		pwd = request.body.iPassword;
	}else{
		errore=true;
	}
	
	if(errore){	
		response.redirect("/");
	}else{
		//console.log("\nnome: "+nome+"\ncognome: "+cognome+"\nindirizzo: "+indirizzo+"\ndata: "+data+"\nnumero: "+numero+"\nmail: "+mail+"\npassword: "+pwd);
		var user = new db.User(nome,cognome,indirizzo,new Date(data),numero,mail,pwd,[]);
		var id = db.addUser(user);
		response.redirect("/");
	}
});

//per il login dell'utente
app.post("/LogIn",function(request,response){
	var mail = undefined;
	var pwd = undefined;
	if(request.body.iMail){
		mail = request.body.iMail;
	}
	if(request.body.iPassword){
		pwd = request.body.iPassword;
	}
	if(mail != undefined && pwd != undefined){
		var user = db.cercaUtenteMailPassword(mail,pwd);
		request.session.user = user;
	}
	response.redirect("/");
});

//Bind per recuperare index.html
app.get("/files/index.html",function(request,response){
	var user={nome:"Nome",cognome:"Cognome"};
	var dati=['asd','asd','asd'];
	bind.toFile("tpl/index.tpl",
		{
		user: user,
		piatti:dati
		},
		function(data){
			response.writeHead(200,{"Content-Type":"text/html"});
			response.end(data);
		}
	);
});

app.listen(app.get('port'), function() {
  console.log('Node app is running on port', app.get('port'));
});
