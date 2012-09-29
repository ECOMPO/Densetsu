<?php
include "../validar_session.php";

include "../Config/config_sistema.php";

// faz consulta no banco
$consulta = mysql_query("select * from dados_usuarios where Login = '$login_usuario'");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style3 {	color: #000000;
	font-weight: bold;
}
.style2 {color: #FF0000}
.style4 {
	color: #FFFFFF;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<form action="alterar_senha.php" method="post" enctype="multipart/form-data" name="form_mudar_senha">
<table width="579" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="151" height="16"></td>
    <td width="46"></td>
    <td width="28"></td>
    <td width="50"></td>
    <td width="196"></td>
    <td width="35"></td>
    <td width="29"></td>
    <td width="44"></td>
  </tr>
  <tr>
    <td height="41"></td>
    <td></td>
    <td></td>
    <td></td>
    <td valign="top"><span class="style1">Alterar senha</span> </td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="32"></td>
    <td></td>
    <td></td>
    <td></td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  
  <tr>
    <td height="24" valign="top">
<?php
while($linha = mysql_fetch_object($consulta)) {
	echo "<b>Olá ".$linha->Login."!</b>";
}
?>

&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="3" valign="middle"><span class="style3"><a href="dados_usuario.php" class="style3">Dados do usu&aacute;rio</a> | Mudar senha | <a href="../logout.php" class="style3">Logout</a></span></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="39">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top" class="style3"><span class="style2">Aten&ccedil;&atilde;o:</span> Digite a nova senha que voc&ecirc; dezeja usar em nosso site! </td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="78">&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="5" valign="top"><table width="100%" border="2" bordercolor="#FFFFFF" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="115" height="24" align="right" valign="middle" bgcolor="#000000"><span class="style4">Senha:</span></td>
          <td colspan="3" valign="middle" bgcolor="#CCCCCC"><label for="textfield"></label>
            <input name="senha" type="password" id="senha" size="20" maxlength="15" /></td>
        </tr>
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style4">Repetir senha: </td>
          <td colspan="3" valign="middle" bgcolor="#CCCCCC"><label for="label"></label>
            <input name="rep_senha" type="password" id="label" value="" size="20" /></td>
        </tr>
      <tr>
        <td height="24">&nbsp;</td>
          <td width="10">&nbsp;</td>
          <td width="55" valign="top"><label for="Submit"></label>
            <input type="submit" name="alterar" value="Alterar" id="alterar" /></td>
          <td width="158">&nbsp;</td>
        </tr>
      
      
      
      
      
    </table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="102">&nbsp;</td>
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
