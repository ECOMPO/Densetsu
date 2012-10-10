 <?php

  $produto =  $_REQUEST['descricao'];
  $conexao = mysql_connect('localhost', 'root', '') or die('Erro ao conectar');
  mysql_select_db('densetsu', $conexao) or die('Erro ao selecionar');

  $sql = "       SELECT * FROM produtos
              
                 WHERE produtos.descricao LIKE  '%".$produto."%' ";
  $resultado = mysql_query($sql) or die(mysql_error());
  if(mysql_num_rows($resultado) > 0){
      print '<table border=5>';
      while($linha = mysql_fetch_array($resultado)) {
          print '<tr>';
          print '<td>'; print $linha['nome']; print '</td>';
		  print '<td>'; print $linha['descricao']; print '</td>';
		  print '<td>'; print $linha['valor']; print '</td>';
          print '<td>'; print $linha['quantidade_estoque']; print '</td>';
		  print '<td>'; print $linha['data_entrega']; print '</td>';
          print '</tr>';
      }
      print '</table>';
  } else {
      print $sql;
      //outro comando
  }
?>
