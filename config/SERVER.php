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
	define("SERVER", $_ENV["SERVER"] ?? "localhost");
	define("DB", $_ENV["DB"] ?? "ser_mecanica");
	define("USER", $_ENV["USER"] ?? "root");
	define("PASS", $_ENV["PASS"] ?? "");

	define("SGBD", $_ENV["SGBD"] ?? "mysql:host=".SERVER.";dbname=".DB);


	/*----------  Datos de la encriptación  ----------*/
	define("METHOD", $_ENV["METHOD"] ?? "AES-256-CBC");
	define("SECRET_KEY", $_ENV["SECRET_KEY"] ?? '$STO@2021');
	define("SECRET_IV", $_ENV["SECRET_IV"] ?? '102791');
