<?php
// inclui o arquivo de validar sessão
include "../validar_session.php";
// inclui o arquivo de configuração do sistema
include "../Config/config_sistema.php";

// faz consulta no banco de dados
$consulta = mysql_query("select * from dados_usuarios");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {
	color: #000000;
	font-weight: bold;
}
.style3 {
	color: #FFFFFF;
	font-weight: bold;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a {
	font-family: Times New Roman, Times, serif;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
-->
</style>
</head>

<body>
<form action="deletar_usuario.php" method="post" enctype="multipart/form-data">
<table width="732" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="71" height="29">&nbsp;</td>
    <td width="158">&nbsp;</td>
    <td width="28">&nbsp;</td>
    <td width="247">&nbsp;</td>
    <td width="39">&nbsp;</td>
    <td width="85">&nbsp;</td>
    <td width="56">&nbsp;</td>
    <td width="48">&nbsp;</td>
  </tr>
  <tr>
    <td height="46">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td valign="top"><span class="style1">Lista de usuarios</span> </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="24">&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="3" valign="middle" class="style2">Lista de usuarios | <a href="total_usuarios.php" class="style2">Total de cadastros</a> | <span class="style2"><a href="../logout.php" class="style2">Logout</a> </span></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="24"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td valign="top"><label for="Submit"></label>
      <input type="submit" name="deletar" value="deletar" id="deletar" /></td>
    <td></td>
  </tr>
  <tr>
    <td height="2"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  
  <tr>
    <td height="52">&nbsp;</td>
    <td colspan="6" valign="top"><table width="100%" border="2" bordercolor="#FFFFFF" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="258" height="24" align="center" valign="middle" bgcolor="#000000"><span class="style3">Login:</span></td>
          <td width="278" align="center" valign="middle" bgcolor="#000000" class="style3">E-mail</td>
          <td width="67" align="center" valign="middle" bgcolor="#000000" class="style3">Excluir</td>
        </tr>
  <?php
while($linhas = mysql_fetch_object($consulta)) {
?>
      <tr>
        <td height="24" align="center" valign="middle" bgcolor="#CCCCCC"><?php echo $linhas->Login;?>&nbsp;</td>
          <td align="center" valign="middle" bgcolor="#CCCCCC"><?php echo $linhas->Email;?>&nbsp;</td>
          <td align="center" valign="middle" bgcolor="#CCCCCC" class="style2"><a href="deletar_usuario.php?codigo=<?php echo $linhas->ID;?>" class="style2">X</a></td>
        </tr>
      
  <?php
}
?>
      
      
      
      
    </table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="136">&nbsp;</td>
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
