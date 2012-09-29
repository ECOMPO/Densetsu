<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrador
 * Date: 14/08/12
 * Time: 22:13
 * To change this template use File | Settings | File Templates.
 */

session_start();
if($_SESSION['AUTENTICADO'] != '1') {
	header("Location: http://localhost/site_geek/cadastro_usuario_vricardo/proibido.php");
}

die("ENTREI NO CADASTRO YAY!");