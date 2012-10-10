<?php
session_start();
// verifica se a variavel existir
if(isset($_SESSION['login_usuario']) and isset($_SESSION['senha_usuario'])) {
	// se existie as sessões coloca os valores em uma varivel
	$login_usuario = $_SESSION['login_usuario'];
	$senha_usuario = $_SESSION['senha_usuario'];
} else {
	$erro = urlencode("Você não esta logado!");
	header("Location:index.php");
	exit;
}


//include "validar_session.php";

include "Config/config_sistema.php";

// faz consulta no banco
$consulta = mysql_query("select * from dados_usuarios where Login = '$login_usuario'");
?>

<script type="text/javascript">
function ChangeButton(img,div)
{
	var parentIMG = document.getElementById(img);
	var sourceantigo = parentIMG.src;
	var splited = sourceantigo.split("/");
	var total = parseInt(splited.length);
	sourceantigo = splited[total-1];
	if (sourceantigo == "sinal_menos.jpg")
	{
		newsource = "sinal_mais.jpg"
	}
	else
	{
		newsource = "sinal_menos.jpg"
	}
	var newinput = document.createElement('img');
	newinput.src = 'images/' + newsource;
	newinput.width = '27';
	newinput.height = '27';
	newinput.id = img;
	parentIMG.parentNode.replaceChild(newinput,parentIMG);
	document.getElementById(img).onclick = function()
	{
		ChangeButton(img,div);
		expandcontentnew(div);
	};
}
</script>
<script type="text/javascript">
var enablepersist="off" //Enable saving state of content structure? (on/off)

if (document.getElementById)
{
	document.write('<style type="text/css">')
	document.write('.switchcontent{display:none;}')
	document.write('</style>')
}

function getElementbyClassnew(classname)
{
	ccollectnew=new Array()
	var incnew=0
	var alltagsnew=document.all? document.all : document.getElementsByTagName("*")
	for (i=0; i<alltagsnew.length; i++)
	{
		if (alltagsnew[i].className==classname)
		ccollectnew[incnew++]=alltagsnew[i]
	}
	expandcontentnew('quemsomosdiv');	
	expandcontentnew('oquefazemosdiv');
}
function contractcontentnew(omit)
{
	var incnew=0
	while (ccollectnew[incnew])
	{
		if (ccollectnew[incnew].id==omit)
		ccollectnew[incnew].style.display="none"
		incnew++
	}
}
function expandcontentnew(cid)
{
	if (typeof ccollectnew!="undefined")
	{
		document.getElementById(cid).style.display=(document.getElementById(cid).style.display!="block")? "block" : "none"
		selectedItem=cid+"|"+document.getElementById(cid).style.display
	}
}

function do_onloadnew()
{
	getElementbyClassnew("switchcontentnew")
}

if (window.addEventListener)
	window.addEventListener("load", do_onloadnew, true)
else if (window.attachEvent)
	window.attachEvent("onload", do_onloadnew)
else if (document.getElementById)
	window.onload=do_onloadnew
</script>

<center>
<title>Densetsu</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="styles.css" type="text/css" />

<style type="text/css">

	a {display:block; text-decoration:none}
	dl { width: 100%; }
	dl,dd { margin: 0; }
	dt { background: #CCC; font-size: 18px; padding: 5px; margin: 2px; }
	dt a { color: #000; }
	dd a { color: #000; }
	ul { list-style: none; padding: 5px; }
.style2 {
	color: #000000;
	font-family: Calibri;
	font-size: 16px;
}
.style3 {font-family: Calibri}
.style5 {font-family: Calibri; color: #666666; }
.style6 {font-size: 18px; font-family: Calibri;}
.style7 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 24px;
	color: #000000;
}
.style9 {
	font-family: Calibri;
	font-weight: bold;
	font-size: 18px;
}
.style10 {color: #FFFFFF}
.style16 {font-size: 16px}
.style18 {font-family: Calibri; font-size: 14px; }
.style21 {color: #FFFFFF; font-size: 24px; }
.style22 {font-size: 16px; font-family: Calibri; }
</style>
<script type="text/javascript" src="default.js" charset="utf-8"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//Definimos que todos as tags dd terão display:none menos o primeiro filho
		$('dd:not(:first)').hide();
		//Ao clicar no link, executamos a funcao
		$('dt a').click(function(){
			//As tags dd's visíveis agora ficam com display:none
			$("dd:visible").slideUp("slow");
			//Apos, a funcao é transferida para seu pai, que procura o proximo irmao no codigo o tonando visível
			$(this).parent().next().slideDown("slow");
			return false;
		});
	});
</script>





<?php
include "inc_topo.php";

?>
</head></center> 


<body background=""></div></div>
<table width="1000">
  <tr>
    <td width="182"><img src="images/bt_login.jpg" alt="" width="160" height="35" /></td>
    <td width="623" valign="top" background="images/back_titulos.jpg">
    <div align="center" class="style7"><span class="style10">Games em Destaques </span></div></td>
    <td width="179"><div align="right"><img src="images/bt_enquete.jpg" alt="" width="160" height="35" align="top" /></div></td>
  </tr>
  <tr>
    <td>
    <td>    
  <td>  </tr>
  <tr>
    <td height="200" valign="top"><form action="logar.php" method="post" enctype="multipart/form-data" name="formlogin">
      <table width="182" height="197" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
          <td height="82">&nbsp;</td>
          <td colspan="6" valign="top"><div align="left"><span class="style3">Usu&aacute;rio: </span>
            <input name="login" type="text" id="login" maxlength="200" />
                <span class="style3">Senha:                </span>
                <input name="senha" type="password" id="label" maxlength="15" />
          </div></td>
          
        </tr>
        <tr>
          <td height="35">&nbsp;</td>
          <td><a href="cadastro.php" class="style3">
            <input type="submit" name="Entrar" value="Entrar" id="logar" />
          </a></td>
    
         
        </tr>
        <tr>
          <td height="25">&nbsp;</td>
          <td colspan="5" valign="top"><a href="cadastro.php" class="style5">Cadastre-se</a></td>
        </tr>
        <tr>
          <td height="24"></td>
          <td><a href="Senha/lembrar_senha.php" class="style5">Esqueceu a senha?</a></td>
          <td>&nbsp;</td>
          <td valign="top"><label for="Submit"></label></td>
        </tr>
        <tr>
          <td height="23"></td>
          <td valign="middle"><a href="cadastro.php" class="style3"><?php
while($linha = mysql_fetch_object($consulta)) {
	echo "<b>Olá ".$linha->Login."!</b>";
}
?></a></td>
          <td>&nbsp;</td>
          <td colspan="2" valign="middle"><a href="Senha/lembrar_senha.php" class="style3"></a> </td>
        </tr>
      
      </table>
    </form>    </td>
    <td valign="top"><div align="left">
      <table width="100%" border="0">
        <tr>
          <td width="34%" valign="top"><div align="center"></div></td>
          </tr>
      </table>
    </div></td>
    <td valign="top">
	  <div align="right"><span class="style2">Vot</span><span class="style22">e no m</span><span class="style2">elhor anime!&nbsp;&nbsp; </span>
	    <table width="100%" border="0">
	      <tr>
	        <td><div align="right">
	          <form>
	            <left>
	              <div align="left">
	                <input type=radio name="time" value="Naruto" checked>
	                <span class="style3">Naruto<br>
	                  <input type=radio name="time" value="Bleach" >
	                  Bleach <br>
	                  <input type=radio name="time" value="Pok&eacute;mom" >
	                  Pok&eacute;mom <br>
	                  <input type=radio name="time" value="Dragon Ball" >
	                  Dragon Ball <br>
	                  <input type=radio name="time" value="Hunter x Hunter" >
	                  Hunter x Hunter</span><br>
	                <input name="submit" type=submit value=Votar>
	                <br>
	                <br>
	                </div>
                  </left>
	            </form>
            </div></td>
          </tr>
        </table>
    </div></td>
  </tr>
</table>
<table width="1000" border="0">
  <tr>
    <td width="185" height="187" valign="top"><div align="left"><img src="images/bt_categoria.jpg" alt="" width="160" height="35" align="top" /> <br>
    </div>
      <p class="style6">>Animes </a> <br />
>Camisetas </a> <br />
>Mang&aacute;s </a> <br />
>Seriados </p>
    <p></a></p></td>
    <td width="623" valign="top">    <div align="left"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%" valign="top"><div align="left"><img src="images/sinal_mais.jpg" width="27" height="27" id="oquefazemosimg" onclick="ChangeButton('oquefazemosimg','oquefazemosdiv');expandcontentnew('oquefazemosdiv');" /></div></td>
                  <td width="95%" class="Fonte02"><div align="left" class="Fonte02"><strong> O QUE FAZEMOS </strong></div></td>
              </tr>
            </table>
            <div class="switchcontent" id="oquefazemosdiv">
            <br />
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td valign="top"><div align="left" class="Fonte09">                  Orientamos  candidatos em seus estudos preparat&oacute;rios atrav&eacute;s dos resultados obtidos no  simulado ComparaA&ccedil;&atilde;o. <br />
                  <br />
                </div></td>
              </tr>
    </table></div></td>
    <td width="178" valign="top"><div align="right"><img src="images/bt-carrinho.jpg" width="160" height="35" align="top"><br>
      <br>
      <img src="images/carrrinho.jpg" width="140" height="93"><br>
      <br>
      <br>
      <br>
    </div></td>
  </tr>
</table>
<table width="1000">
  <tr>
    <td width="184" height="680" valign="top">
	
	
	
	</a><img src="images/dn.jpg" width="158" height="642" alt="" /></td>
    <td width="625" valign="top"><center><top></top>
    </center>
      <div align="left">
        <table width="100%" height="40" border="0">
          <tr>
            <td background="images/back_titulos.jpg"><div align="center" class="style21">Nossos Games </div></td>
          </tr>
        </table>
      </div>
      <div align="left"><br>
      </div>
      <table width="100%" border="0">
        <tr>
          <td><img src="images/games01.jpg" width="639" height="682"></td>
        </tr>
      </table>
      <br>      
      <br></td>
    <td width="175" valign="top"><p align="right"><img src="images/nah.jpg" width="158" height="640" alt="" /></p>
      <p>&nbsp;</p></td>
  </tr>
</table>
<table width="1000" height="113" border="0">
  <tr>
    <td valign="top" background="images/rodape.jpg"><div align="left"><img src="images/formas_pag.png" width="805" height="66">
      <table width="100%" border="0">
        <tr>
          <td><div align="center" class="style3"> Copyright &copy; 2012 Geek Sistemas </div></td>
        </tr>
      </table>
    </div></td>
  </tr>
</table>
<table width="995">
  <tr>
    
  </tr>
</table>

</body></center>
</html>
 