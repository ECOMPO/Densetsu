<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	color: #000000;
	font-weight: bold;
}
.style2 {font-size: 36px}
.style3 {
	color: #FFFFFF;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<form action="../logar.php" method="post" enctype="multipart/form-data" name="form_mostra_senha">
<table width="706" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="201" height="22">&nbsp;</td>
    <td width="80">&nbsp;</td>
    <td width="53">&nbsp;</td>
    <td width="63">&nbsp;</td>
    <td width="93">&nbsp;</td>
    <td width="34">&nbsp;</td>
    <td width="55">&nbsp;</td>
    <td width="127">&nbsp;</td>
  </tr>
  <tr>
    <td height="42"></td>
    <td></td>
    <td colspan="3" valign="top"><span class="style2">Mostrar senha</span> </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="15"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  
  <tr>
    <td height="24"></td>
    <td></td>
    <td></td>
    <td align="center" valign="middle"><span class="style1"><a href="../index.php" class="style1">Home</a></span></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="24">&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="4" valign="top">

    <?php
// inclui o arquivo de configura��o do sistema
include "../Config/config_sistema.php";

// recebe dados do formulario
$login = htmlspecialchars($_POST['login']);
$resposta = htmlspecialchars($_POST['resposta']);

// faz consulta no banco de dados
$consulta = mysql_query("select * from dados_usuarios where Login = '$login'");

// imprime dados do usuario
while($linha = mysql_fetch_object($consulta)) {
	// verifica se a resposta � verdadeira
	if($resposta == $linha->Resposta) {
?>

	&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="144">&nbsp;</td>
    <td colspan="6" valign="top"><table width="100%" border="2" bordercolor="#FFFFFF" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="130" height="24" align="right" valign="middle" bgcolor="#000000"><span class="style3">Login:</span></td>
            <td colspan="3" valign="middle" bgcolor="#CCCCCC"><label for="textfield"></label>
            <input name="login" type="text" id="login" value="<?php echo $linha->Login;?>" size="40" maxlength="200" /></td>
          </tr>
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style3">Senha:</td>
            <td colspan="3" valign="middle" bgcolor="#CCCCCC"><label for="label"></label>
            <input name="senha" type="text" id="label" value="<?php echo $linha->Senha;?>" size="20" /></td>
          </tr>
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style3">Nome:</td>
            <td colspan="3" valign="middle" bgcolor="#CCCCCC"><label for="label2"></label>
            <input name="nome" type="text" id="label2" value="<?php echo $linha->Nome;?>" size="40" maxlength="200" /></td>
          </tr>
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style3">E-mail:</td>
            <td colspan="3" valign="middle" bgcolor="#CCCCCC"><label for="label3"></label>
            <input name="email" type="text" id="label3" value="<?php echo $linha->Email;?>" size="40" maxlength="200" /></td>
          </tr>
      <tr>
        <td height="26">&nbsp;</td>
            <td width="66">&nbsp;</td>
            <td width="48" valign="top"><label for="Submit"></label>
            <input type="submit" name="logar" value="Logar" id="logar" /></td>
            <td width="127">&nbsp;</td>
          </tr>
      
      
      
      
      
    </table>
<?php
	} else {
		echo "<font color=red><b>
			  Sua resposta esta errada!
		  	</font></b>";
		exit;
	}
}
?>	</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="100">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>
</body>
</html>
