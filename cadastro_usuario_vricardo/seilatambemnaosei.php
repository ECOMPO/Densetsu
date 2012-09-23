<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrador
 * Date: 14/08/12
 * Time: 21:53
 * To change this template use File | Settings | File Templates.
 */
session_start();
if(strlen($_POST['picadilha']) > 2 and strlen($_POST['pw']) > 2) {
	$usuario = $_POST['picadilha'];
	$senha = $_POST['pw'];


	$conexao = mysql_connect('localhost','root', '') or die('Errei a senha');
	mysql_select_db('densetsu', $conexao);
	$sql = "select * from user where usuario = '{$usuario}' and
			senha = '{$senha}'";

	$resultado = mysql_query($sql, $conexao) or die('O sql nao foi executado');
	if(mysql_num_rows($resultado) > 0) {
		//sucesso
		$_SESSION['AUTENTICADO'] = '1';
	} else {
		//erro
		header("Location: http://localhost/site_geek/cadastro_usuario_vricardo/proibido.php");
	}


} else die('Parametros insuficientes');