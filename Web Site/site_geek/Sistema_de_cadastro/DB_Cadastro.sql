-- phpMyAdmin SQL Dump
-- version 2.8.2.4
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tempo de Geração: Jun 22, 2007 as 11:26 PM
-- Versão do Servidor: 5.0.24
-- Versão do PHP: 5.1.6
-- 
-- Banco de Dados: `cadastro`
-- 
CREATE DATABASE `cadastro` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cadastro`;

-- --------------------------------------------------------

-- 
-- Estrutura da tabela `dados_usuarios`
-- 

CREATE TABLE `dados_usuarios` (
  `ID` int(11) NOT NULL auto_increment,
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
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Extraindo dados da tabela `dados_usuarios`
-- 

INSERT INTO `dados_usuarios` (`ID`, `Login`, `Senha`, `Nome`, `Email`, `Sexo`, `DataNasc`, `Pais`, `Estado`, `Cidade`, `Cep`, `Pergunta`, `Resposta`) VALUES (1, 'diego', '123456', 'Diego', '', '', '', '', '', '', '', 'Qual seu nome', 'Diego'),
(2, 'bruno', 'bruno', 'Bruno', '', '', '', '', '', '', '', 'Qual seu nome', 'Bruno'),
(4, 'natasha', '210192', 'Natasha', '', '', '', '', '', '', '', 'Nome', 'Natasha');
