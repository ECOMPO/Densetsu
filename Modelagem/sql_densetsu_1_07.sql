SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';


-- -----------------------------------------------------
-- Table `densetsu`.`contatos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`contatos` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`contatos` (
  `id_contatos` INT NOT NULL AUTO_INCREMENT ,
  `telefone` VARCHAR(14) NOT NULL ,
  `tipo` SET('residencial', 'comercial', 'celular', 'outros') NOT NULL DEFAULT outros ,
  PRIMARY KEY (`id_contatos`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`uf`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`uf` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`uf` (
  `id_uf` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(80) NOT NULL ,
  `sigla` CHAR(2) NOT NULL ,
  PRIMARY KEY (`id_uf`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`cidades`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`cidades` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`cidades` (
  `id_cidades` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(80) NOT NULL ,
  `uf_id_uf` INT NOT NULL ,
  PRIMARY KEY (`id_cidades`) ,
  INDEX `fk_cidades_uf1` (`uf_id_uf` ASC) ,
  CONSTRAINT `fk_cidades_uf1`
    FOREIGN KEY (`uf_id_uf` )
    REFERENCES `densetsu`.`uf` (`id_uf` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`bairros`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`bairros` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`bairros` (
  `id_bairros` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(80) NOT NULL ,
  `cidades_id_cidades` INT NOT NULL ,
  PRIMARY KEY (`id_bairros`) ,
  INDEX `fk_bairros_cidades1` (`cidades_id_cidades` ASC) ,
  CONSTRAINT `fk_bairros_cidades1`
    FOREIGN KEY (`cidades_id_cidades` )
    REFERENCES `densetsu`.`cidades` (`id_cidades` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`enderecos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`enderecos` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`enderecos` (
  `id_enderecos` INT NOT NULL AUTO_INCREMENT ,
  `nome_rua` VARCHAR(80) NOT NULL ,
  `cep` CHAR(9) NOT NULL ,
  `bairros_id_bairros` INT NOT NULL ,
  PRIMARY KEY (`id_enderecos`) ,
  INDEX `fk_enderecos_bairros1` (`bairros_id_bairros` ASC) ,
  CONSTRAINT `fk_enderecos_bairros1`
    FOREIGN KEY (`bairros_id_bairros` )
    REFERENCES `densetsu`.`bairros` (`id_bairros` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`clientes` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`clientes` (
  `id_clientes` INT NOT NULL AUTO_INCREMENT ,
  `cpf` CHAR(14) NOT NULL ,
  `nome` VARCHAR(80) NOT NULL ,
  `numero_casa` VARCHAR(4) NOT NULL ,
  `data_cadastro` DATE NOT NULL ,
  `complemento` VARCHAR(15) NULL ,
  `num_compras` DECIMAL(5,0) NOT NULL ,
  `rg` VARCHAR(15) NOT NULL ,
  `e_mail` VARCHAR(45) NULL ,
  `contatos_id_contatos` INT NOT NULL ,
  `enderecos_id_enderecos` INT NOT NULL ,
  PRIMARY KEY (`id_clientes`) ,
  INDEX `fk_clientes_contatos1` (`contatos_id_contatos` ASC) ,
  INDEX `fk_clientes_enderecos1` (`enderecos_id_enderecos` ASC) ,
  CONSTRAINT `fk_clientes_contatos1`
    FOREIGN KEY (`contatos_id_contatos` )
    REFERENCES `densetsu`.`contatos` (`id_contatos` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clientes_enderecos1`
    FOREIGN KEY (`enderecos_id_enderecos` )
    REFERENCES `densetsu`.`enderecos` (`id_enderecos` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`dados_pessoais`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`dados_pessoais` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`dados_pessoais` (
  `id_dados_pessoais` INT NOT NULL ,
  `data_nascimento` DATE NOT NULL ,
  `uf_natal` CHAR(2) NOT NULL ,
  `cidade_natal` VARCHAR(80) NOT NULL ,
  `sexo` CHAR(1) NOT NULL ,
  `estado_civil` CHAR(1) NOT NULL ,
  PRIMARY KEY (`id_dados_pessoais`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`funcionarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`funcionarios` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`funcionarios` (
  `id_funcionarios` INT NOT NULL AUTO_INCREMENT ,
  `usuario` VARCHAR(20) NOT NULL ,
  `nome` VARCHAR(45) NOT NULL ,
  `CPF` CHAR(14) NOT NULL ,
  `num_casa` VARCHAR(4) NULL ,
  `complemento` VARCHAR(15) NULL ,
  `data_admissao` DATE NULL ,
  `cargo` CHAR(11) NOT NULL ,
  `status` CHAR NOT NULL ,
  `salario` DECIMAL(10,0) NOT NULL ,
  `numero_dependentes` DECIMAL(10,0) NOT NULL ,
  `rg` VARCHAR(15) NOT NULL ,
  `e_mail` VARCHAR(45) NULL ,
  `enderecos_id_enderecos` INT NOT NULL ,
  `dados_pessoais_id_dados_pessoais` INT NOT NULL ,
  `contatos_id_contatos` INT NOT NULL ,
  PRIMARY KEY (`id_funcionarios`) ,
  INDEX `fk_funcionarios_enderecos1` (`enderecos_id_enderecos` ASC) ,
  INDEX `fk_funcionarios_dados_pessoais1` (`dados_pessoais_id_dados_pessoais` ASC) ,
  INDEX `fk_funcionarios_contatos1` (`contatos_id_contatos` ASC) ,
  CONSTRAINT `fk_funcionarios_enderecos1`
    FOREIGN KEY (`enderecos_id_enderecos` )
    REFERENCES `densetsu`.`enderecos` (`id_enderecos` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionarios_dados_pessoais1`
    FOREIGN KEY (`dados_pessoais_id_dados_pessoais` )
    REFERENCES `densetsu`.`dados_pessoais` (`id_dados_pessoais` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionarios_contatos1`
    FOREIGN KEY (`contatos_id_contatos` )
    REFERENCES `densetsu`.`contatos` (`id_contatos` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`produtos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`produtos` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`produtos` (
  `id_produtos` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  `descricao` VARCHAR(45) NULL ,
  `valor` DECIMAL(10,0) NOT NULL ,
  `quantidade_estoque` DECIMAL(10,0) NOT NULL ,
  `data_entrega` DATE NOT NULL ,
  PRIMARY KEY (`id_produtos`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`usuarios` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`usuarios` (
  `usuario` VARCHAR(45) NOT NULL ,
  `senha` VARCHAR(45) NOT NULL ,
  `nome` VARCHAR(45) NOT NULL ,
  `cargo` CHAR(11) NOT NULL ,
  `status` CHAR(1) NOT NULL ,
  `primeiro_acesso` CHAR(1) NULL ,
  `quantidade_acesso` DECIMAL(10,0) NULL ,
  `data_ultimo_acesso` DATE NULL ,
  `hora_ultimo_acesso` TIME NULL ,
  `tipo` CHAR(1) NULL ,
  PRIMARY KEY (`usuario`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`unidades`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`unidades` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`unidades` (
  `id_unidades` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(80) NOT NULL ,
  `data_cadastramento` DATE NOT NULL ,
  `nome_gerente` VARCHAR(80) NOT NULL ,
  `telefone3` CHAR(14) NULL ,
  `e_mail` VARCHAR(80) NOT NULL ,
  `cnpj` CHAR(18) NOT NULL ,
  `numero_vendas` DECIMAL(10,0) NULL ,
  `numero_casa` VARCHAR(5) NULL ,
  `complemento` VARCHAR(45) NULL ,
  `contatos_id_contatos` INT NOT NULL ,
  `enderecos_id_enderecos` INT NOT NULL ,
  PRIMARY KEY (`id_unidades`) ,
  INDEX `fk_unidades_contatos1` (`contatos_id_contatos` ASC) ,
  INDEX `fk_unidades_enderecos1` (`enderecos_id_enderecos` ASC) ,
  CONSTRAINT `fk_unidades_contatos1`
    FOREIGN KEY (`contatos_id_contatos` )
    REFERENCES `densetsu`.`contatos` (`id_contatos` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_unidades_enderecos1`
    FOREIGN KEY (`enderecos_id_enderecos` )
    REFERENCES `densetsu`.`enderecos` (`id_enderecos` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`parcelamentos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`parcelamentos` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`parcelamentos` (
  `id_pagamentos` INT NOT NULL AUTO_INCREMENT ,
  `tipo` CHAR NOT NULL ,
  `quantidade_parcelas` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id_pagamentos`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`vendas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`vendas` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`vendas` (
  `id_vendas` INT NOT NULL AUTO_INCREMENT ,
  `valor_venda` DECIMAL(10,0) NOT NULL ,
  `data_venda` DATE NOT NULL ,
  `usuarios_usuario` VARCHAR(45) NOT NULL ,
  `unidades_id_unidades` INT NOT NULL ,
  `clientes_id_clientes` INT NOT NULL ,
  `parcelamentos_id_pagamentos` INT NOT NULL ,
  PRIMARY KEY (`id_vendas`) ,
  INDEX `fk_vendas_usuarios1` (`usuarios_usuario` ASC) ,
  INDEX `fk_vendas_unidades1` (`unidades_id_unidades` ASC) ,
  INDEX `fk_vendas_clientes1` (`clientes_id_clientes` ASC) ,
  INDEX `fk_vendas_parcelamentos1` (`parcelamentos_id_pagamentos` ASC) ,
  CONSTRAINT `fk_vendas_usuarios1`
    FOREIGN KEY (`usuarios_usuario` )
    REFERENCES `densetsu`.`usuarios` (`usuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vendas_unidades1`
    FOREIGN KEY (`unidades_id_unidades` )
    REFERENCES `densetsu`.`unidades` (`id_unidades` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vendas_clientes1`
    FOREIGN KEY (`clientes_id_clientes` )
    REFERENCES `densetsu`.`clientes` (`id_clientes` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vendas_parcelamentos1`
    FOREIGN KEY (`parcelamentos_id_pagamentos` )
    REFERENCES `densetsu`.`parcelamentos` (`id_pagamentos` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`fornecedores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`fornecedores` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`fornecedores` (
  `id_fornecedores` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(80) NOT NULL ,
  `numero_casa` VARCHAR(45) NULL ,
  `telefone3` VARCHAR(15) NULL ,
  `e_mail` VARCHAR(80) NOT NULL ,
  `cnpj` VARCHAR(18) NOT NULL ,
  PRIMARY KEY (`id_fornecedores`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`parcelas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`parcelas` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`parcelas` (
  `id_parcelas` INT NOT NULL AUTO_INCREMENT ,
  `valor_parcelas` DECIMAL(10,0) NOT NULL ,
  `data_pagamento` DATE NOT NULL ,
  `data_vencimento` DATE NOT NULL ,
  `juros` DECIMAL(10,0) NOT NULL ,
  `Status` CHAR NOT NULL ,
  `parcelamentos_id_pagamentos` INT NOT NULL ,
  PRIMARY KEY (`id_parcelas`) ,
  INDEX `fk_parcelas_parcelamentos1` (`parcelamentos_id_pagamentos` ASC) ,
  CONSTRAINT `fk_parcelas_parcelamentos1`
    FOREIGN KEY (`parcelamentos_id_pagamentos` )
    REFERENCES `densetsu`.`parcelamentos` (`id_pagamentos` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`vendas_has_produtos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`vendas_has_produtos` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`vendas_has_produtos` (
  `vendas_id_vendas` INT NOT NULL ,
  `produtos_id_produtos` INT NOT NULL ,
  PRIMARY KEY (`vendas_id_vendas`, `produtos_id_produtos`) ,
  INDEX `fk_vendas_has_produtos_produtos1` (`produtos_id_produtos` ASC) ,
  INDEX `fk_vendas_has_produtos_vendas1` (`vendas_id_vendas` ASC) ,
  CONSTRAINT `fk_vendas_has_produtos_vendas1`
    FOREIGN KEY (`vendas_id_vendas` )
    REFERENCES `densetsu`.`vendas` (`id_vendas` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vendas_has_produtos_produtos1`
    FOREIGN KEY (`produtos_id_produtos` )
    REFERENCES `densetsu`.`produtos` (`id_produtos` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `densetsu`.`produtos_has_fornecedores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `densetsu`.`produtos_has_fornecedores` ;

CREATE  TABLE IF NOT EXISTS `densetsu`.`produtos_has_fornecedores` (
  `produtos_id_produtos` INT NOT NULL ,
  `fornecedores_id_fornecedores` INT NOT NULL ,
  PRIMARY KEY (`produtos_id_produtos`, `fornecedores_id_fornecedores`) ,
  INDEX `fk_produtos_has_fornecedores_fornecedores1` (`fornecedores_id_fornecedores` ASC) ,
  INDEX `fk_produtos_has_fornecedores_produtos1` (`produtos_id_produtos` ASC) ,
  CONSTRAINT `fk_produtos_has_fornecedores_produtos1`
    FOREIGN KEY (`produtos_id_produtos` )
    REFERENCES `densetsu`.`produtos` (`id_produtos` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produtos_has_fornecedores_fornecedores1`
    FOREIGN KEY (`fornecedores_id_fornecedores` )
    REFERENCES `densetsu`.`fornecedores` (`id_fornecedores` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
