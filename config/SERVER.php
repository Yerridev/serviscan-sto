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
	// define("SERVER", getenv("DB_HOST") ?: "localhost");
	// define("DB", getenv("DB_DATABASE") ?: "ser_mecanica");
	// define("USER", getenv("DB_USERNAME") ?: "root");
	// define("PASS", getenv("DB_PASSWORD") ?: "");

	// define("SGBD", "mysql:host=".SERVER.";dbname=".DB);

	// /*----------  Datos de la encriptación  ----------*/
	// define("METHOD", getenv("METHOD") ?: "AES-256-CBC");
	// define("SECRET_KEY", getenv("SECRET_KEY") ?: '$STO@2021');
	// define("SECRET_IV", getenv("SECRET_IV") ?: '102791');

	// mysql://root:pgEQaMsjAbuWpwuboHqMSxXielvbqnnx@switchback.proxy.rlwy.net:29558/railway


	/*----------  Datos del servidor  ----------*/
	define("SERVER", $_ENV["DB_HOST"] ?? "localhost");
	define("DB", $_ENV["DB_DATABASE"] ?? "ser_mecanica");
	define("USER", $_ENV["DB_USERNAME"] ?? "root");
	define("PASS", $_ENV["DB_PASSWORD"] ?? "");

	define("SGBD", "mysql:host=".SERVER.";dbname=".DB);

	/*----------  Datos de la encriptación  ----------*/
	define("METHOD", $_ENV["METHOD"] ?? "AES-256-CBC");
	define("SECRET_KEY", $_ENV["SECRET_KEY"] ?? '$STO@2021');
	define("SECRET_IV", $_ENV["SECRET_IV"] ?? '102791');

