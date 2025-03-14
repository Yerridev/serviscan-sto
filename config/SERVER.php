<?php
	
	/*----------  Datos del servidor  ----------*/
	// const SERVER="localhost";
	// const DB="ser_mecanica";
	// const USER="root";
	// const PASS="";


	// const SGBD="mysql:host=".SERVER.";dbname=".DB;


	// /*----------  Datos de la encriptacion (No modificar) ----------*/
	// const METHOD="AES-256-CBC";
	// const SECRET_KEY='$STO@2021';
	// const SECRET_IV='102791';

	/*----------  Datos del servidor  ----------*/
	define("SERVER", getenv("SERVER") ?: "localhost");
	define("DB", getenv("DB") ?: "ser_mecanica");
	define("USER", getenv("USER") ?: "root");
	define("PASS", getenv("PASS") ?: "");

	define("SGBD", "mysql:host=".SERVER.";dbname=".DB);


	/*----------  Datos de la encriptación  ----------*/
	define("METHOD", getenv("METHOD") ?: "AES-256-CBC");
	define("SECRET_KEY", getenv("SECRET_KEY") ?: '$STO@2021');
	define("SECRET_IV", getenv("SECRET_IV") ?: '102791');
