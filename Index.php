
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
	font-size: 18px;
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


<body ></div></div>
<table width="1000">
  <tr>
    <td width="182"><img src="images/bt_login.jpg" alt="" width="160" height="35" /></td>
    <td width="623" align="right" valign="top" background="images/promocoes.jpg">
      <div align="center" class="style7"></div></td>
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
            <input type="submit" name="logar" value="Entrar" id="Entrar" />
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
          <td valign="middle"><a href="cadastro.php" class="style3"><br>
</a></td>
          <td>&nbsp;</td>
          <td colspan="2" valign="middle"><a href="Senha/lembrar_senha.php" class="style3"></a> </td>
        </tr>
      
      </table>
    </form>    </td>
    <td>
      <div align="left">
        <?
// PROPAGANDA DO TOP DO SITE
$i= (int)rand (1,4);

print "<img src= 'images/prop{$i}.jpg' />";
?>
      </div></td>
    <td>
	  <div align="left"><span class="style2">Vot</span><span class="style6">e no m</span><span class="style2">elhor anime! </span>
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
    <td width="185" valign="top"><div align="left"><img src="images/bt_categoria.jpg" alt="" width="160" height="35" align="top" /> <br>
    </div>
      <p class="style6">>Animes </a> <br />
>Camisetas </a> <br />
>Mangas </a> <br />
>Seriados </p>
    <p></a></p></td>
    <td width="623"><div align="center"><img src="images/and2012s.jpg" width="405" height="120"></div>
      <div align="center"><br>
    </div></td>
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
            <td background="images/geek_news.jpg">&nbsp;</td>
          </tr>
        </table>
      </div>
      <div align="left"><br>
      </div>
      <table width="100%" border="0">
        <tr>
          <td width="36%" valign="top"><div align="left"><img src="images/news01.jpg" width="203" height="123"></div></td>
          <td width="64%" valign="top"><div align="left">
            <div class="style9"> Samsung trollando a Apple em novo comercial</div>
            <div>
              <div>
                <p class="style3">Apesar de a batalha judicial entre a Apple e a Samsung ter terminado, a guerra entre as duas est&aacute; longe de terminar. A Samsung lan&ccedil;ou esta semana um comercial zoando com ...</p>
              </div>
            </div>
          </div></td>
        </tr>
      </table>
      <br>
      <table width="100%" border="0">
        <tr>
          <td width="36%" height="148" valign="top"><div align="left"><img src="images/news02.jpg" width="199" height="119"></div></td>
          <td width="64%" valign="top"><div align="left">
              <div>                <span class="style9">Novo Trailer de  Final Fantasy XIV: 
                A Realm Reborn </span>
                <p class="style3">Para  muitos, Final Fantasy j&aacute; deveria ter acabado, mas n&atilde;o para a Square Enix que  liberou na TGS - Tokyo Game Show, o trailer de de FFXIV: A Real Reborn. Ap&oacute;s ...</p>
                <h2 class="style3">&nbsp;</h2>
              </div>
            </div></td>
        </tr>
      </table>
      <br>
      <table width="100%" border="0">
        <tr>
          <td width="36%" valign="top"><div align="left"><img src="images/news03.jpg" width="198" height="118"></div></td>
          <td width="64%" valign="top"><div align="left">
              <div>
                <h2 class="style9">AMV Geek do dia:  Multi Anime Gangnam Style</h2>
                <p class="style3">Depois  de uma pausa bem longa em nossas&nbsp;postagens&nbsp;de AMV's aqui, aproveitamos o embalo  do hit do momento no melhor estilo otaku. Confira esse AMV do canal skisback100  com ...</p>
                <h2 class="style9">&nbsp;</h2>
              </div>
            <div><div></div>
            </div>
          </div></td>
        </tr>
      </table></td>
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
 