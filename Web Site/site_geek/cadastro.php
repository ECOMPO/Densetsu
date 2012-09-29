<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {color: #FF0000}
.style3 {
	color: #FFFFFF;
	font-weight: bold;
}
.style5 {font-size: 12px}
.style6 {color: #666666; font-weight: bold; }
.style7 {color: #000000}
.style9 {color: #FF0000; font-weight: bold; }
-->
</style>
</head>

<body>
<form action="cadastra_usuario.php" method="post" enctype="multipart/form-data" name="formcadastro">
<table width="753" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="138" height="16"></td>
    <td width="64"></td>
    <td width="36"></td>
    <td width="11"></td>
    <td width="61"></td>
    <td width="59"></td>
    <td width="17"></td>
    <td width="28"></td>
    <td width="65"></td>
    <td width="77"></td>
    <td width="44"></td>
    <td width="44"></td>
    <td width="109"></td>
  </tr>
  <tr>
    <td height="48"></td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="6" valign="top"><span class="style1">Cadastro de usuarios </span></td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
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
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="22"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2" valign="top" class="style6"><a href="index.php" class="style7">Home</a></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  
  
  
  <tr>
    <td height="45">&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="9" valign="top"><p><strong>Insira os seus dados para que possamos efetuar o cadastro!<br />
          <span class="style2">Aten&ccedil;&atilde;o:</span> Os campos que contiverem (<span class="style2">*</span>) s&atilde;o obrigarotios !
    </strong></p></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
  <tr>
    <td height="24">&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="9" align="left" valign="middle" class="style9"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="344">&nbsp;</td>
    <td colspan="11" valign="top"><table width="100%" border="2" bordercolor="#FFFFFF" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="149" rowspan="2" align="right" valign="middle" bgcolor="#000000"><span class="style3">Login:</span></td>
            <td width="349" height="24" valign="middle" bgcolor="#CCCCCC"><label for="textfield"></label>
              <input name="login" type="text" id="login" size="40" maxlength="200" />
            <span class="style9">*</span></td>
          </tr>
      <tr>
        <td height="2"></td>
          </tr>
      
      
      
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style3">Senha:</td>
            <td valign="middle" bgcolor="#CCCCCC"><label for="label"></label>
              <input name="senha" type="password" id="label" size="20" maxlength="15" />
              <span class="style9">*</span><span class="style5"> No m&aacute;ximo 15 caracteres!</span></td>
          </tr>
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style3">Repetir senha: </td>
            <td valign="middle" bgcolor="#CCCCCC"><label for="label2"></label>
              <input name="rep_senha" type="password" id="label2" size="20" maxlength="15" />
            <span class="style9">*</span></td>
          </tr>
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style3">Nome:</td>
            <td valign="middle" bgcolor="#CCCCCC"><label for="label3"></label>
              <input name="nome" type="text" id="label3" size="40" maxlength="200" />
            <span class="style9">*</span></td>
          </tr>
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style3">E-mail:</td>
            <td valign="middle" bgcolor="#CCCCCC"><label for="label4"></label>
              <input name="email" type="text" id="label4" size="40" maxlength="200" />
            <span class="style9">*</span></td>
          </tr>
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style3">Sexo:</td>
            <td valign="middle" bgcolor="#CCCCCC"><input name="sexo" type="radio" value="Masculino" id="radiobutton" />
              <label for="radiobutton">Masculino 
              <input name="sexo" type="radio" value="Feminino" id="radio" />
            Feminino<span class="style9">*</span></label></td>
          </tr>
      <tr>
        <td height="26" align="right" valign="middle" bgcolor="#000000" class="style3">Data de nascimento: </td>
            <td valign="middle" bgcolor="#CCCCCC">Dia
              <label for="select"></label>
              <select name="dia" id="dia">
                <option value="">  </option>
				<option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select>
              / M&ecirc;s
              <label for="label5"></label>
              <select name="mes" id="label5">
                <option value="">  </option>
                <option value="01">Janeiro</option>
                <option value="02">Fevereiro</option>
                <option value="03">Mar&ccedil;o</option>
                <option value="04">Abril</option>
                <option value="05">Maio</option>
                <option value="06">Junho</option>
                <option value="07">Julho</option>
                <option value="08">Agosto</option>
                <option value="09">Setembro</option>
                <option value="10">Outubro</option>
                <option value="11">Novembro</option>
                <option value="12">Dezembro</option>
              </select>
              / Ano
              <label for="label6"></label>
              <select name="ano" id="label6">
                <option value="">  </option>
                <option value="1900">1900</option>
                <option value="1901">1901</option>
                <option value="1902">1902</option>
                <option value="1903">1903</option>
                <option value="1904">1904</option>
                <option value="1905">1905</option>
                <option value="1906">1906</option>
                <option value="1907">1907</option>
                <option value="1908">1908</option>
                <option value="1909">1909</option>
                <option value="1910">1910</option>
                <option value="1911">1911</option>
                <option value="1912">1912</option>
                <option value="1913">1913</option>
                <option value="1914">1914</option>
                <option value="1915">1915</option>
                <option value="1916">1916</option>
                <option value="1917">1917</option>
                <option value="1918">1918</option>
                <option value="1919">1919</option>
                <option value="1920">1920</option>
                <option value="1921">1921</option>
                <option value="1922">1922</option>
                <option value="1923">1923</option>
                <option value="1924">1924</option>
                <option value="1925">1925</option>
                <option value="1926">1926</option>
                <option value="1927">1927</option>
                <option value="1928">1928</option>
                <option value="1929">1929</option>
                <option value="1930">1930</option>
                <option value="1931">1931</option>
                <option value="1932">1932</option>
                <option value="1933">1933</option>
                <option value="1934">1934</option>
                <option value="1935">1935</option>
                <option value="1936">1936</option>
                <option value="1937">1937</option>
                <option value="1938">1938</option>
                <option value="1939">1939</option>
                <option value="1940">1940</option>
                <option value="1941">1941</option>
                <option value="1942">1942</option>
                <option value="1943">1943</option>
                <option value="1944">1944</option>
                <option value="1945">1945</option>
                <option value="1946">1946</option>
                <option value="1947">1947</option>
                <option value="1948">1948</option>
                <option value="1949">1949</option>
                <option value="1950">1950</option>
                <option value="1951">1951</option>
                <option value="1952">1952</option>
                <option value="1953">1953</option>
                <option value="1954">1954</option>
                <option value="1955">1955</option>
                <option value="1956">1956</option>
                <option value="1957">1957</option>
                <option value="1958">1958</option>
                <option value="1959">1959</option>
                <option value="1960">1960</option>
                <option value="1961">1961</option>
                <option value="1962">1962</option>
                <option value="1963">1963</option>
                <option value="1964">1964</option>
                <option value="1965">1965</option>
                <option value="1966">1966</option>
                <option value="1967">1967</option>
                <option value="1968">1968</option>
                <option value="1969">1969</option>
                <option value="1970">1970</option>
                <option value="1971">1971</option>
                <option value="1972">1972</option>
                <option value="1973">1973</option>
                <option value="1974">1974</option>
                <option value="1975">1975</option>
                <option value="1976">1976</option>
                <option value="1977">1977</option>
                <option value="1978">1978</option>
                <option value="1979">1979</option>
                <option value="1980">1980</option>
                <option value="1981">1981</option>
                <option value="1982">1982</option>
                <option value="1983">1983</option>
                <option value="1984">1984</option>
                <option value="1985">1985</option>
                <option value="1986">1986</option>
                <option value="1987">1987</option>
                <option value="1988">1988</option>
                <option value="1989">1989</option>
                <option value="1990">1990</option>
                <option value="1991">1991</option>
                <option value="1992">1992</option>
                <option value="1993">1993</option>
                <option value="1994">1994</option>
                <option value="1995">1995</option>
                <option value="1996">1996</option>
                <option value="1997">1997</option>
                <option value="1998">1998</option>
                <option value="1999">1999</option>
                <option value="2000">2000</option>
                <option value="2001">2001</option>
                <option value="2002">2002</option>
                <option value="2003">2003</option>
                <option value="2004">2004</option>
                <option value="2005">2005</option>
                <option value="2006">2006</option>
                <option value="2007">2007</option>
              </select>
            <span class="style9">*</span></td>
          </tr>
      
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style3">Pa&iacute;s:</td>
            <td valign="middle" bgcolor="#CCCCCC"><label for="label7"></label>
              <input name="pais" type="text" id="label7" size="30" maxlength="150" />
            <span class="style9">*</span></td>
          </tr>
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style3">Estado:</td>
            <td valign="middle" bgcolor="#CCCCCC"><label for="label8"></label>
              <input name="estado" type="text" id="label8" size="30" maxlength="150" />
            <span class="style9">*</span></td>
          </tr>
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style3">Cidade:</td>
            <td valign="middle" bgcolor="#CCCCCC"><label for="label9"></label>
              <input name="cidade" type="text" id="label9" size="30" maxlength="150" />
            <span class="style9">*</span></td>
          </tr>
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style3"><p>CEP:</p></td>
            <td valign="middle" bgcolor="#CCCCCC"><label for="label10"></label>
              <input name="cep" type="text" id="label10" size="20" maxlength="50" />
            <span class="style9">*</span></td>
          </tr>
      <tr>
        <td height="24" colspan="2" align="center" valign="middle"><span class="style2">No campo da pergunta secreta n&atilde;o coloque o ponto de interga&ccedil;&atilde;o (?) !</span> </td>
          </tr>
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style3">Pergunta secreta: </td>
            <td valign="middle" bgcolor="#CCCCCC"><label for="label11"></label>
              <input name="pergunta" type="text" id="label11" size="40" maxlength="200" />
            ?<span class="style9">*</span></td>
          </tr>
      <tr>
        <td height="24" align="right" valign="middle" bgcolor="#000000" class="style3">Resposta secreta: </td>
            <td valign="middle" bgcolor="#CCCCCC"><label for="label12"></label>
              <input name="resposta" type="text" id="label12" size="40" maxlength="200" />
            <span class="style9">*</span></td>
          </tr>
      
      
      
      
      
      
      
      
      
    </table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="24">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label for="Submit"></label>
      <input type="submit" name="cadastrar" value="Cadastrar" id="cadastrar" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label for="label13"></label>
      <input type="reset" name="limpar" value="Limpar dados" id="label13" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
  <tr>
    <td height="17"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
</form>
</body>
</html>
