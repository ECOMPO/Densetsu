<?php header('Content-Type: text/html; charset=utf-8'); 

$pergunta = $_POST['pergunta'];
$op1 = $_POST['op1'];
$op2 = $_POST['op2'];
$op3 = $_POST['op3'];
$op4 = $_POST['op4'];
if($_POST['form'] == "Ok")
{
$perg = fopen("pergunta.txt","w+");
fwrite($perg,"$pergunta");
fclose($perg);
$opc1 = fopen("op1.txt","w+");
fwrite($opc1,"$op1");
fclose($opc1);
$opc2 = fopen("op2.txt","w+");
fwrite($opc2,"$op2");
fclose($opc2);
$opc3 = fopen("op3.txt","w+");
fwrite($opc3,"$op3");
fclose($opc3);
$opc4 = fopen("op4.txt","w+");
fwrite($opc4,"$op4");
fclose($opc4);

$ap1 = fopen("1.txt","w+");
fwrite($ap1,"0");
fclose($ap1);
$ap2 = fopen("2.txt","w+");
fwrite($ap2,"0");
fclose($ap2);
$ap3 = fopen("3.txt","w+");
fwrite($ap3,"0");
fclose($ap3);
$ap4 = fopen("4.txt","w+");
fwrite($ap4,"0");
fclose($ap4);
include("../conexao.php");

	$votei="UPDATE usuario SET voto=''";
	$cadastro=mysql_query($votei) or die(mysql_error());
	echo"<script>window.location='../principal.php';alert('Enquete Alterada com Sucesso!');</script>";
}

?>