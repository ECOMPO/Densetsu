CREATE DATABASE  IF NOT EXISTS `densetsu` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `densetsu`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: densetsu
-- ------------------------------------------------------
-- Server version	5.5.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vendas_produtos`
--

DROP TABLE IF EXISTS `vendas_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas_produtos` (
  `id_vendas` int(11) NOT NULL,
  `id_produtos` int(11) NOT NULL,
  KEY `id_vendas` (`id_vendas`),
  KEY `id_produtos` (`id_produtos`),
  CONSTRAINT `vendas_produtos_ibfk_1` FOREIGN KEY (`id_vendas`) REFERENCES `vendas` (`id_vendas`),
  CONSTRAINT `vendas_produtos_ibfk_2` FOREIGN KEY (`id_produtos`) REFERENCES `produtos` (`id_produtos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_produtos`
--

LOCK TABLES `vendas_produtos` WRITE;
/*!40000 ALTER TABLE `vendas_produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcelas`
--

DROP TABLE IF EXISTS `parcelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcelas` (
  `id_parcelas` int(11) NOT NULL AUTO_INCREMENT,
  `valor_parcelas` decimal(10,0) NOT NULL,
  `data_pagamento` date NOT NULL,
  `data_vencimento` date NOT NULL,
  `juros` decimal(10,0) NOT NULL,
  `status` char(1) NOT NULL,
  `id_pagamentos` int(11) NOT NULL,
  PRIMARY KEY (`id_parcelas`),
  KEY `id_pagamentos` (`id_pagamentos`),
  CONSTRAINT `parcelas_ibfk_1` FOREIGN KEY (`id_pagamentos`) REFERENCES `parcelamentos` (`id_pagamentos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcelas`
--

LOCK TABLES `parcelas` WRITE;
/*!40000 ALTER TABLE `parcelas` DISABLE KEYS */;
/*!40000 ALTER TABLE `parcelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contatos`
--

DROP TABLE IF EXISTS `contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contatos` (
  `id_contatos` int(11) NOT NULL AUTO_INCREMENT,
  `telefone` varchar(14) NOT NULL,
  `tipo` set('residencial','comercial','celular','outros') NOT NULL DEFAULT 'outros',
  PRIMARY KEY (`id_contatos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatos`
--

LOCK TABLES `contatos` WRITE;
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcelamentos`
--

DROP TABLE IF EXISTS `parcelamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcelamentos` (
  `id_pagamentos` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` char(1) NOT NULL,
  `quantidade_parcelas` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pagamentos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcelamentos`
--

LOCK TABLES `parcelamentos` WRITE;
/*!40000 ALTER TABLE `parcelamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `parcelamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` char(14) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `numero_casa` varchar(4) NOT NULL,
  `data_cadastro` date NOT NULL,
  `complemento` varchar(15) DEFAULT NULL,
  `num_compras` decimal(5,0) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `e_mail` varchar(45) DEFAULT NULL,
  `id_contatos` int(11) NOT NULL,
  `id_enderecos` int(11) NOT NULL,
  PRIMARY KEY (`id_clientes`),
  KEY `id_contatos` (`id_contatos`),
  KEY `id_enderecos` (`id_enderecos`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_contatos`) REFERENCES `contatos` (`id_contatos`),
  CONSTRAINT `clientes_ibfk_2` FOREIGN KEY (`id_enderecos`) REFERENCES `enderecos` (`id_enderecos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bairros`
--

DROP TABLE IF EXISTS `bairros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bairros` (
  `id_bairros` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `id_cidades` int(11) NOT NULL,
  PRIMARY KEY (`id_bairros`),
  KEY `id_cidades` (`id_cidades`),
  CONSTRAINT `bairros_ibfk_1` FOREIGN KEY (`id_cidades`) REFERENCES `cidades` (`id_cidades`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairros`
--

LOCK TABLES `bairros` WRITE;
/*!40000 ALTER TABLE `bairros` DISABLE KEYS */;
/*!40000 ALTER TABLE `bairros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `usuario` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `login` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('','123','italo','italu'),('adm','123','italo',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedores` (
  `id_fornecedores` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `numero_casa` varchar(45) DEFAULT NULL,
  `telefone3` varchar(15) DEFAULT NULL,
  `e_mail` varchar(80) NOT NULL,
  `cnpj` varchar(18) NOT NULL,
  PRIMARY KEY (`id_fornecedores`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dados_pessoais`
--

DROP TABLE IF EXISTS `dados_pessoais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dados_pessoais` (
  `id_dados_pessoais` int(11) NOT NULL,
  `data_nascimento` date NOT NULL,
  `uf_natal` char(2) NOT NULL,
  `cidade_natal` varchar(80) NOT NULL,
  `sexo` char(1) NOT NULL,
  `estado_civil` char(1) NOT NULL,
  PRIMARY KEY (`id_dados_pessoais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados_pessoais`
--

LOCK TABLES `dados_pessoais` WRITE;
/*!40000 ALTER TABLE `dados_pessoais` DISABLE KEYS */;
/*!40000 ALTER TABLE `dados_pessoais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enderecos` (
  `id_enderecos` int(11) NOT NULL AUTO_INCREMENT,
  `nome_rua` varchar(80) NOT NULL,
  `cep` char(9) NOT NULL,
  `id_bairros` int(11) NOT NULL,
  PRIMARY KEY (`id_enderecos`),
  KEY `id_bairros` (`id_bairros`),
  CONSTRAINT `enderecos_ibfk_1` FOREIGN KEY (`id_bairros`) REFERENCES `bairros` (`id_bairros`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas` (
  `id_vendas` int(11) NOT NULL AUTO_INCREMENT,
  `valor_venda` decimal(10,0) NOT NULL,
  `data_venda` date NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `id_unidades` int(11) NOT NULL,
  `id_clientes` int(11) NOT NULL,
  `id_pagamentos` int(11) NOT NULL,
  PRIMARY KEY (`id_vendas`),
  KEY `usuario` (`usuario`),
  KEY `id_unidades` (`id_unidades`),
  KEY `id_clientes` (`id_clientes`),
  KEY `id_pagamentos` (`id_pagamentos`),
  CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`usuario`),
  CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`id_unidades`) REFERENCES `unidades` (`id_unidades`),
  CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`),
  CONSTRAINT `vendas_ibfk_4` FOREIGN KEY (`id_pagamentos`) REFERENCES `parcelamentos` (`id_pagamentos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidades` (
  `id_cidades` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `id_uf` int(11) NOT NULL,
  PRIMARY KEY (`id_cidades`),
  KEY `id_uf` (`id_uf`),
  CONSTRAINT `cidades_ibfk_1` FOREIGN KEY (`id_uf`) REFERENCES `uf` (`id_uf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades`
--

DROP TABLE IF EXISTS `unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidades` (
  `id_unidades` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `data_cadastramento` date NOT NULL,
  `nome_gerente` varchar(80) NOT NULL,
  `telefone3` char(14) DEFAULT NULL,
  `e_mail` varchar(80) NOT NULL,
  `cnpj` char(18) NOT NULL,
  `numero_vendas` decimal(10,0) DEFAULT NULL,
  `numero_casa` varchar(5) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `id_contatos` int(11) NOT NULL,
  `id_enderecos` int(11) NOT NULL,
  PRIMARY KEY (`id_unidades`),
  KEY `id_contatos` (`id_contatos`),
  KEY `id_enderecos` (`id_enderecos`),
  CONSTRAINT `unidades_ibfk_1` FOREIGN KEY (`id_contatos`) REFERENCES `contatos` (`id_contatos`),
  CONSTRAINT `unidades_ibfk_2` FOREIGN KEY (`id_enderecos`) REFERENCES `enderecos` (`id_enderecos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades`
--

LOCK TABLES `unidades` WRITE;
/*!40000 ALTER TABLE `unidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `unidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionarios` (
  `id_funcionarios` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `CPF` char(14) NOT NULL,
  `num_casa` varchar(4) DEFAULT NULL,
  `complemento` varchar(15) DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `cargo` char(11) NOT NULL,
  `status` char(1) NOT NULL,
  `salario` decimal(10,0) NOT NULL,
  `numero_dependentes` decimal(10,0) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `e_mail` varchar(45) DEFAULT NULL,
  `id_enderecos` int(11) NOT NULL,
  `id_dados_pessoais` int(11) NOT NULL,
  `id_contatos` int(11) NOT NULL,
  PRIMARY KEY (`id_funcionarios`),
  KEY `id_enderecos` (`id_enderecos`),
  KEY `id_dados_pessoais` (`id_dados_pessoais`),
  KEY `id_contatos` (`id_contatos`),
  CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`id_enderecos`) REFERENCES `enderecos` (`id_enderecos`),
  CONSTRAINT `funcionarios_ibfk_2` FOREIGN KEY (`id_dados_pessoais`) REFERENCES `dados_pessoais` (`id_dados_pessoais`),
  CONSTRAINT `funcionarios_ibfk_3` FOREIGN KEY (`id_contatos`) REFERENCES `contatos` (`id_contatos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dados_usuarios`
--

DROP TABLE IF EXISTS `dados_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dados_usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Login` varchar(50) NOT NULL,
  `Senha` char(15) NOT NULL,
  `Nome` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Sexo` varchar(15) NOT NULL,
  `DataNasc` varchar(15) NOT NULL,
  `Pais` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Cidade` varchar(50) NOT NULL,
  `Cep` varchar(20) NOT NULL,
  `Pergunta` varchar(200) NOT NULL,
  `Resposta` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados_usuarios`
--

LOCK TABLES `dados_usuarios` WRITE;
/*!40000 ALTER TABLE `dados_usuarios` DISABLE KEYS */;
INSERT INTO `dados_usuarios` VALUES (2,'bruno','bruno','Bruno','','','','','','','','Qual seu nome','Bruno'),(4,'natasha','210192','Natasha','','','','','','','','Nome','Natasha'),(5,'italocassio','123','italo','italo@teste.com','Masculino','01/02/1901','brasil','sp','sao jose','12490000','sds','sss'),(6,'23423','23423','234234','23423','Masculino','01/02/1903','234','234','324','12345678974','234','324'),(7,'sasu','sasu','sau','sau@sau.csd','Masculino','02/02/1901','sds','sd','sd','12490000','ds','sds'),(8,'admin','admin','asd','asd','Masculino','02/03/1901','asd','asd','sad','a158asd','sad','asda');
/*!40000 ALTER TABLE `dados_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id_produtos` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `valor` decimal(10,0) NOT NULL,
  `quantidade_estoque` decimal(10,0) NOT NULL,
  `data_entrega` date NOT NULL,
  PRIMARY KEY (`id_produtos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uf`
--

DROP TABLE IF EXISTS `uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uf` (
  `id_uf` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `sigla` char(2) NOT NULL,
  PRIMARY KEY (`id_uf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uf`
--

LOCK TABLES `uf` WRITE;
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anuncios`
--

DROP TABLE IF EXISTS `anuncios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anuncios` (
  `id_anuncios` int(11) NOT NULL,
  `titulo` varchar(80) DEFAULT NULL,
  `id_produtos` int(11) NOT NULL,
  `descricao_oferta` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_anuncios`),
  KEY `id_produtos` (`id_produtos`),
  CONSTRAINT `anuncios_ibfk_1` FOREIGN KEY (`id_produtos`) REFERENCES `produtos` (`id_produtos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anuncios`
--

LOCK TABLES `anuncios` WRITE;
/*!40000 ALTER TABLE `anuncios` DISABLE KEYS */;
/*!40000 ALTER TABLE `anuncios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_fornecedores`
--

DROP TABLE IF EXISTS `produtos_fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos_fornecedores` (
  `id_produtos` int(11) NOT NULL,
  `id_fornecedores` int(11) NOT NULL,
  KEY `id_produtos` (`id_produtos`),
  KEY `id_fornecedores` (`id_fornecedores`),
  CONSTRAINT `produtos_fornecedores_ibfk_1` FOREIGN KEY (`id_produtos`) REFERENCES `produtos` (`id_produtos`),
  CONSTRAINT `produtos_fornecedores_ibfk_2` FOREIGN KEY (`id_fornecedores`) REFERENCES `fornecedores` (`id_fornecedores`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_fornecedores`
--

LOCK TABLES `produtos_fornecedores` WRITE;
/*!40000 ALTER TABLE `produtos_fornecedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos_fornecedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2004-01-01  1:20:02
