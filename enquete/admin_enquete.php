<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><?php
include "../valida_cookiesadmin.php";
?>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Administrar enquete</title>
<style type="text/css">
<!--
.style1 {
	font-size: 10px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	color: #666666;
	font-weight: bold;
}
.style2 {font-size: 10px; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000; font-weight: bold; }
body {
	background-color: #006600;
}
.style5 {font-size: 16px; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000; font-weight: bold; }
-->
</style>
</head>

<body class="style1">
 


<p class="style2">&nbsp;</p>
<table width="350" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <th width="10" scope="row">&nbsp;</th>
    <td><p><span class="style5">Editar enquete: </span></p>
    
      <form id="form" name="form" method="post" action="grava_admin.php">
      <p>Pergunta da enquete:<br />
          <input name="pergunta" type="text" id="pergunta" value="<?php include("pergunta.txt"); ?>" size="50" />
      </p>
      <p>Op&ccedil;&atilde;o 1:
        <input name="op1" type="text" id="op1" value="<?php include("op1.txt"); ?>" />
      </p>
      <p>Op&ccedil;&atilde;o 2:
        <input name="op2" type="text" id="op2" value="<?php include("op2.txt"); ?>" />
      </p>
      <p>Op&ccedil;&atilde;o 3:
        <input name="op3" type="text" id="op3" value="<?php include("op3.txt"); ?>" />
      </p>
      <p>Op&ccedil;&atilde;o 4:
        <input name="op4" type="text" id="op4" value="<?php include("op4.txt"); ?>" />
      </p>
      <p>
        <input name="form" type="submit" id="form" value="Ok" />
      </p>
    </form>
</table>


</body>
</html>
