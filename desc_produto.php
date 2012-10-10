<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css"> 
<!-- 
body  {
	
	font: 100% Verdana, Arial, Helvetica, sans-serif;
	background:url(fundo3.jpg) repeat top center #FFF;;
	margin: 8; /* it's good practice to zero the margin and padding of the body element to account for differing browser defaults */
	padding: 1000;
	text-align: center; /* this centers the container in IE 5* browsers. The text is then set to the left aligned default in the #container selector */
	color: #000000;

}
.thrColAbs #container { 
border-radius: 100px;
	position: relative; /* adding position: relative allows you to position the two sidebars relative to this container */
	width: 1000px;  /* using 20px less than a full 800px width allows for browser chrome and avoids a horizontal scroll bar */
	background: #FFFFFF;
	margin: 0 auto; /* the auto margins (in conjunction with a width) center the page */
	border: 0px solid #000000;
	
	text-align: left; /* this overrides the text-align: center on the body element. */
} 

/* 
*/
.thrColAbs #sidebar1 {
	border-radius: 40px;
	position: absolute;
	top: 192px;
	left: 0px;
	width: 171px; /* the actual width of this div, in standards-compliant browsers, or standards mode in Internet Explorer will include the padding and border in addition to the width */
	background: #EBEBEB; /* the background color will be displayed for the length of the content in the column, but no further */
	padding: 15px 10px 15px 20px; /* padding keeps the content of the div away from the edges */
	height: 590px;
	background-color: #EFEFEF;
}

.thrColAbs #sidebar3 {
	border-radius: 40px;
	position: absolute;
	top: 828px;
	left: 0px;
	width: 203px; /* the actual width of this div, in standards-compliant browsers, or standards mode in Internet Explorer will include the padding and border in addition to the width */
	background: #EBEBEB; /* the background color will be displayed for the length of the content in the column, but no further */
	padding: ; /* padding keeps the content of the div away from the edges */
	height: 305px;
	background-color: red;
}
.thrColAbs #sidebar2 {
	border-radius: 40px;
	position: absolute;
	top: 188px;
	right: -1px;
	width: 170px; /* the actual width of this div, in standards-compliant browsers, or standards mode in Internet Explorer will include the padding and border in addition to the width */
	background: #EBEBEB; /* the background color will be displayed for the length of the content in the column, but no further */
	padding: 15px 10px 15px 20px; /* padding keeps the content of the div away from the edges */
	height: 597px;
	background-color: #EFEFEF;
}

.thrColAbs #sidebar4 {
	border-radius: 40px;
	position: absolute;
	top: 833px;
	right: 0px;
	width: 168px; /* the actual width of this div, in standards-compliant browsers, or standards mode in Internet Explorer will include the padding and border in addition to the width */
	background: #EBEBEB; /* the background color will be displayed for the length of the content in the column, but no further */
	padding: 15px 10px 15px 20px; /* padding keeps the content of the div away from the edges */
	height: 320px;
	background-color: #EFEFEF;
}
.thrColAbs #mainContent { 
border-radius: 40px;
	margin: 3 300px; /* the right and left margins on this div element creates the two outer columns on the sides of the page. No matter how much content the sidebar divs contain, the column space will remain. */
	padding: 2 30px; /* remember that padding is the space inside the div box and margin is the space outside the div box */
}
.fltrt { /* this class can be used to float an element right in your page. The floated element must precede the element it should be next to on the page. */
	float: right;
	border-radius: 40px;
	margin-left: 8px;
}
.fltlft { /* this class can be used to float an element left in your page */
	float: left;
	border-radius: 40px;
	margin-right: 8px;
}
--> 
</style><!--[if IE 5]>
<style type="text/css"> 
/* place css box model fixes for IE 5* in this conditional comment */
.thrColAbs #sidebar1 { width: 180px; }
.thrColAbs #sidebar2 { width: 190px; }
</style>
<![endif]-->
<script src="Website ron music/SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="Website ron music/SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
<style type="text/css">
<!--
.style1 {
	font-family: "Courier New", Courier, monospace;
	color: #FFF;
}
.style4 {font-size: 36%}
.style6 {font-size: 40%}
-->
</style>
</head>

<body class="thrColAbs">


<div id="container">
  <center>
    <img src="s.png" width="200" height="168" /><img src="topo1.png" width="799" height="108" />
  </center>
  
  <div id="mainContent">
    <h1><center>
      <table cellpadding="8" cellspacing="10" border="0" width="70%">
<tr>

<?php 
include "conexao.php";

$instru=$_GET['instru'];

$res= mysql_query("select * from instrumento where cod_instrumento like ($instru)");
$list=mysql_fetch_assoc($res);
$valor=$list['valor'];
if(!strpos($valor,",")&&(strpos($valor,".")))
$valor=substr_replace($valor, ',', strpos($valor, "."), 1);
echo'<br><img src="'.$list['caminho_foto'].'" width="200" height="180" "/><br><font size="2">'.$list['nome'].'</font><br><font size="2"><br>R$ '.number_format($list['valor'],2,",",".").'&nbsp&nbsp&nbsp&nbsp&nbsp <a href="processa.php?add='.$list['cod_instrumento'].'"><img src="add_carrinho.png" width"44" alt="adicionar ao carrrinho" border="0"></a>
 <form name="'.$list['cod_instrumento'].'" method="post" action="desc_instrumento.php?instru='.$list['cod_instrumento'].'"></form><br></font><table width="50%" height="101" border="0">
  <tr>
    <td height="295"><br><br><br><font size="2" align="left">'.$list['descricao'].' </font></td>
  </tr>
</table>';



?>
</tr>
</table>

       <span class="style4"></span>
<p>&nbsp; </p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </center> 
    </h1>
    <h4><center>Todos os direitos reservados &copy; 2009 - 2011</h4>
    <center> <h5>&nbsp;</h5>
    <h5><font color="white"></h5>
    
    <!-- end #mainContent -->
  </div>
  <div id="sidebar1">
    <p>&nbsp;</p>
    <ul id="MenuBar2" class="MenuBarHorizontal">
    <a  href="mapa.php">Mapa do Site</a> <br />
      <a  href="Principal.php">Principal</a> <a  href="#"></a> <a  href="Lancamentos.php">Lan&ccedil;amentos</a> <a  href="#"></a> <a  href="Ofertas.php">Ofertas</a> <a  href="#"></a>
      <li class="MenuBarItemHover"><a href= "#" target="_parent" class="MenuBarItemSubmenu">Acess&oacute;rios</a>
          <ul>
            <li><a href="Acessorios cordas.php">Cordas</a></li>
            <li><a href="acessorios teclas.php">Teclas</a></li>
            <li><a href="acessorios sopro.php">Sopro</a></li>
            <li><a href="acessorios percussao.php">Percuss&atilde;o</a></li>
          </ul>
      </li>
      <li class="MenuBarItemHover"><a href= "#" target="_parent" class="MenuBarItemSubmenu">Cordas</a>
          <ul>
            <li><a href="guitarra.php">Guitarra</a></li>
            <li><a href="Baixo.php">Baixo</a></li>
            <li><a class="MenuBarItemSubmenu" href="#">Viol&atilde;o</a>
                <ul>
                  <li><a href="Violao Aco.php">A&ccedil;o</a></li>
                  <li><a href="Violao nylon.php">Nylon</a></li>
                </ul>
            </li>
          </ul>
      </li>
      <li><a class="MenuBarItemSubmenu" href="#">Teclas</a>
          <ul>
            <li><a href="Teclado.php">Teclado</a></li>
            <li><a href="Orgão.php">Org&atilde;o</a></li>
            <li><a class="MenuBarItemSubmenu" href="#">Piano</a>
                <ul>
                  <li><a href="Piano acustico.php">Ac&uacute;stico</a></li>
                  <li><a href="piano eletrico.php">El&eacute;trico</a></li>
                </ul>
            </li>
          </ul>
      </li>
      <li><a class="MenuBarItemSubmenu" href="#">Sopro</a>
          <ul>
            <li><a href="Saxofone.php">Saxofone</a></li>
            <li><a href="Trombone.php">Trombone</a></li>
            <li><a href="Trompete.php">Trompete</a></li>
            <li><a class="MenuBarItemSubmenu" href="#">Flauta</a>
                <ul>
                  <li><a href="Flauta Transversal.php">Tranversal</a></li>
                  <li><a href="Flauta doce.php">Doce</a></li>
                </ul>
            </li>
          </ul>
      </li>
      <li><a class="MenuBarItemSubmenu" href="#">Percuss&atilde;o</a>
          <ul>
            <li><a class="MenuBarItemSubmenu" href="#">Bateria</a>
                <ul>
                  <li><a href="Bateria Acustico.php">Ac&uacute;stico</a></li>
                  <li><a href="bateria eletrica.php">El&eacute;trico</a></li>
                </ul>
            </li>
            <li><a href="Cajon.php">Cajon</a></li>
            <li><a href="Pandeiro.php">Pandeiro</a></li>
          </ul>
      </li>
	  <li><a class="MenuBarItemSubmenu" href="#">Amplificadores</a>
          <ul>
             <li><a href="ampguitarra.php">Guitarra</a></li>
               
                  <li><a href="ampteclado.php">Teclado</a></li>
                  <li><a href="ampviolao.php">Viol&atilde;o</a></li>
				  <li><a href="ampbaixo.php">Baixo</a></li>
	    </ul>
      </li>
	  <li><a class="MenuBarItemSubmenu" href="#">Cases e bags</a>
          <ul>
           <li><a href="Cb cordas.php">Cordas</a></li>
                  <li><a href="CB teclas.php">Teclas</a></li>
                  <li><a href="CB sopro.php">Sopro</a></li>
             
            <li><a href="CB percussao.php">Percuss&atilde;o</a></li>
            
          </ul>
      </li>
    </ul>
	
    <p><img src="musica03.gif" alt="a" />
      <!-- end #sidebar1 -->    </p>
</div>
  <div id="sidebar3">
   <h4><font color="#000000">&nbsp;<span class="style1">&nbsp;Destaque da semana</span></h4>
 <?php
include "conexao.php";
?>
 <?php  

	$cod= file_get_contents("destaque.txt");
   $res1= mysql_query("select * from instrumento where cod_instrumento=$cod");
$registro1=mysql_num_rows($res1);
$i1=1;
while($list1=mysql_fetch_array($res1)){
	$quan1t=$list1['quant_estoque'];
	if($quant>=1){
if($i1>$looph1){
echo'<br>
<td align="center" valign="top" bgcolor="white"><a href="desc_instrumento.php?instru='.$list1['cod_instrumento'].'">
<img src="'.$list1['caminho_foto'].'" width="205" height="180" "/></a><br><br><font size="2"> <font color="gray"</font>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </font>
</td>
';}}}
   ?>
    <p>&nbsp;</p>
  </div>
  <div id="sidebar2">
    <form method="post" action="login.php">
      <p>Username:</p>
      <p>
        <input name="username"  type="text" />
      </p>
      <p>Senha:</p>
      <p>
        <input name="senha"  type="password" />
      </p>
      <p>
        <input name="submit" type="submit" value="Enviar"/>
        &nbsp;&nbsp; &nbsp;
        <input name="button" type="button" value="Limpar"/>
      </p>
    </form>
    <p><a href="logout.php">logout</a></p>
    <ul id="MenuBar" class="MenuBarHorizontal">
	  <a  href="Servico.php">Servi&ccedil;os</a>
    </ul>
	<ul id="MenuBar3" class="MenuBarHorizontal">
	  <a  href="faleconosco.php">Fale conosco</a>
    </ul>
	<ul id="MenuBar4" class="MenuBarHorizontal">
	  <a  href="Unidades.php">Unidades</a>
    </ul>
	<ul id="MenuBar4" class="MenuBarHorizontal">
	 <a  href="cadastro.php"><b>Cadastre-se</b></a>
    </ul>
	
	<p>&nbsp;&nbsp;<a href="portal.php"><img src="ss.png" width="118" height="122" /></a>Procurar no site:    </p>
  <p><form name="frmBusca" method="post" action="pesquisa.php" >
    <p>
      <input type="text" name="palavra" />
      </p>
    <p>
      <input type="submit" value="Procurar" />
    </p>
  </form><!-- end #sidebar2 --></div>
  <div id="sidebar4">
    <form action="enquete/grava.php" method="post" name="form1" id="form1">
      <table height="250"  border="0" cellpadding="0" cellspacing="1">
        <tr>
          <td colspan="2" class="style1"><center>
              <font color="#000000">Enquete:</td>
        </tr>
        <tr>
          <td colspan="2" class="style1"><center>
              <font color="#000000"> <br />
            <?php   include ("enquete/pergunta.txt"); ?>
              <br />          </td>
        </tr>
        <tr class="style1">
          <td width="84">&nbsp;</td>
        </tr>
        <tr class="style1">
          <td height="23"><div align="right">
              <input name="voto" type="radio" value="R" />
          </div></td>
          <td width="324"><font color="#000000">
              <?php include ("enquete/op1.txt"); ?></td>
        </tr>
        <tr class="style1">
          <td height="23"><div align="right">
              <input name="voto" type="radio" value="B" />
          </div></td>
          <td width="324"><font color="#000000">
              <?php include("enquete/op2.txt"); ?></td>
        </tr>
        <tr class="style1">
          <td height="23"><div align="right">
              <input name="voto" type="radio" value="O" />
          </div></td>
          <td><font color="#000000">
              <?php include("enquete/op3.txt"); ?></td>
        </tr>
        <tr> </tr>
        <tr class="style1">
          <td height="23"><div align="right">
              <input name="voto" type="radio" value="A" />
          </div></td>
          <td><font color="#000000">
              <?php include("enquete/op4.txt"); ?></td>
        </tr>
        <tr class="style1">
          <td width="40" height="5">&nbsp;</td>
        </tr>
        <tr>
          <td height="27" colspan="2"><div align="center">
              <input type="submit" name="Submit2" value="Votar" />
          </div></td>
        </tr>
        <tr class="style1">
          <td width="40" height="5">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="2" align="center" class="style1"><a href="enquete/resultado.php">Resultado</a></td>
        </tr>
        <tr>
          <td colspan="2" align="center" class="style1">&nbsp;</td>
        </tr>
      </table>
    </form>
    <p>&nbsp;</p>
  </div>
  <!-- end #container -->
</div>
<script type="text/javascript">
<!--
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
var MenuBar2 = new Spry.Widget.MenuBar("MenuBar2", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
swfobject.registerObject("FlashID");
//-->
</script>
</body>
</html>
