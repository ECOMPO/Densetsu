<style>

.fonte 
	{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	color: #666666;
	}

</style><?php include "../valida_cookies.php"; ?>
<?php include("../conexao.php");



// RECEBE A VARIÁVEL VOTO

if(IsSet($_SESSION["nome_usuario"]))
    $nome_usuario = $_SESSION["nome_usuario"];

$voto = $_POST['voto'];


	
// ARRAY COM O CAMINHO PARA OS ARQUIVOS TEXTOS
$arquivo['1'] = "1.txt";
$arquivo['2'] = "2.txt";
$arquivo['3'] = "3.txt";
$arquivo['4'] = "4.txt";
	
	$votado = mysql_query("select voto from usuario where username = '$nome_usuario'");
	 $dominio = mysql_result($votado, 0, "voto");
	
if ($dominio=='s')
{
		echo"<script>alert('Voto já computado!');window.location='../principal.php';</script>";
}else{
// VERIFICA SE A VARIÁVEL VOTO NÃO ESTÁ VAZIA
if (!empty($voto))
	{
	// VERIFICA SE A VARIÁVEL VOTO CONTEM O VALOR "R"
	if ($voto == "R")
		{
		// ABRE O ARQUIVO TEXTO REFERENTE AO VOTO "R" PARA LEITURA
		$abrir = fopen($arquivo['1'], "r");
		// LÊ O ARQUIVO REFERENTE AO VOTO "R"
		$ler = fread($abrir, filesize($arquivo['1']));
		// ABRE O ARQUIVO PARA GRAVAÇÃO
		$gravar = fopen($arquivo['1'], "w");
		// ADICIONA O VALOR 1 AO VALOR JÁ CONTIDO NO ARQUIVO E GRAVA
		$grava = fwrite($gravar, $ler+1);
		}
	// VERIFICA SE A VARIÁVEL VOTO CONTEM O VALOR "B" 	
	else if ($voto == "B")
		{
		// ABRE O ARQUIVO TEXTO REFERENTE AO VOTO "B" PARA LEITURA
		$abrir = fopen($arquivo['2'], "r");
		// LÊ O ARQUIVO REFERENTE AO VOTO "B"
		$ler = fread($abrir, filesize($arquivo['2']));
		// ABRE O ARQUIVO PARA GRAVAÇÃO
		$gravar = fopen($arquivo['2'], "w");
		// ADICIONA O VALOR 1 AO VALOR JÁ CONTIDO NO ARQUIVO E GRAVA
		$grava = fwrite($gravar, $ler+1);
		}
	// VERIFICA SE A VARIÁVEL VOTO CONTEM O VALOR "O"	
	else if ($voto == "O")
		{
		// ABRE O ARQUIVO TEXTO REFERENTE AO VOTO "O" PARA LEITURA
		$abrir = fopen($arquivo['3'], "r");
		// LÊ O ARQUIVO REFERENTE AO VOTO "O"
		$ler = fread($abrir, filesize($arquivo['3']));
		// ABRE O ARQUIVO PARA GRAVAÇÃO
		$gravar = fopen($arquivo['3'], "w");
		// ADICIONA O VALOR 1 AO VALOR JÁ CONTIDO NO ARQUIVO E GRAVA
		$grava = fwrite($gravar, $ler+1);
		}
		
		
		else if ($voto == "A")
		{
		// ABRE O ARQUIVO TEXTO REFERENTE AO VOTO "O" PARA LEITURA
		$abrir = fopen($arquivo['4'], "r");
		// LÊ O ARQUIVO REFERENTE AO VOTO "O"
		$ler = fread($abrir, filesize($arquivo['3']));
		// ABRE O ARQUIVO PARA GRAVAÇÃO
		$gravar = fopen($arquivo['4'], "w");
		// ADICIONA O VALOR 1 AO VALOR JÁ CONTIDO NO ARQUIVO E GRAVA
		$grava = fwrite($gravar, $ler+1);
		}
	// IMPRIME A MENSAGEM DE SUCESSO CASO TUDO OCORRA CORRETAMENTE
	
	$votei="UPDATE usuario SET voto='s' WHERE username='$nome_usuario'";
	$cadastro=mysql_query($votei) or die(mysql_error());

 	echo"<script>alert('Voto realizado!');window.location='../principal.php';</script>";	  
	}	
else
	{
	// IMPRIME A MENSAGEM DE ERRO CASO NÃO SEJA SELECIONADA NENHUMA DAS OPÇÕES
	echo "<span class=fonte>Nenhuma opção foi selecionada!</span>";
	}	
}
mysql_close($conn);
?>