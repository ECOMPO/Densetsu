
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style><center>
<title>Densetsu</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="styles.css" type="text/css" />

<body>
<style type="text/css">
	a {display:block; text-decoration:none}
	dl { width: 100%; }
	dl,dd { margin: 0; }
	dt { background: #CCC; font-size: 18px; padding: 5px; margin: 2px; }
	dt a { color: #000; }
	dd a { color: #000; }
	ul { list-style: none; padding: 5px; }
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

<img src="images/banner03.png" alt=""width="1000" height="143" border="0" usemap="#Map" />
<map name="Map"><area shape="rect" coords="4,4,177,140" href="index.php">
</map>



<center><div id='NavbarMenu'>
<div id='NavbarMenuleft'>
<ul id='nav'>
<li>
<a href='Index.php'> Início</a>
<ul>
</ul>
</li>


<li>
<a href='Acessorios.php'>Acessórios</a>
<ul>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'></a></li>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'></a></li>
</ul>
</li>

<li>
<a href='Cosplays.php'>Cosplays</a>
<ul>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>Ação</a></li>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>Aventura</a></li>
</ul>
</li>

<li>
<a href='Eventos.php'>Eventos</a>
<ul>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>Ação</a></li>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>Aventura</a></li>
</ul>
</li>

<li>
<a href='Animes.php'>Animes</a>
<ul>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>Ação</a></li>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>Aventura</a></li>
</ul>
</li>

<li><a href='Mangas.php'>Mangas</a>
  <ul>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>Ação</a></li>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>Aventura</a></li>
</ul>
</li>


<li><a href='Promocoes.php'>Promoções</a>
<ul>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>Ação</a></li>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>Aventura</a></li>
</ul>
</li>


<li>
<a href='Novidades.php'> Novidades</a>
<ul>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>kkkkkkkkkk</a></li>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>Aventura</a></li>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>Corrida</a></li>
</ul>
</li>

<li>
<a href='Noticias.php'> Notícias</a>
<ul>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>kkkkkkkkkk</a></li>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>Aventura</a></li>
</ul>
</li>

<li>
<a href='Games.php'> Games</a>
<ul>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>kkkkkkkkkk</a></li>
<li><a href='ENDEREÇO DO SEU SUBLINK AQUI'>Aventura</a></li>
</ul>
</li>

</div>
</div>
<div style='clear:both;'/>
</center> 
</body>
</html>
 