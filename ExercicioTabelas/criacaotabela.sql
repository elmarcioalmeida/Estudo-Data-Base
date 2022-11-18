/* EXERCÍCIO: 

O cliente Tera Comércio de Produtos S.A, solicitou a modelagem de um banco de dados para cadastro dos seus clientes. A função da Unidados é a análise dos requisitos junto aos usuários para a correta construção do produto. O cliente deseja que  inicialmente os scripts sejam construídos para o Banco de Dados  MySQL, porém, posteriormente pode haver mudança no ambiente e consequentemente adaptação dos scripts para outros produtos de SGBD. O cliente não quer nenhuma informação relativa à vendas ou  estoque, desejando somente as informações primárias de Clientes.*/

/*MODELAGEM BÁSICA 
- ENTIDADE = TABELA
- CAMPOS = ATRIBUTOS*/

CLIENTE /*(é a entidade)*/

NOME - CARACTER(300) /*(os dados são as entidades)*/
CPF - NUMERICO(11)
EMAIL - CARACTER(30)
TELEFONE - CARACTER(30)
ENDEREÇO - CARACTER(100)
SEXO - CARACTER(1)

/*PROCESSO DE MODELAGEM 

- Fase 01 e F 02 - feito pelo AD
MODELAGEM CONCEITUAL - rascunho, que pode ser feito em qualquer lugar
MODELAGEM LÓGICA - utiliza-se de programa (BRMODELO/STARMODEL)
- Fase 03 - feito pelo DBA 

MODELAGEM FÍSICA - SCRIPT DO BANCO

INICIAR MODELAGEM FÍSICA:
		/*a) CRIA O BANCO DE DADOS NO MYSQL:  CREATE DATABASE +(nomebancodedados);*/
			CREATE DATABASE PROJETO; 
  

		/* b) CONECTAR-SE AO BANCO DE DADOS:  USE +(nomebancodedados);*/
			USE PROJETO;
 
		/* c) CRIAR A TABELA: CREAT TABLE +(nometabela); - após nome tabela abre parêntese e inclui os dados com suas características)*/
		CREATE TABLE CLIENTE (
		NOME VARCHAR(100),
		SEXO CHAR(1),
		EMAIL VARCHAR(30),
		CPF INT(11),
		TELEFONE VARCHAR(30),
		ENDERECO VARCHAR(100)
		);

		/* VERIFICAR TABELAS:SHOW TABLES;*/
		SHOW TABLES;

/* INCLUIR REGISTROS ou TUPLAS*/
	/* SINTAXE BÁSICA POARA INSERÇÃO:
	- INSERT INTO +(nome tabela);*/
	/* 3 formas de inserir:
	1a forma - OMITINDO AS COLUNAS:*/
	
	
	INSERT INTO CLIENTE VALUES ('JOAO','M','JOAO@GMAIL.COM',988638273,'22993930000','AVENIDA CABO FRIO 254 1O ANDAR/RJ');
	INSERT INTO CLIENTE VALUES ('MARIA','F','MARIA@GMAIL.COM',54152156,'20991111111','AVENIDA ARRAIAL FRIO 254 1O ANDAR/RJ');
	INSERT INTO CLIENTE VALUES ('AMIM','M','AMIM@GMAIL.COM',885755896,'22991111111','AVENIDA BSB 254 1O ANDAR/RJ');

			/*a função de inserir é: INSERT INTO nometabela) VALUES (dados a serem 
			inseridos); SE O DADO ESTIVER ENTRE ASPAS SMPLES, trata-se de string, se for número
			não entrará entre aspas. Se for número pode-se fazer operação matemática.
			- Por se omitir as colunas na função, deve-se incluir na exata ordem. */

	/*2a forma - DESCREVENDO AS COLUNAS:*/
		
	INSERT INTO CLIENTE (NOME, SEXO, ENDERECO, TELEFONE, CPF) VALUES('LORA','F','CASA DELA/ BSB','61993930000',887774856);
	INSERT INTO CLIENTE (NOME, SEXO, ENDERECO, TELEFONE, CPF) VALUES('SOUZA','M','CASA AMARELA/ BSB','6198443000',887774776);
		

	 /*3a forma - INSERT COMPACTO: SOMENTE MYSQL*/
INSERT INTO CLIENTE VALUES ('CARLOS','M','CARLOSO@GMAIL.COM',188638273,'11993930000','AVENIDA SÃO PAULO 13/SP'),('SILVA','M','SILVA@GMAIL.COM',188638233,'12987930000','RUA  SÃO PAULO 11/SP');
		



/* 	COMANDO SELECT: (filtra a nível de coluna)
o	Projeção
	Exemplo1: SELECT NOME, SEXO, EMAIL FROM CLIENTE;
 
	Exemplo2: SELECT EMAIL, SEXO, NOME FROM CLIENTE; - aqui pode mudar ordem, escolher outros dados, etc

 
o	Criação de dados:
	Exemplo: SELECT NOW();
 
	Exemplo2: SELECT NOW() as DATA_HORA; 
 
	Exemplo3 - SELECT NOW() as DATA_HORA, NOME AS PROFESSOR FROM CLIENTE; 

 	COMANDO WHERE: (filtra a nível de linha)
o	Seleção de Registros
o	Função de FILTRO: 
	FILTRANDO:
•	Exemplo: 	SELECT NOME FROM CLIENTE WHERE SEXO =  ‘F’;
 
•	Exemplo: 	SELECT NOME, ENDERECO FROM CLIENTE 
WHERE SEXO =  ‘M’;
 

o	Filtrando com o LIKE: filtro que utiliza parte dos dados existentes (exemplo> todos os endereço que contenham RJ)
•	Exemplo: 	SELECT NOME, ENDERECO FROM CLIENTE 
WHERE ENDERECO LIKE ‘%RJ’;

 
•	SELECT NOME, ENDERECO FROM CLIENTE 
WHERE ENDERECO LIKE ‘%254%’;
 

CRIAR A TABELA: CREAT TABLE LIVRO; - após nome tabela abre parêntese e inclui os dados com suas características) */
		CREATE TABLE LIVRO (
		AUTOR VARCHAR(30),
		SEXO CHAR(1),
		TITULO VARCHAR(100),
 		PAGINAS INT(4),
		EDITORA VARCHAR(30),
		UF CHAR(2),
		VALOR_LIVRO FLOAT(6,2),
		ANO INT(4)
		);


/* inserir dados na tabela */
INSERT INTO LIVROS VALUES ('Ana Claudia', 'F', 'Cavaleiro ReaL', 465, 'Atlas', 'RJ', 49.90, 2009);
INSERT INTO LIVROS VALUES ('João Nunes', 'M', 'SQL para leigos', 450, 'Addison', 'SP', 98.00, 2018);
INSERT INTO LIVROS VALUES ('Celia Tavares', 'F', 'Receitas Caseiras', 210, 'Atlas', 'RJ', 45.00, 2008);
INSERT INTO LIVROS VALUES ('Eduardo Santos', 'M', 'Pessoas Efetivas', 390, 'Beta', 'RJ', 78.99, 2018);
INSERT INTO LIVROS VALUES ('Eduardo Santos', 'M', 'Habitos Saudáveis', 630, 'Beta', 'RJ', 150.98, 2019);
INSERT INTO LIVROS VALUES ('Hermes Macedo', 'M', 'A Casa Marrom', 250, 'Bubba', MG, 60.00, 2016);
INSERT INTO LIVROS VALUES ('Geraldo Francisco', 'M', 'Estacio Querido', 310, 'Insignia', 'ES', 100, 2015);
INSERT INTO LIVROS VALUES ('Leda Silva', 'F', 'Pra sempre amigas', 510, 'Insignia', 'ES', 78.98, 2011); 
INSERT INTO LIVROS VALUES ('Marco Alcantara', 'M', 'Copas Inesqueciveis', 200, 'Larson', 'RS', 130.98, 2018);
INSERT INTO LIVRO VALUES ('Clara Mafra', 'F', 'O poder da mente', 120, 'Continental', 'SP', 56.58, 2017);


/*
COMANDOS MYSQL
CRIA O BANCO DE DADOS:  CREATE DATABASE +(nomebancodedados);
CONECTAR-SE AO BANCO DE DADOS:  USE +(nomebancodedados);
CRIAR A TABELA: CREAT TABLE +(nometabela);
VERIFICAR TABELAS: SHOW TABLES; - somente no MYSQL
VERIFICANDO ESTRUTURA DA TABELA: DESC +(nometabela);
INSERIR DADOS NA TABELA: - INSERT INTO +(nome tabela) VALUE ( ,  ); ou
			INSERT INTO (nometabela) VALUES (dados a serem inseridos); ou
INSERT INTO (nometabela) (dadostabela NOME, SEXO, ENDERECO) VALUES(dUSE adosinseridos 'LORA','F','CASA DELA/ BSB');
COMANDO SELECT: SELECT (nome da coluna) FROM (nome da tabela); -  filtra a nível de coluna
COMANDO WHERE: SELECT (nome da coluna) FROM (nome da tabela)
WHERE (nome da coluna) = ‘(condição proposta’; -  filtra a nível de linha.


/** ESTAMOS COM  DUAS DATABASES:
PROJETO -onde tem a tabela CLIENTE
LIVRARIA -onde tem a tabela LIVROS **/

/** FUNÇÃO DE AGREGAÇÃO:

CONTANDO REGISTROS DE UMA TABELA:**/

SELECT COUNT (*) AS "Quantidade de Registros de Uma Tabela" 
FROM CLIENTE; 
/** ESSA FUNÇÃO VAI REALIZAR A CONTAGEM E LANÇAR COM O TÍTULO DIGITADO ENTRE ASPAS NA TABELA CLIENTE.

/* OPERADOR GROUP BY 
AGRUPA POR GRUPO SELECIONADO */
SELECT SEXO COUNT(*)
FROM CLIENTE;  /*AQUI NÃO VAI HAVER AGRUPAMENTO POR SEXO, DEVE-SE INCLUIR O GROUP BY*/


SELECT SEXO, COUNT(*)
FROM CLIENTE
GROUP BY SEXO;

/* FILTRO NULL */
SELECT NOME, SEXO, ENDEREÇO
FROM CLIENTE
WHERE EMAIL IS NULL; /*UTILIZA-SE "IS" NULL ou "IS NOT" NULL


/*  UPDATE */
ATUALIZAÇÃO DE VALORES DE UMA TABELAS
UPDATE CLIENTE
SET EMAIL = 'LORACASTRO@GMAIL.COM'
WHERE NOME = 'LORA';

/*DELETE*/
DELETE FROM CLIENTE
WHERE NOME = 'ANA';


/* AUMENTAR NÚMERO DE TELEFONES DE CLIENTE
ENQUANTO O UPDATE MUDA A INFORMAÇÃO */


/* MODELAGEM */

/* PRIMEIRA FORMA NORMAL DE MODELAGEM:

REGRAS:
1 - TODO CAPO VETORIZADO SE TORNARÁ UMA TABELA (onde houver mais de uma informação da mesma família. Exemplo 2 telefones);
2 - TODO CAMPO MULTIVALORADO SE TORNARÁ OUTRA TABELA QUANDO O CAPO FOR DIVÍSÍVEL (exemplo: endereço que conta de Rua, Bairro, Quadra, Cidade);
3 - TODA TABELA NECESSITA DE PELO MENOS UM CAMPO QUE IDENTIFIQUE TODO O REGISTRO COMO SENDO ÚNICO - isso é o que chamamos de CHAVE PRIMÁRIA ou PRIMARY KEY.






8888888888888888888888888888888888888888888888888888888888888888888888

CRIAR NOVA BASE DE DADOS A PARTIR DA MODELAGEM (BRMODELO) */

CREATE DATABASE COMERCIO;

USE COMERCIO;

SHOW DATABASES;

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,  
	SEXO ENUM('M','F') NOT NULL,
	EMAIL VARCHAR(50) UNIQUE, 
	CPF VARCHAR(11) UNIQUE
);
CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL	
);
CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('RES','COM','CEL') NOT NULL,
	NUMERO VARCHAR(10) NOT NULL
);


/* CHAVES ESTRANGEIRAS OU FK FOREING KEY
É A CHAVE PRIMARIA DE UMA TABELA QUE VAI ATÉ A OUTRA TABELA PARA FAZER REFERÊNCIA ENTRE REGISTROS. 


REGRAS:
 EM RELACIONAMENTO 1 X 1 A CHAVE ESTRANGEIRA FICA NA TABELA MAIS FRACA (TABELA MAIS FRACA DEPENDE DO TIPO DE NEGÓCIO. TEM NEGÓVCIO QUE DÁ MAIS ÊNFASE AO ENDEREÇO, OUTRA AO TIPO DE TRABALHO, ETC.)

EM RELACIONAMENTO 1 X N A CHAVE ESTRANGEIRA FICA SEMPRE NA CARDINALIDADE N. 


CRIANDO AS FOREIGN KEY*/


CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,  
	SEXO ENUM('M','F') NOT NULL,
	EMAIL VARCHAR(50) UNIQUE, 
	CPF VARCHAR(11) UNIQUE
);
CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	ID_FK_CLIENTE INT UNIQUE,
	FOREIGN KEY(ID_FK_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)	
);
CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('RES','COM','CEL') NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	ID_FK_CLIENTE INT,
	FOREIGN KEY(ID_FK_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

/* colocando a FOREIGN KEY COMO UNIQUE estabelece a relaçaõ 1x1 */

INSERT INTO CLIENTE VALUES(NULL,'CARLOS','M','CARLOS@GMAIL.COM','89889833398');
INSERT INTO CLIENTE VALUES(NULL,'CLAUDIO','M','CLAUDIO@GMAIL.COM','89889881118');
INSERT INTO CLIENTE VALUES(NULL,'PEREIRA','M','PERIRA@GMAIL.COM','12389889898');
INSERT INTO CLIENTE VALUES(NULL,'MARCO','M','MARCO@GMAIL.COM','34589889898');
INSERT INTO CLIENTE VALUES(NULL,'TERCIO','M','TERCIO@GMAIL.COM','33211988998');
INSERT INTO CLIENTE VALUES(NULL,'SOUZA','M','SOUZA@GMAIL.COM','11189889898');
INSERT INTO CLIENTE VALUES(NULL,'CASTRILHO','M','CASTRILHO@GMAIL.COM','22229889898');
INSERT INTO CLIENTE VALUES(NULL,'JSILVA','M','JSILVA@GMAIL.COM','33333889898');
INSERT INTO CLIENTE VALUES(NULL,'TEIXEIRA','M','TEIXEIRA@GMAIL.COM','44444889898');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','TOIM@GMAIL.COM','55555889898');
INSERT INTO CLIENTE VALUES(NULL,'DEBORA','F','DEBORA@GMAIL.COM','66669889898');
INSERT INTO CLIENTE VALUES(NULL,'CAMILAP','F','CAMILAP@GMAIL.COM','7777889898');
INSERT INTO CLIENTE VALUES(NULL,'CARINA','F','CARINA@GMAIL.COM','00009889898');
INSERT INTO CLIENTE VALUES(NULL,'CAROLINA','F','CAROLINA@GMAIL.COM','898898811');
INSERT INTO CLIENTE VALUES(NULL,'ROSA','F','ROSA@GMAIL.COM','89889811198');
INSERT INTO CLIENTE VALUES(NULL,'DUDA','F','DUDA@GMAIL.COM','89811119898');
INSERT INTO CLIENTE VALUES(NULL,'VANESSA','F','VANESSA@GMAIL.COM','83333389898');
INSERT INTO CLIENTE VALUES(NULL,'JOANA','F','JOANA@GMAIL.COM','89666669898');
INSERT INTO CLIENTE VALUES(NULL,'CLAUDIA','F','CLAUDIA@GMAIL.COM','89877889898');
INSERT INTO CLIENTE VALUES(NULL,'MARISA','F','MARISA@GMAIL.COM','89889655698');


/*INSERIR ENDEREÇOS*/

INSERT INTO ENDERECO VALUES(NULL, 'RUA ANTONIO SÁ','CENTRO','BELO HORIZONTE','MG',1);
INSERT INTO ENDERECO VALUES(NULL, 'RUA PEDRO 3','CENTRO','CABO FRIO','RJ',2);
INSERT INTO ENDERECO VALUES(NULL, 'RUA PRES VARGAS','NORTE','ARRAIAL DO CABO','RG',3);
INSERT INTO ENDERECO VALUES(NULL, 'PORTO BELO','ARRAIAS','BELO HORIZONTE','MG',4);
INSERT INTO ENDERECO VALUES(NULL, 'RUA PEDRO 3','CENTRO','CABO FRIO','RJ',5);
INSERT INTO ENDERECO VALUES(NULL, 'RUA HERMÍNIO','CENTRO','CABO FRIO','RJ',6);
INSERT INTO ENDERECO VALUES(NULL, 'QD 409','ASA SUL','BRASILIA','DF',7);
INSERT INTO ENDERECO VALUES(NULL, 'RUA 8 SUL','SUL','ÁGUAS CLARAS','DF',8);
INSERT INTO ENDERECO VALUES(NULL, 'RUA 345','VIA NORTE','PIAUÍ','PI',9);
INSERT INTO ENDERECO VALUES(NULL, 'RUA CARLOS PEREIRA','ARROIO','MARANHÃO','MA',10);
INSERT INTO ENDERECO VALUES(NULL, 'RUA TEREZINHA SODRÉ','CENTRO','BELHO HORIZONTE','MG',11);
INSERT INTO ENDERECO VALUES(NULL, 'QE 33','GUARÁ','BRASILIA','DF',12);
INSERT INTO ENDERECO VALUES(NULL, 'QE 01','GUARÁ','BRASÍLIA','DF',13);
INSERT INTO ENDERECO VALUES(NULL, 'RUA CEARÁ 123','CENTRO','CABO FRIO','RJ',14);
INSERT INTO ENDERECO VALUES(NULL, 'RUA PEREIRA MATOS','CENTRO','BELO HORIZONTE','MG',15);
INSERT INTO ENDERECO VALUES(NULL, 'QUADRA 345','CENTRO','BELO HORIZONTE','MG',16);
INSERT INTO ENDERECO VALUES(NULL, 'RUA ALVARES','CENTRO','CABO FRIO','RJ',17);
INSERT INTO ENDERECO VALUES(NULL, 'RUA SERGIO LOPES','MARISCAL','BELÉM','PA',18);
INSERT INTO ENDERECO VALUES(NULL, 'RUA WE 24','CENTRO','ANANINDEUA','PA',19);
INSERT INTO ENDERECO VALUES(NULL, 'RUA WE 4','CENTRO','ANANIDNEUA','PA',20);
INSERT INTO ENDERECO VALUES(NULL, 'RUA ANTONIO MERE','CENTRO','BELO HORIZONTE','MG',21);



/*INSERIR TELEFONE*/
INSERT INTO TELEFONE VALUES(NULL, 'CEL','9898-1012',1);
INSERT INTO TELEFONE VALUES(NULL, 'COM','3698-1232',1);
INSERT INTO TELEFONE VALUES(NULL, 'CEL','2398-1222',2);
INSERT INTO TELEFONE VALUES(NULL, 'RES','9898-1012',2);
INSERT INTO TELEFONE VALUES(NULL, 'CEL','9898-1012',3);
INSERT INTO TELEFONE VALUES(NULL, 'RES','6545-1102',5);
INSERT INTO TELEFONE VALUES(NULL, 'COM','9898-1012',6);
INSERT INTO TELEFONE VALUES(NULL, 'RES','9898-1012',7);
INSERT INTO TELEFONE VALUES(NULL, 'CEL','9981-2233',8);
INSERT INTO TELEFONE VALUES(NULL, 'COM','3567-0101',10);
INSERT INTO TELEFONE VALUES(NULL, 'CEL','3434-1333',12);
INSERT INTO TELEFONE VALUES(NULL, 'COM','3698-3567',12);
INSERT INTO TELEFONE VALUES(NULL, 'CEL','8398-0000',13);
INSERT INTO TELEFONE VALUES(NULL, 'RES','8198-1012',14);
INSERT INTO TELEFONE VALUES(NULL, 'CEL','8734-9090',15);
INSERT INTO TELEFONE VALUES(NULL, 'RES','9655-1106',15);
INSERT INTO TELEFONE VALUES(NULL, 'COM','87658-1111',16);
INSERT INTO TELEFONE VALUES(NULL, 'RES','8767-4542',18);
INSERT INTO TELEFONE VALUES(NULL, 'CEL','8343-0101',20);
INSERT INTO TELEFONE VALUES(NULL, 'COM','4343-1000',20);



/* PARTES DE UMA QUERY */

/*SELEÇÃO , PROJEÇÃO E JUNÇÃO 

CONCEITOS ELEMENTARES DE BANCO DE DADOS:

PROJEÇÃO - tudo o que vc quer ver na tela. Uma query projeta na tela as infomrações que vc pretende. Exemplo: */

SELECT NOME, ENDERECO FROM CLIENTE;

SELECT NOW() AS DATA_ATUAL;  /*PROJETOU A DATA E ALTEROU SEU NOME PARA data_atual. */

SELECT 2 + 2 AS SOMA, NOME, NOW()
FROM CLIENTE;


/* SELEÇÃO é um subconjunto do conjunto total de registros de uma tabela.
WHERE É CLÁUSULA DE SELEÇÃO */

	SELECT NOME, SEXO, EMAIL   /*PROJEÇÃO*/
	FORM CLIENTE			   /*ORIGEM*/
	WHERE SEXO = 'F';		   /*SELEÇÃO/FILTRO*/


/*JUNÇÃO/JOINS 
EMBORA SE POSSA FAZER JUNÇÕES COM O WHERE, ESSA NÃO PE A FORMA CORRETA PARA FAZER. */

/* 
mysql> SELECT NOME, EMAIL, IDCLIENTE
    -> FROM CLIENTE;
+-----------+---------------------+-----------+
| NOME      | EMAIL               | IDCLIENTE |
+-----------+---------------------+-----------+
| JOÃO      | JOAO@GMAIL.COM      |         1 |
| CARLOS    | CARLOS@GMAIL.COM    |         2 |
| CLAUDIO   | CLAUDIO@GMAIL.COM   |         3 |
| PEREIRA   | PERIRA@GMAIL.COM    |         4 |
| MARCO     | MARCO@GMAIL.COM     |         5 |
| TERCIO    | TERCIO@GMAIL.COM    |         6 |
| SOUZA     | SOUZA@GMAIL.COM     |         7 |
| CASTRILHO | CASTRILHO@GMAIL.COM |         8 |
| JSILVA    | JSILVA@GMAIL.COM    |         9 |
| TEIXEIRA  | TEIXEIRA@GMAIL.COM  |        10 |
| ANTONIO   | TOIM@GMAIL.COM      |        11 |
| DEBORA    | DEBORA@GMAIL.COM    |        12 |
| CAMILAP   | CAMILAP@GMAIL.COM   |        13 |
| CARINA    | CARINA@GMAIL.COM    |        14 |
| CAROLINA  | CAROLINA@GMAIL.COM  |        15 |
| ROSA      | ROSA@GMAIL.COM      |        16 |
| DUDA      | DUDA@GMAIL.COM      |        17 |
| VANESSA   | VANESSA@GMAIL.COM   |        18 |
| JOANA     | JOANA@GMAIL.COM     |        19 |
| CLAUDIA   | CLAUDIA@GMAIL.COM   |        20 |
| MARISA    | MARISA@GMAIL.COM    |        21 |
+-----------+---------------------+-----------+
21 rows in set (0.00 sec) */

	SELECT ID_FK_CLIENTE, BAIRRO, CIDADE
	FROM ENDERECO;

/*
mysql> SELECT ID_FK_CLIENTE, BAIRRO, CIDADE
    -> FROM ENDERECO;
+---------------+-----------+-----------------+
| ID_FK_CLIENTE | BAIRRO    | CIDADE          |
+---------------+-----------+-----------------+
|             1 | CENTRO    | BELO HORIZONTE  |
|             2 | CENTRO    | CABO FRIO       |
|             3 | NORTE     | ARRAIAL DO CABO |
|             4 | ARRAIAS   | BELO HORIZONTE  |
|             5 | CENTRO    | CABO FRIO       |
|             6 | CENTRO    | CABO FRIO       |
|             7 | ASA SUL   | BRASILIA        |
|             8 | SUL       | ÁGUAS CLARAS    |
|             9 | VIA NORTE | PIAUÍ           |
|            10 | ARROIO    | MARANHÃO        |
|            11 | CENTRO    | BELHO HORIZONTE |
|            12 | GUARÁ     | BRASILIA        |
|            13 | GUARÁ     | BRASÍLIA        |
|            14 | CENTRO    | CABO FRIO       |
|            15 | CENTRO    | BELO HORIZONTE  |
|            16 | CENTRO    | BELO HORIZONTE  |
|            17 | CENTRO    | CABO FRIO       |
|            18 | MARISCAL  | BELÉM           |
|            19 | CENTRO    | ANANINDEUA      |
|            20 | CENTRO    | ANANIDNEUA      |
|            21 | CENTRO    | BELO HORIZONTE  |
+---------------+-----------+-----------------+
21 rows in set (0.04 sec)


/* SE A INTENÇÃO É JUNTAR DADOS DAS DUAS TABELAS, EMBORA SE POSSA FAZER COM O WHERE, CONFORME EXEMPLO ABAIXO, NÃO É RECOMENDADO

mysql> SELECT NOME, SEXO, BAIRRO, CIDADE
    -> FROM CLIENTE, ENDERECO
    -> WHERE IDCLIENTE = ID_FK_CLIENTE
    -> AND SEXO = 'F';
+----------+------+----------+----------------+
| NOME     | SEXO | BAIRRO   | CIDADE         |
+----------+------+----------+----------------+
| DEBORA   | F    | GUARÁ    | BRASILIA       |
| CAMILAP  | F    | GUARÁ    | BRASÍLIA       |
| CARINA   | F    | CENTRO   | CABO FRIO      |
| CAROLINA | F    | CENTRO   | BELO HORIZONTE |
| ROSA     | F    | CENTRO   | BELO HORIZONTE |
| DUDA     | F    | CENTRO   | CABO FRIO      |
| VANESSA  | F    | MARISCAL | BELÉM          |
| JOANA    | F    | CENTRO   | ANANINDEUA     |
| CLAUDIA  | F    | CENTRO   | ANANIDNEUA     |
| MARISA   | F    | CENTRO   | BELO HORIZONTE |
+----------+------+----------+----------------+
10 rows in set (0.15 sec)


/*FORMA CORRETA DE FAZER AS JUNÇÕES:*/
	SELECT NOME, SEXO, BAIRRO, CIDADE
	FROM CLIENTE
		INNER JOIN ENDERECO
		ON IDCLIENTE = ID_FK_CLIENTE
	WHERE SEXO ='F';

/*
+----------+------+----------+----------------+
| NOME     | SEXO | BAIRRO   | CIDADE         |
+----------+------+----------+----------------+
| DEBORA   | F    | GUARÁ    | BRASILIA       |
| CAMILAP  | F    | GUARÁ    | BRASÍLIA       |
| CARINA   | F    | CENTRO   | CABO FRIO      |
| CAROLINA | F    | CENTRO   | BELO HORIZONTE |
| ROSA     | F    | CENTRO   | BELO HORIZONTE |
| DUDA     | F    | CENTRO   | CABO FRIO      |
| VANESSA  | F    | MARISCAL | BELÉM          |
| JOANA    | F    | CENTRO   | ANANINDEUA     |
| CLAUDIA  | F    | CENTRO   | ANANIDNEUA     |
| MARISA   | F    | CENTRO   | BELO HORIZONTE |
+----------+------+----------+----------------+
10 rows in set (0.00 sec)


JOIN COM 3 TABELAS

ANTES DA AULA:
		+--------------------+
		| Tables_in_comercio |
		+--------------------+
		| cliente            |
		| endereco           |
		| telefone           |
		+--------------------+
*/
	SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
	FROM CLIENTE
	INNER JOIN ENDERECO
	ON CLIENTE.IDCLIENTE = ENDERECO.ID_FK_CLIENTE
	INNER JOIN TELEFONE
	ON CLIENTE.IDCLIENTE = TELEFONE.ID_FK_CLIENTE;
/*
		+-----------+------+----------+-----------------+------+------------+
		| NOME      | SEXO | BAIRRO   | CIDADE          | TIPO | NUMERO     |
		+-----------+------+----------+-----------------+------+------------+
		| JOÃO      | M    | CENTRO   | BELO HORIZONTE  | CEL  | 9898-1012  |
		| JOÃO      | M    | CENTRO   | BELO HORIZONTE  | COM  | 3698-1232  |
		| CARLOS    | M    | CENTRO   | CABO FRIO       | CEL  | 2398-1222  |
		| CARLOS    | M    | CENTRO   | CABO FRIO       | RES  | 9898-1012  |
		| CLAUDIO   | M    | NORTE    | ARRAIAL DO CABO | CEL  | 9898-1012  |
		| MARCO     | M    | CENTRO   | CABO FRIO       | RES  | 6545-1102  |
		| TERCIO    | M    | CENTRO   | CABO FRIO       | COM  | 9898-1012  |
		| SOUZA     | M    | ASA SUL  | BRASILIA        | RES  | 9898-1012  |
		| CASTRILHO | M    | SUL      | ÁGUAS CLARAS    | CEL  | 9981-2233  |
		| TEIXEIRA  | M    | ARROIO   | MARANHÃO        | COM  | 3567-0101  |
		| DEBORA    | F    | GUARÁ    | BRASILIA        | CEL  | 3434-1333  |
		| DEBORA    | F    | GUARÁ    | BRASILIA        | COM  | 3698-3567  |
		| CAMILAP   | F    | GUARÁ    | BRASÍLIA        | CEL  | 8398-0000  |
		| CARINA    | F    | CENTRO   | CABO FRIO       | RES  | 8198-1012  |
		| CAROLINA  | F    | CENTRO   | BELO HORIZONTE  | CEL  | 8734-9090  |
		| CAROLINA  | F    | CENTRO   | BELO HORIZONTE  | RES  | 9655-1106  |
		| ROSA      | F    | CENTRO   | BELO HORIZONTE  | COM  | 87658-1111 |
		| VANESSA   | F    | MARISCAL | BELÉM           | RES  | 8767-4542  |
		| CLAUDIA   | F    | CENTRO   | ANANIDNEUA      | CEL  | 8343-0101  |
		| CLAUDIA   | F    | CENTRO   | ANANIDNEUA      | COM  | 4343-1000  |
		+-----------+------+----------+-----------------+------+------------+
		20 rows in set (0.04 sec)

OUTRA FORMA DE FAZER - PONTEIRAMENTO*/

SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
	FROM CLIENTE C
	INNER JOIN ENDERECO E
	ON  C.IDCLIENTE = E.ID_FK_CLIENTE
	INNER JOIN TELEFONE T
	ON C.IDCLIENTE = T.ID_FK_CLIENTE;
/*
		+-----------+------+----------+-----------------+------+------------+
		| NOME      | SEXO | BAIRRO   | CIDADE          | TIPO | NUMERO     |
		+-----------+------+----------+-----------------+------+------------+
		| JOÃO      | M    | CENTRO   | BELO HORIZONTE  | CEL  | 9898-1012  |
		| JOÃO      | M    | CENTRO   | BELO HORIZONTE  | COM  | 3698-1232  |
		| CARLOS    | M    | CENTRO   | CABO FRIO       | CEL  | 2398-1222  |
		| CARLOS    | M    | CENTRO   | CABO FRIO       | RES  | 9898-1012  |
		| CLAUDIO   | M    | NORTE    | ARRAIAL DO CABO | CEL  | 9898-1012  |
		| MARCO     | M    | CENTRO   | CABO FRIO       | RES  | 6545-1102  |
		| TERCIO    | M    | CENTRO   | CABO FRIO       | COM  | 9898-1012  |
		| SOUZA     | M    | ASA SUL  | BRASILIA        | RES  | 9898-1012  |
		| CASTRILHO | M    | SUL      | ÁGUAS CLARAS    | CEL  | 9981-2233  |
		| TEIXEIRA  | M    | ARROIO   | MARANHÃO        | COM  | 3567-0101  |
		| DEBORA    | F    | GUARÁ    | BRASILIA        | CEL  | 3434-1333  |
		| DEBORA    | F    | GUARÁ    | BRASILIA        | COM  | 3698-3567  |
		| CAMILAP   | F    | GUARÁ    | BRASÍLIA        | CEL  | 8398-0000  |
		| CARINA    | F    | CENTRO   | CABO FRIO       | RES  | 8198-1012  |
		| CAROLINA  | F    | CENTRO   | BELO HORIZONTE  | CEL  | 8734-9090  |
		| CAROLINA  | F    | CENTRO   | BELO HORIZONTE  | RES  | 9655-1106  |
		| ROSA      | F    | CENTRO   | BELO HORIZONTE  | COM  | 87658-1111 |
		| VANESSA   | F    | MARISCAL | BELÉM           | RES  | 8767-4542  |
		| CLAUDIA   | F    | CENTRO   | ANANIDNEUA      | CEL  | 8343-0101  |
		| CLAUDIA   | F    | CENTRO   | ANANIDNEUA      | COM  | 4343-1000  |
		+-----------+------+----------+-----------------+------+------------+
		20 rows in set (0.00 sec)


/*
linguagem SQL -4a geração - geração muito parecida com liguagem humana

categorias:
	DML  - DATA MANIPULATION LANGUAGE - manipulação de dados
	DDL DATA DEFINITION LANGUAGEM - tipagem de dados
	DCL DATA CONTROL LANGUAGE - controle de acesso dos daoids
	TCL - TRANSACTION CONTROL LANGUAGE - controle de transação. Atomicidade dos banco de dados



TCL =  */

INSERT INTO CLIENTE VALUES(NULL,PAULA,'M',NULL,'77437493S');
INSERT INTO ENDERECO VALUES(NULL, 'RUA JOAQUIM JOSE', 'ALVORADA','NITEROI','RJ',22);


INSERT INTO CLIENTE VALUES(NULL,'CELINA','M',NULL,'34543243232');
INSERT INTO ENDERECO VALUES(NULL,'QUADRA 5 CONUNTO 8', 'SOBRADINHO I','SOBRADINHO','DF',23);


/* CORRIGINDO DADOS   PAULA E CELINA ESTÃO COM O SEXO ERRADO

		mysql> SELECT * FROM CLIENTE
			-> WHERE SEXO = 'M';
		+-----------+-----------+------+---------------------+-------------+
		| IDCLIENTE | NOME      | SEXO | EMAIL               | CPF         |
		+-----------+-----------+------+---------------------+-------------+
		|         1 | JOÃO      | M    | JOAO@GMAIL.COM      | 89889889898 |
		|         2 | CARLOS    | M    | CARLOS@GMAIL.COM    | 89889833398 |
		|         3 | CLAUDIO   | M    | CLAUDIO@GMAIL.COM   | 89889881118 |
		|         4 | PEREIRA   | M    | PERIRA@GMAIL.COM    | 12389889898 |
		|         5 | MARCO     | M    | MARCO@GMAIL.COM     | 34589889898 |
		|         6 | TERCIO    | M    | TERCIO@GMAIL.COM    | 33211988998 |
		|         7 | SOUZA     | M    | SOUZA@GMAIL.COM     | 11189889898 |
		|         8 | CASTRILHO | M    | CASTRILHO@GMAIL.COM | 22229889898 |
		|         9 | JSILVA    | M    | JSILVA@GMAIL.COM    | 33333889898 |
		|        10 | TEIXEIRA  | M    | TEIXEIRA@GMAIL.COM  | 44444889898 |
		|        11 | ANTONIO   | M    | TOIM@GMAIL.COM      | 55555889898 |
		|        22 | PAULA     | M    | NULL                | 77437493S   |
		|        23 | CELINA    | M    | NULL                | 34543243232 |
		+-----------+-----------+------+---------------------+-------------+
		13 rows in set (0.00 sec)

PARA CORRIGIR DADOS, TEMOS QUE SEGUIR DOIS PASSOS - 
1° - DESCOBRIR O CÓDIGO DO CLIENTE:
		- NO CASO: IDCLIENTE 22 e IDCLIENTE 23
2° - BUSCAR E CONFIRMAR OS DADOS	
				SELECT * FROM CLIENTE
				WHERE IDCLIENTE = 22;

		PARA MUDAR DADOS, USAR O UPDATE
*/
		UPDATE CLIENTE
		SET SEXO = 'F'
		WHERE IDCLIENTE = '22';
/*		
Query OK, 1 row affected (0.13 sec)
Rows matched: 1  Changed: 1  Warnings: 0
		'
		mysql> SELECT * FROM CLIENTE
			-> WHERE IDCLIENTE = 22;
		+-----------+-------+------+-------+-----------+
		| IDCLIENTE | NOME  | SEXO | EMAIL | CPF       |
		+-----------+-------+------+-------+-----------+
		|        22 | PAULA | F    | NULL  | 77437493S |
		+-----------+-------+------+-------+-----------+'
*********************************************************
*/		UPDATE CLIENTE
		SET SEXO = 'F'
		WHERE IDCLIENTE = '23';
/*
		+-----------+--------+------+-------+-------------+
		| IDCLIENTE | NOME   | SEXO | EMAIL | CPF         |
		+-----------+--------+------+-------+-------------+
		|        23 | CELINA | F    | NULL  | 34543243232 |
		+-----------+--------+------+-------+-------------+
		1 row in set (0.00 sec)
*********************************************************

DELETE

	1° - VERIFICAR ENDEREÇO DO DADO:
				SELECT * FROM CLIENTE;


				mysql> SELECT * FROM CLIENTE;
				+-----------+-----------+------+---------------------+-------------+
				| IDCLIENTE | NOME      | SEXO | EMAIL               | CPF         |
				+-----------+-----------+------+---------------------+-------------+
				|         1 | JOÃO      | M    | JOAO@GMAIL.COM      | 89889889898 |
				|         2 | CARLOS    | M    | CARLOS@GMAIL.COM    | 89889833398 |
				|         3 | CLAUDIO   | M    | CLAUDIO@GMAIL.COM   | 89889881118 |
				|         4 | PEREIRA   | M    | PERIRA@GMAIL.COM    | 12389889898 |
				|         5 | MARCO     | M    | MARCO@GMAIL.COM     | 34589889898 |
				|         6 | TERCIO    | M    | TERCIO@GMAIL.COM    | 33211988998 |
				|         7 | SOUZA     | M    | SOUZA@GMAIL.COM     | 11189889898 |
				|         8 | CASTRILHO | M    | CASTRILHO@GMAIL.COM | 22229889898 |
				|         9 | JSILVA    | M    | JSILVA@GMAIL.COM    | 33333889898 |
				|        10 | TEIXEIRA  | M    | TEIXEIRA@GMAIL.COM  | 44444889898 |
				|        11 | ANTONIO   | M    | TOIM@GMAIL.COM      | 55555889898 |
				|        12 | DEBORA    | F    | DEBORA@GMAIL.COM    | 66669889898 |
				|        13 | CAMILAP   | F    | CAMILAP@GMAIL.COM   | 7777889898  |
				|        14 | CARINA    | F    | CARINA@GMAIL.COM    | 00009889898 |
				|        15 | CAROLINA  | F    | CAROLINA@GMAIL.COM  | 898898811   |
				|        16 | ROSA      | F    | ROSA@GMAIL.COM      | 89889811198 |
				|        17 | DUDA      | F    | DUDA@GMAIL.COM      | 89811119898 |
				|        18 | VANESSA   | F    | VANESSA@GMAIL.COM   | 83333389898 |
				|        19 | JOANA     | F    | JOANA@GMAIL.COM     | 89666669898 |
				|        20 | CLAUDIA   | F    | CLAUDIA@GMAIL.COM   | 89877889898 |
				|        21 | MARISA    | F    | MARISA@GMAIL.COM    | 89889655698 |
				|        22 | PAULA     | F    | NULL                | 77437493S   |
				|        23 | CELINA    | F    | NULL                | 34543243232 |
				+-----------+-----------+------+---------------------+-------------+

	2° VERIFICAR DADOS A SEREM APAGADOS, exemplo 12 - DÉBORA */

		SELECT * FROM CLIENTE
		WHERE IDCLIENTE ='12';
/*
					mysql> SELECT * FROM CLIENTE
						-> WHERE IDCLIENTE ='12';
					+-----------+--------+------+------------------+-------------+
					| IDCLIENTE | NOME   | SEXO | EMAIL            | CPF         |
					+-----------+--------+------+------------------+-------------+
					|        12 | DEBORA | F    | DEBORA@GMAIL.COM | 66669889898 |
					+-----------+--------+------+------------------+-------------+
					1 row in set (0.00 sec)

	3° querry de delete - ANTES DEVE-SE APAGAR AS CONEXÕES COMO A TABELA DE ENDEREÇO E TELEFONE.
	VAMOS DESCOBRIR O ENDEREÇO

	mysql> SELECT NOME, IDCLIENTE, ID_FK_CLIENTE, BAIRRO
					-> FROM CLIENTE
					-> INNER JOIN ENDERECO
					-> ON IDCLIENTE = ID_FK_CLIENTE;
				+-----------+-----------+---------------+--------------+
				| NOME      | IDCLIENTE | ID_FK_CLIENTE | BAIRRO       |
				+-----------+-----------+---------------+--------------+
				| JOÃO      |         1 |             1 | CENTRO       |
				| CARLOS    |         2 |             2 | CENTRO       |
				| CLAUDIO   |         3 |             3 | NORTE        |
				| PEREIRA   |         4 |             4 | ARRAIAS      |
				| MARCO     |         5 |             5 | CENTRO       |
				| TERCIO    |         6 |             6 | CENTRO       |
				| SOUZA     |         7 |             7 | ASA SUL      |
				| CASTRILHO |         8 |             8 | SUL          |
				| JSILVA    |         9 |             9 | VIA NORTE    |
				| TEIXEIRA  |        10 |            10 | ARROIO       |
				| ANTONIO   |        11 |            11 | CENTRO       |
				| DEBORA    |        12 |            12 | GUARÁ        |
				| CAMILAP   |        13 |            13 | GUARÁ        |
				| CARINA    |        14 |            14 | CENTRO       |
				| CAROLINA  |        15 |            15 | CENTRO       |
				| ROSA      |        16 |            16 | CENTRO       |
				| DUDA      |        17 |            17 | CENTRO       |
				| VANESSA   |        18 |            18 | MARISCAL     |
				| JOANA     |        19 |            19 | CENTRO       |
				| CLAUDIA   |        20 |            20 | CENTRO       |
				| MARISA    |        21 |            21 | CENTRO       |
				| PAULA     |        22 |            22 | ALVORADA     |
				| CELINA    |        23 |            23 | SOBRADINHO I |
				+-----------+-----------+---------------+--------------+
				23 rows in set (0.00 sec)

				mysql> DELETE FROM ENDERECO
					-> WHERE ID_FK_CLIENTE='12';
				Query OK, 1 row affected (0.14 sec)

				mysql> DELETE FROM TELEFONE
					-> WHERE ID_FK_CLIENTE='12';
				Query OK, 2 rows affected (0.09 sec)

				mysql> SELECT *
					-> FROM TELEFONE;
				+------------+------+------------+---------------+
				| IDTELEFONE | TIPO | NUMERO     | ID_FK_CLIENTE |
				+------------+------+------------+---------------+
				|          1 | CEL  | 9898-1012  |             1 |
				|          2 | COM  | 3698-1232  |             1 |
				|          3 | CEL  | 2398-1222  |             2 |
				|          4 | RES  | 9898-1012  |             2 |
				|          5 | CEL  | 9898-1012  |             3 |
				|          6 | RES  | 6545-1102  |             5 |
				|          7 | COM  | 9898-1012  |             6 |
				|          8 | RES  | 9898-1012  |             7 |
				|          9 | CEL  | 9981-2233  |             8 |
				|         10 | COM  | 3567-0101  |            10 |
				|         13 | CEL  | 8398-0000  |            13 |
				|         14 | RES  | 8198-1012  |            14 |
				|         15 | CEL  | 8734-9090  |            15 |
				|         16 | RES  | 9655-1106  |            15 |
				|         17 | COM  | 87658-1111 |            16 |
				|         18 | RES  | 8767-4542  |            18 |
				|         19 | CEL  | 8343-0101  |            20 |
				|         20 | COM  | 4343-1000  |            20 |
				+------------+------+------------+---------------+
				18 rows in set (0.00 sec)

verificar se apagou os dados:

			mysql> delete from cliente
				-> where idcliente = '12';
			Query OK, 1 row affected (0.08 sec)

			mysql> select * from cliente;
			+-----------+-----------+------+---------------------+-------------+
			| IDCLIENTE | NOME      | SEXO | EMAIL               | CPF         |
			+-----------+-----------+------+---------------------+-------------+
			|         1 | JOÃO      | M    | JOAO@GMAIL.COM      | 89889889898 |
			|         2 | CARLOS    | M    | CARLOS@GMAIL.COM    | 89889833398 |
			|         3 | CLAUDIO   | M    | CLAUDIO@GMAIL.COM   | 89889881118 |
			|         4 | PEREIRA   | M    | PERIRA@GMAIL.COM    | 12389889898 |
			|         5 | MARCO     | M    | MARCO@GMAIL.COM     | 34589889898 |
			|         6 | TERCIO    | M    | TERCIO@GMAIL.COM    | 33211988998 |
			|         7 | SOUZA     | M    | SOUZA@GMAIL.COM     | 11189889898 |
			|         8 | CASTRILHO | M    | CASTRILHO@GMAIL.COM | 22229889898 |
			|         9 | JSILVA    | M    | JSILVA@GMAIL.COM    | 33333889898 |
			|        10 | TEIXEIRA  | M    | TEIXEIRA@GMAIL.COM  | 44444889898 |
			|        11 | ANTONIO   | M    | TOIM@GMAIL.COM      | 55555889898 |
			|        13 | CAMILAP   | F    | CAMILAP@GMAIL.COM   | 7777889898  |
			|        14 | CARINA    | F    | CARINA@GMAIL.COM    | 00009889898 |
			|        15 | CAROLINA  | F    | CAROLINA@GMAIL.COM  | 898898811   |
			|        16 | ROSA      | F    | ROSA@GMAIL.COM      | 89889811198 |
			|        17 | DUDA      | F    | DUDA@GMAIL.COM      | 89811119898 |
			|        18 | VANESSA   | F    | VANESSA@GMAIL.COM   | 83333389898 |
			|        19 | JOANA     | F    | JOANA@GMAIL.COM     | 89666669898 |
			|        20 | CLAUDIA   | F    | CLAUDIA@GMAIL.COM   | 89877889898 |
			|        21 | MARISA    | F    | MARISA@GMAIL.COM    | 89889655698 |
			|        22 | PAULA     | F    | NULL                | 77437493S   |
			|        23 | CELINA    | F    | NULL                | 34543243232 |
			+-----------+-----------+------+---------------------+-------------+
			22 rows in set (0.00 sec)


************************************************************************************************
************************************************************************************************
************************************************************************************************

/* DDL DATA DEFINITION LANGUAGE */

		1 - CREATE:

		CREATE TABLE PRODUTO(
			IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
			NOME_PRODUTO VARCHAR(30) NOT NULL,
			PRECO INT,
			FRETE FLOAT(10,2) NOT NULL
		);

        /*
							mysql> CREATE TABLE PRODUTO(
							-> IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
							-> NOME_PRODUTO VARCHAR(30) NOT NULL,
							-> PRECO INT,
							-> FRETE FLOAT(10,2) NOT NULL
							-> );
						Query OK, 0 rows affected (0.80 sec)

						mysql> SELECT * FROM PRODUTO;
						Empty set (0.00 sec)

						mysql> DESC PRODUTO;
						+--------------+-------------+------+-----+---------+----------------+
						| Field        | Type        | Null | Key | Default | Extra          |
						+--------------+-------------+------+-----+---------+----------------+
						| IDPRODUTO    | int(11)     | NO   | PRI | NULL    | auto_increment |
						| NOME_PRODUTO | varchar(30) | NO   |     | NULL    |                |
						| PRECO        | int(11)     | YES  |     | NULL    |                |
						| FRETE        | float(10,2) | NO   |     | NULL    |                |
						+--------------+-------------+------+-----+---------+----------------+
						4 rows in set (0.00 sec)
************************************************************************************************
		2 - ALTER + CHANGE: */

		ALTER TABLE PRODUTO
		CHANGE PRECO VALOR_UNITARIO INT NOT NULL;
/*
					mysql> ALTER TABLE PRODUTO
					-> CHANGE PRECO VALOR_UNITARIO INT NOT NULL;
					Query OK, 0 rows affected (1.14 sec)
					Records: 0  Duplicates: 0  Warnings: 0

					mysql> DESC PRODUTO;
					+----------------+-------------+------+-----+---------+----------------+
					| Field          | Type        | Null | Key | Default | Extra          |
					+----------------+-------------+------+-----+---------+----------------+
					| IDPRODUTO      | int(11)     | NO   | PRI | NULL    | auto_increment |
					| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
					| VALOR_UNITARIO | int(11)     | NO   |     | NULL    |                |
					| FRETE          | float(10,2) | NO   |     | NULL    |                |
					+----------------+-------------+------+-----+---------+----------------+
					4 rows in set (0.00 sec)
************************************************************************************************
		3 - ALTER + MODIFY */

		ALTER TABLE PRODUTO
		MODIFY VALOR_UNITARIO VARCHAR(50) NOT NULL;
/*
					mysql> ALTER TABLE PRODUTO
					-> MODIFY VALOR_UNITARIO VARCHAR(50) NOT NULL;
					Query OK, 0 rows affected (1.11 sec)
					Records: 0  Duplicates: 0  Warnings: 0

					mysql> DESC PRODUTO;
					+----------------+-------------+------+-----+---------+----------------+
					| Field          | Type        | Null | Key | Default | Extra          |
					+----------------+-------------+------+-----+---------+----------------+
					| IDPRODUTO      | int(11)     | NO   | PRI | NULL    | auto_increment |
					| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
					| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
					| FRETE          | float(10,2) | NO   |     | NULL    |                |
					+----------------+-------------+------+-----+---------+----------------+
					4 rows in set (0.00 sec)

************************************************************************************************
		4 - ALTER + ADD (ADICIONAR COLUNAS)*/
		ALTER TABLE PRODUTO
		ADD PESO FLOAT(10,2) NOT NULL;
/*
					mysql> ALTER TABLE PRODUTO
						-> ADD PESO FLOAT(10,2) NOT NULL;
					Query OK, 0 rows affected (0.80 sec)
					Records: 0  Duplicates: 0  Warnings: 0

					mysql> DESC PRODUTO;
					+----------------+-------------+------+-----+---------+----------------+
					| Field          | Type        | Null | Key | Default | Extra          |
					+----------------+-------------+------+-----+---------+----------------+
					| IDPRODUTO      | int(11)     | NO   | PRI | NULL    | auto_increment |
					| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
					| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
					| FRETE          | float(10,2) | NO   |     | NULL    |                |
					| PESO           | float(10,2) | NO   |     | NULL    |                |
					+----------------+-------------+------+-----+---------+----------------+
					5 rows in set (0.00 sec)
************************************************************************************************
		5 - ALTER + DROP (APAGAR COLUNAS)*/
		ALTER TABLE PRODUTO
		DROP COLUMN PESO;
/*
					mysql> ALTER TABLE PRODUTO
						-> DROP COLUMN PESO;
					Query OK, 0 rows affected (1.28 sec)
					Records: 0  Duplicates: 0  Warnings: 0

					mysql> DESC PRODUTO;
					+----------------+-------------+------+-----+---------+----------------+
					| Field          | Type        | Null | Key | Default | Extra          |
					+----------------+-------------+------+-----+---------+----------------+
					| IDPRODUTO      | int(11)     | NO   | PRI | NULL    | auto_increment |
					| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
					| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
					| FRETE          | float(10,2) | NO   |     | NULL    |                |
					+----------------+-------------+------+-----+---------+----------------+
					4 rows in set (0.00 sec)

************************************************************************************************
		6 - ALTER + ADD COLUMN (COM LUGAR CERTO_) (INSERIR COLUNAS COM POSIÇÃO EXATA)*/
		ALTER TABLE PRODUTO
		ADD COLUMN PESO FLOAT(10,2) NOT NULL
		AFTER NOME_PRODUTO;

/*						mysql> ALTER TABLE PRODUTO
						-> ADD COLUMN PESO FLOAT(10,2) NOT NULL
						-> AFTER NOME_PRODUTO;
						Query OK, 0 rows affected (0.83 sec)
						Records: 0  Duplicates: 0  Warnings: 0

						mysql> DESC PRODUTO;
						+----------------+-------------+------+-----+---------+----------------+
						| Field          | Type        | Null | Key | Default | Extra          |
						+----------------+-------------+------+-----+---------+----------------+
						| IDPRODUTO      | int(11)     | NO   | PRI | NULL    | auto_increment |
						| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
						| PESO           | float(10,2) | NO   |     | NULL    |                |
						| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
						| FRETE          | float(10,2) | NO   |     | NULL    |                |
						+----------------+-------------+------+-----+---------+----------------+
						5 rows in set (0.00 sec)

	- se quiser clocar como primeira coluna, basta troca AFTER +COLUNA POR FIRST.
	





	EXERCÍCIO DML SEÇÃO 10 DO CURSO

SCRIPT:
/* EXERCICIOS DML */

							INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
							INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
							INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
							INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
							INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
							INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
							INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
							INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
							INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
							INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
							INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
							INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
							INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');

							/* CADASTRE UM ENDERECO PARA CADA CLIENTE */

							INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',24);
							INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',25);
							INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',26);
							INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',27);
							INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',28);
							INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',29);
							INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',30);
							INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',31);
							INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',32);
							INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',33);
							INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',34);
							INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',35);
							INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',36);

							/* CADASTRE TELEFONES PARA OS CLIENTES */

							INSERT INTO TELEFONE VALUES(NULL,'RES','68976565',24);
							INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675',24);  
							INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765',26);
							INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786',26);
							INSERT INTO TELEFONE VALUES(NULL,'COM','55689654',26);
							INSERT INTO TELEFONE VALUES(NULL,'COM','88687979',27); 
							INSERT INTO TELEFONE VALUES(NULL,'COM','88965676',28);
							INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809',30);
							INSERT INTO TELEFONE VALUES(NULL,'COM','88679978',31);
							INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768',32);  
							INSERT INTO TELEFONE VALUES(NULL,'RES','89955665',33);
							INSERT INTO TELEFONE VALUES(NULL,'RES','77455786',34);
							INSERT INTO TELEFONE VALUES(NULL,'RES','89766554',34);
							INSERT INTO TELEFONE VALUES(NULL,'RES','77755785',35);
							INSERT INTO TELEFONE VALUES(NULL,'COM','44522578',35);

/* RELATORIO GERAL DE TODOS OS CLIENTES */
	SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA,E.BAIRRO,E.CIDADE,E.ESTADO,T.TIPO,T.NUMERO
	FROM CLIENTE C
		INNER JOIN ENDERECO E
		ON C.IDCLIENTE = E.ID_FK_CLIENTE

		INNER JOIN TELEFONE T
		ON C.IDCLIENTE = T.ID_FK_CLIENTE;

/*
mysql> SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA,E.BAIRRO,E.CIDADE,E.ESTADO,T.TIPO,T.NUMERO
    -> FROM CLIENTE C
    -> INNER JOIN ENDERECO E
    -> ON C.IDCLIENTE = E.ID_FK_CLIENTE
    ->
    -> INNER JOIN TELEFONE T
    -> ON C.IDCLIENTE = T.ID_FK_CLIENTE;
+-----------+-----------+------+---------------------+-------------+--------------------+------------+-----------------+--------+------+------------+
| IDCLIENTE | NOME      | SEXO | EMAIL               | CPF         | RUA                | BAIRRO     | CIDADE          | ESTADO | TIPO | NUMERO     |
+-----------+-----------+------+---------------------+-------------+--------------------+------------+-----------------+--------+------+------------+
|         1 | JOÃO      | M    | JOAO@GMAIL.COM      | 89889889898 | RUA ANTONIO SÁ     | CENTRO     | BELO HORIZONTE  | MG     | CEL  | 9898-1012  |
|         1 | JOÃO      | M    | JOAO@GMAIL.COM      | 89889889898 | RUA ANTONIO SÁ     | CENTRO     | BELO HORIZONTE  | MG     | COM  | 3698-1232  |
|         2 | CARLOS    | M    | CARLOS@GMAIL.COM    | 89889833398 | RUA PEDRO 3        | CENTRO     | CABO FRIO       | RJ     | CEL  | 2398-1222  |
|         2 | CARLOS    | M    | CARLOS@GMAIL.COM    | 89889833398 | RUA PEDRO 3        | CENTRO     | CABO FRIO       | RJ     | RES  | 9898-1012  |
|         3 | CLAUDIO   | M    | CLAUDIO@GMAIL.COM   | 89889881118 | RUA PRES VARGAS    | NORTE      | ARRAIAL DO CABO | RG     | CEL  | 9898-1012  |
|         5 | MARCO     | M    | MARCO@GMAIL.COM     | 34589889898 | RUA PEDRO 3        | CENTRO     | CABO FRIO       | RJ     | RES  | 6545-1102  |
|         6 | TERCIO    | M    | TERCIO@GMAIL.COM    | 33211988998 | RUA HERMÍNIO       | CENTRO     | CABO FRIO       | RJ     | COM  | 9898-1012  |
|         7 | SOUZA     | M    | SOUZA@GMAIL.COM     | 11189889898 | QD 409             | ASA SUL    | BRASILIA        | DF     | RES  | 9898-1012  |
|         8 | CASTRILHO | M    | CASTRILHO@GMAIL.COM | 22229889898 | RUA 8 SUL          | SUL        | ÁGUAS CLARAS    | DF     | CEL  | 9981-2233  |
|        10 | TEIXEIRA  | M    | TEIXEIRA@GMAIL.COM  | 44444889898 | RUA CARLOS PEREIRA | ARROIO     | MARANHÃO        | MA     | COM  | 3567-0101  |
|        13 | CAMILAP   | F    | CAMILAP@GMAIL.COM   | 7777889898  | QE 01              | GUARÁ      | BRASÍLIA        | DF     | CEL  | 8398-0000  |
|        14 | CARINA    | F    | CARINA@GMAIL.COM    | 00009889898 | RUA CEARÁ 123      | CENTRO     | CABO FRIO       | RJ     | RES  | 8198-1012  |
|        15 | CAROLINA  | F    | CAROLINA@GMAIL.COM  | 898898811   | RUA PEREIRA MATOS  | CENTRO     | BELO HORIZONTE  | MG     | CEL  | 8734-9090  |
|        15 | CAROLINA  | F    | CAROLINA@GMAIL.COM  | 898898811   | RUA PEREIRA MATOS  | CENTRO     | BELO HORIZONTE  | MG     | RES  | 9655-1106  |
|        16 | ROSA      | F    | ROSA@GMAIL.COM      | 89889811198 | QUADRA 345         | CENTRO     | BELO HORIZONTE  | MG     | COM  | 87658-1111 |
|        18 | VANESSA   | F    | VANESSA@GMAIL.COM   | 83333389898 | RUA SERGIO LOPES   | MARISCAL   | BELÉM           | PA     | RES  | 8767-4542  |
|        20 | CLAUDIA   | F    | CLAUDIA@GMAIL.COM   | 89877889898 | RUA WE 4           | CENTRO     | ANANIDNEUA      | PA     | CEL  | 8343-0101  |
|        20 | CLAUDIA   | F    | CLAUDIA@GMAIL.COM   | 89877889898 | RUA WE 4           | CENTRO     | ANANIDNEUA      | PA     | COM  | 4343-1000  |
|        24 | FLAVIO    | M    | FLAVIO@IG.COM       | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE    | MG     | RES  | 68976565   |
|        24 | FLAVIO    | M    | FLAVIO@IG.COM       | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE    | MG     | CEL  | 99656675   |
|        26 | GIOVANA   | F    | NULL                | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO  | RJ     | CEL  | 33567765   |
|        26 | GIOVANA   | F    | NULL                | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO  | RJ     | CEL  | 88668786   |
|        26 | GIOVANA   | F    | NULL                | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO  | RJ     | COM  | 55689654   |
|        27 | KARLA     | F    | KARLA@GMAIL.COM     | 545676778   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO  | RJ     | COM  | 88687979   |
|        28 | DANIELE   | F    | DANIELE@GMAIL.COM   | 43536789    | RUA ARAUJO LIMA    | CENTRO     | VITORIA         | ES     | COM  | 88965676   |
|        30 | EDUARDO   | M    | NULL                | 54376457    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA        | PR     | CEL  | 89966809   |
|        31 | ANTONIO   | M    | ANTONIO@IG.COM      | 12436767    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO       | SP     | COM  | 88679978   |
|        32 | ANTONIO   | M    | ANTONIO@UOL.COM     | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA        | PR     | CEL  | 99655768   |
|        33 | ELAINE    | F    | ELAINE@GLOBO.COM    | 32567763    | RUA DA LAPA        | LAPA       | SAO PAULO       | SP     | RES  | 89955665   |
|        34 | CARMEM    | F    | CARMEM@IG.COM       | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO  | RJ     | RES  | 77455786   |
|        34 | CARMEM    | F    | CARMEM@IG.COM       | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO  | RJ     | RES  | 89766554   |
|        35 | ADRIANA   | F    | ADRIANA@GMAIL.COM   | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO  | RJ     | RES  | 77755785   |
|        35 | ADRIANA   | F    | ADRIANA@GMAIL.COM   | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO  | RJ     | COM  | 44522578   |
+-----------+-----------+------+---------------------+-------------+--------------------+------------+-----------------+--------+------+------------+
33 rows in set (0.00 sec)
+-----------+-----------+------+---------------------+-------------+------------+--------------------+------------+-----------------+--------+---------------+------------+------+------------+---------------+
/* RELATORIO  DE HOMENS */

		SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA,E.BAIRRO,E.CIDADE,E.ESTADO,T.TIPO,T.NUMERO
		FROM CLIENTE C
		INNER JOIN ENDERECO E
		ON C.IDCLIENTE = E.ID_FK_CLIENTE

		INNER JOIN TELEFONE T
		ON C.IDCLIENTE = T.ID_FK_CLIENTE
		WHERE SEXO='M';
/*				
				+-----------+-----------+------+---------------------+-------------+
				| IDCLIENTE | NOME      | SEXO | EMAIL               | CPF         |
				+-----------+-----------+------+---------------------+-------------+
				|         1 | JOÃO      | M    | JOAO@GMAIL.COM      | 89889889898 |
				|         2 | CARLOS    | M    | CARLOS@GMAIL.COM    | 89889833398 |
				|         3 | CLAUDIO   | M    | CLAUDIO@GMAIL.COM   | 89889881118 |
				|         4 | PEREIRA   | M    | PERIRA@GMAIL.COM    | 12389889898 |
				|         5 | MARCO     | M    | MARCO@GMAIL.COM     | 34589889898 |
				|         6 | TERCIO    | M    | TERCIO@GMAIL.COM    | 33211988998 |
				|         7 | SOUZA     | M    | SOUZA@GMAIL.COM     | 11189889898 |
				|         8 | CASTRILHO | M    | CASTRILHO@GMAIL.COM | 22229889898 |
				|         9 | JSILVA    | M    | JSILVA@GMAIL.COM    | 33333889898 |
				|        10 | TEIXEIRA  | M    | TEIXEIRA@GMAIL.COM  | 44444889898 |
				|        11 | ANTONIO   | M    | TOIM@GMAIL.COM      | 55555889898 |
				|        24 | FLAVIO    | M    | FLAVIO@IG.COM       | 4657765     |
				|        25 | ANDRE     | M    | ANDRE@GLOBO.COM     | 7687567     |
				|        27 | KARLA     | M    | KARLA@GMAIL.COM     | 545676778   |
				|        28 | DANIELE   | M    | DANIELE@GMAIL.COM   | 43536789    |
				|        29 | LORENA    | M    | NULL                | 774557887   |
				|        30 | EDUARDO   | M    | NULL                | 54376457    |
				|        32 | ANTONIO   | M    | ANTONIO@UOL.COM     | 3423565     |
				|        33 | ELAINE    | M    | ELAINE@GLOBO.COM    | 32567763    |
				|        34 | CARMEM    | M    | CARMEM@IG.COM       | 787832213   |
				+-----------+-----------+------+---------------------+-------------+
				20 rows in set (0.03 sec)

				/*CORRIGIR DADOS DAS MULHERES QUE CONSTAM COMO HOMENS
				IDCLIENTE 27
				IDCLIENTE 28
				IDCLIENTE 29
				IDCLIENTE 33
				IDCLIENTE 34*/

						UPDATE CLIENTE
						SET SEXO='F'
						WHERE IDCLIENTE='27';

						
						UPDATE CLIENTE
						SET SEXO='F'
						WHERE IDCLIENTE='28';

						UPDATE CLIENTE
						SET SEXO='F'
						WHERE IDCLIENTE='29';

						UPDATE CLIENTE
						SET SEXO='F'
						WHERE IDCLIENTE='33';

						UPDATE CLIENTE
						SET SEXO='F'
						WHERE IDCLIENTE='34';
						
			/*UMA FORMA SIMPLIFICADA DE FAZER ESSA MUDANÇA É PELO OPERADOR 'IN':*/
			UPDATE CLIENTE SET SEXO='F'
			WHERE IDCLIENTE IN(27,28,29,33,34) 


/*
	mysql> SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA,E.BAIRRO,E.CIDADE,E.ESTADO,T.TIPO,T.NUMERO
    -> FROM CLIENTE C
    -> INNER JOIN ENDERECO E
    -> ON C.IDCLIENTE = E.ID_FK_CLIENTE
    ->
    -> INNER JOIN TELEFONE T
    -> ON C.IDCLIENTE = T.ID_FK_CLIENTE
    -> WHERE SEXO='M';
+-----------+-----------+------+---------------------+-------------+--------------------+------------+-----------------+--------+------+-----------+
| IDCLIENTE | NOME      | SEXO | EMAIL               | CPF         | RUA                | BAIRRO     | CIDADE          | ESTADO | TIPO | NUMERO    |
+-----------+-----------+------+---------------------+-------------+--------------------+------------+-----------------+--------+------+-----------+
|         1 | JOÃO      | M    | JOAO@GMAIL.COM      | 89889889898 | RUA ANTONIO SÁ     | CENTRO     | BELO HORIZONTE  | MG     | CEL  | 9898-1012 |
|         1 | JOÃO      | M    | JOAO@GMAIL.COM      | 89889889898 | RUA ANTONIO SÁ     | CENTRO     | BELO HORIZONTE  | MG     | COM  | 3698-1232 |
|         2 | CARLOS    | M    | CARLOS@GMAIL.COM    | 89889833398 | RUA PEDRO 3        | CENTRO     | CABO FRIO       | RJ     | CEL  | 2398-1222 |
|         2 | CARLOS    | M    | CARLOS@GMAIL.COM    | 89889833398 | RUA PEDRO 3        | CENTRO     | CABO FRIO       | RJ     | RES  | 9898-1012 |
|         3 | CLAUDIO   | M    | CLAUDIO@GMAIL.COM   | 89889881118 | RUA PRES VARGAS    | NORTE      | ARRAIAL DO CABO | RG     | CEL  | 9898-1012 |
|         5 | MARCO     | M    | MARCO@GMAIL.COM     | 34589889898 | RUA PEDRO 3        | CENTRO     | CABO FRIO       | RJ     | RES  | 6545-1102 |
|         6 | TERCIO    | M    | TERCIO@GMAIL.COM    | 33211988998 | RUA HERMÍNIO       | CENTRO     | CABO FRIO       | RJ     | COM  | 9898-1012 |
|         7 | SOUZA     | M    | SOUZA@GMAIL.COM     | 11189889898 | QD 409             | ASA SUL    | BRASILIA        | DF     | RES  | 9898-1012 |
|         8 | CASTRILHO | M    | CASTRILHO@GMAIL.COM | 22229889898 | RUA 8 SUL          | SUL        | ÁGUAS CLARAS    | DF     | CEL  | 9981-2233 |
|        10 | TEIXEIRA  | M    | TEIXEIRA@GMAIL.COM  | 44444889898 | RUA CARLOS PEREIRA | ARROIO     | MARANHÃO        | MA     | COM  | 3567-0101 |
|        24 | FLAVIO    | M    | FLAVIO@IG.COM       | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE    | MG     | RES  | 68976565  |
|        24 | FLAVIO    | M    | FLAVIO@IG.COM       | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE    | MG     | CEL  | 99656675  |
|        30 | EDUARDO   | M    | NULL                | 54376457    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA        | PR     | CEL  | 89966809  |
|        31 | ANTONIO   | M    | ANTONIO@IG.COM      | 12436767    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO       | SP     | COM  | 88679978  |
|        32 | ANTONIO   | M    | ANTONIO@UOL.COM     | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA        | PR     | CEL  | 99655768  |
+-----------+-----------+------+---------------------+-------------+--------------------+------------+-----------------+--------+------+-----------+
15 rows in set (0.00 sec)



/* RELATORIO  DE MULHERES */
		SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA,E.BAIRRO,E.CIDADE,E.ESTADO,T.TIPO,T.NUMERO
		FROM CLIENTE C
		INNER JOIN ENDERECO E
		ON C.IDCLIENTE = E.ID_FK_CLIENTE

		INNER JOIN TELEFONE T
		ON C.IDCLIENTE = T.ID_FK_CLIENTE
		WHERE SEXO='F';
/*
					mysql> SELECT *
						-> FROM CLIENTE
						-> WHERE SEXO='F';
					+-----------+----------+------+--------------------+-------------+
					| IDCLIENTE | NOME     | SEXO | EMAIL              | CPF         |
					+-----------+----------+------+--------------------+-------------+
					|        13 | CAMILAP  | F    | CAMILAP@GMAIL.COM  | 7777889898  |
					|        14 | CARINA   | F    | CARINA@GMAIL.COM   | 00009889898 |
					|        15 | CAROLINA | F    | CAROLINA@GMAIL.COM | 898898811   |
					|        16 | ROSA     | F    | ROSA@GMAIL.COM     | 89889811198 |
					|        17 | DUDA     | F    | DUDA@GMAIL.COM     | 89811119898 |
					|        18 | VANESSA  | F    | VANESSA@GMAIL.COM  | 83333389898 |
					|        19 | JOANA    | F    | JOANA@GMAIL.COM    | 89666669898 |
					|        20 | CLAUDIA  | F    | CLAUDIA@GMAIL.COM  | 89877889898 |
					|        21 | MARISA   | F    | MARISA@GMAIL.COM   | 89889655698 |
					|        22 | PAULA    | F    | NULL               | 77437493S   |
					|        23 | CELINA   | F    | NULL               | 34543243232 |
					|        26 | GIOVANA  | F    | NULL               | 0876655     |
					|        27 | KARLA    | F    | KARLA@GMAIL.COM    | 545676778   |
					|        28 | DANIELE  | F    | DANIELE@GMAIL.COM  | 43536789    |
					|        29 | LORENA   | F    | NULL               | 774557887   |
					|        31 | ANTONIO  | F    | ANTONIO@IG.COM     | 12436767    |
					|        33 | ELAINE   | F    | ELAINE@GLOBO.COM   | 32567763    |
					|        34 | CARMEM   | F    | CARMEM@IG.COM      | 787832213   |
					|        35 | ADRIANA  | F    | ADRIANA@GMAIL.COM  | 88556942    |
					|        36 | JOICE    | F    | JOICE@GMAIL.COM    | 55412256    |
					+-----------+----------+------+--------------------+-------------+
					20 rows in set (0.00 sec)

					/*CORRIGIR HOMENS QUE ESTÃO COM O SEXO 'F'
					IDCLIENTE 31 */


					UPDATE CLIENTE
					SET SEXO='M'
					WHERE IDCLIENTE='31';
    /*
							mysql> UPDATE CLIENTE
								-> SET SEXO='M'
								-> WHERE IDCLIENTE='31';
							Query OK, 1 row affected (0.20 sec)
							Rows matched: 1  Changed: 1  Warnings: 0
							

*/
				SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA,E.BAIRRO,E.CIDADE,E.ESTADO,T.TIPO,T.NUMERO
				FROM CLIENTE C
				INNER JOIN ENDERECO E
				ON C.IDCLIENTE = E.ID_FK_CLIENTE

				INNER JOIN TELEFONE T
				ON C.IDCLIENTE = T.ID_FK_CLIENTE
				WHERE SEXO='F';
/*		
									mysql> SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA,E.BAIRRO,E.CIDADE,E.ESTADO,T.TIPO,T.NUMERO
										-> FROM CLIENTE C
										-> INNER JOIN ENDERECO E
										-> ON C.IDCLIENTE = E.ID_FK_CLIENTE
										->
										-> INNER JOIN TELEFONE T
										-> ON C.IDCLIENTE = T.ID_FK_CLIENTE
										-> WHERE SEXO='F';
+-----------+----------+------+--------------------+-------------+--------------------+------------+----------------+--------+------+------------+
| IDCLIENTE | NOME     | SEXO | EMAIL              | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO     |
+-----------+----------+------+--------------------+-------------+--------------------+------------+----------------+--------+------+------------+
|        13 | CAMILAP  | F    | CAMILAP@GMAIL.COM  | 7777889898  | QE 01              | GUARÁ      | BRASÍLIA       | DF     | CEL  | 8398-0000  |
|        14 | CARINA   | F    | CARINA@GMAIL.COM   | 00009889898 | RUA CEARÁ 123      | CENTRO     | CABO FRIO      | RJ     | RES  | 8198-1012  |
|        15 | CAROLINA | F    | CAROLINA@GMAIL.COM | 898898811   | RUA PEREIRA MATOS  | CENTRO     | BELO HORIZONTE | MG     | CEL  | 8734-9090  |
|        15 | CAROLINA | F    | CAROLINA@GMAIL.COM | 898898811   | RUA PEREIRA MATOS  | CENTRO     | BELO HORIZONTE | MG     | RES  | 9655-1106  |
|        16 | ROSA     | F    | ROSA@GMAIL.COM     | 89889811198 | QUADRA 345         | CENTRO     | BELO HORIZONTE | MG     | COM  | 87658-1111 |
|        18 | VANESSA  | F    | VANESSA@GMAIL.COM  | 83333389898 | RUA SERGIO LOPES   | MARISCAL   | BELÉM          | PA     | RES  | 8767-4542  |
|        20 | CLAUDIA  | F    | CLAUDIA@GMAIL.COM  | 89877889898 | RUA WE 4           | CENTRO     | ANANIDNEUA     | PA     | CEL  | 8343-0101  |
|        20 | CLAUDIA  | F    | CLAUDIA@GMAIL.COM  | 89877889898 | RUA WE 4           | CENTRO     | ANANIDNEUA     | PA     | COM  | 4343-1000  |
|        26 | GIOVANA  | F    | NULL               | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765   |
|        26 | GIOVANA  | F    | NULL               | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786   |
|        26 | GIOVANA  | F    | NULL               | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654   |
|        27 | KARLA    | F    | KARLA@GMAIL.COM    | 545676778   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979   |
|        28 | DANIELE  | F    | DANIELE@GMAIL.COM  | 43536789    | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676   |
|        33 | ELAINE   | F    | ELAINE@GLOBO.COM   | 32567763    | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665   |
|        34 | CARMEM   | F    | CARMEM@IG.COM      | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786   |
|        34 | CARMEM   | F    | CARMEM@IG.COM      | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554   |
|        35 | ADRIANA  | F    | ADRIANA@GMAIL.COM  | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785   |
|        35 | ADRIANA  | F    | ADRIANA@GMAIL.COM  | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578   |
+-----------+----------+------+--------------------+-------------+--------------------+------------+----------------+--------+------+------------+
18 rows in set (0.00 sec)


/*QTDD DE HOMENS E MULHERES*/

			SELECT COUNT(*) AS QUANTIDADE,SEXO
			FROM CLIENTE
			GROUP BY SEXO;
/*
						mysql> SELECT COUNT(*) AS QUANTIDADE,SEXO
							-> FROM CLIENTE
							-> GROUP BY SEXO;
						+------------+------+
						| QUANTIDADE | SEXO |
						+------------+------+
						|         16 | M    |
						|         19 | F    |
						+------------+------+
						2 rows in set (0.02 sec)

/* IDS E EMAIL DAS MULHERES QUE MOREM NO CENTRO DO RJ E NÃO TENHAM CELULAR*/

		SELECT C.IDCLIENTE, C.EMAIL, T.TIPO  
		FROM CLIENTE C
			INNER JOIN TELEFONE T
			ON C.IDCLIENTE = T.ID_FK_CLIENTE
 
			INNER JOIN ENDERECO E
			ON C.IDCLIENTE = E.ID_FK_CLIENTE
			WHERE T.TIPO<>'CEL' AND
			C.SEXO='F' AND
			E.BAIRRO='CENTRO' AND 
			E.CIDADE='RIO DE JANEIRO';
/*

							mysql> SELECT C.IDCLIENTE, C.EMAIL, E.BAIRRO, T.TIPO
							-> FROM CLIENTE C
							-> INNER JOIN TELEFONE T
							-> ON C.IDCLIENTE = T.ID_FK_CLIENTE
							->
							-> INNER JOIN ENDERECO E
							-> ON C.IDCLIENTE = E.ID_FK_CLIENTE
							-> WHERE T.TIPO<>'CEL' AND
							-> C.SEXO='F' AND
							-> E.BAIRRO='CENTRO' AND
							-> E.CIDADE='RIO DE JANEIRO';
						+-----------+-------------------+--------+------+
						| IDCLIENTE | EMAIL             | BAIRRO | TIPO |
						+-----------+-------------------+--------+------+
						|        26 | NULL              | CENTRO | COM  |
						|        34 | CARMEM@IG.COM     | CENTRO | RES  |
						|        34 | CARMEM@IG.COM     | CENTRO | RES  |
						|        35 | ADRIANA@GMAIL.COM | CENTRO | RES  |
						|        35 | ADRIANA@GMAIL.COM | CENTRO | COM  |
						+-----------+-------------------+--------+------+
						5 rows in set (0.00 sec)



	mysql> SELECT C.IDCLIENTE, C.EMAIL
    -> FROM CLIENTE C
    -> INNER JOIN TELEFONE T
    -> ON C.IDCLIENTE = T.ID_FK_CLIENTE
    ->
    -> INNER JOIN ENDERECO E
    -> ON C.IDCLIENTE = E.ID_FK_CLIENTE
    -> WHERE T.TIPO<>'CEL' AND
    -> C.SEXO='F' AND
    -> E.BAIRRO='CENTRO' AND
    -> E.CIDADE='RIO DE JANEIRO';
+-----------+-------------------+
| IDCLIENTE | EMAIL             |
+-----------+-------------------+
|        26 | NULL              |
|        34 | CARMEM@IG.COM     |
|        34 | CARMEM@IG.COM     |
|        35 | ADRIANA@GMAIL.COM |
|        35 | ADRIANA@GMAIL.COM |
+-----------+-------------------+
5 rows in set (0.00 sec)



**************************************************************************************************
**************************************************************************************************
**************************************************************************************************
**************************************************************************************************

FUNÇÕES - bloco de programação que executa alguma coisa.

exemplo - SELECT NOW(); - é uma função qeu traz a informaçõ de data


criando uma função QUE retorne nome, email, estado e número telefone:

MONTANDO A querry: */
		SELECT C.NOME,C.EMAIL,E.ESTADO,T.NUMERO
		FROM CLIENTE C
		INNER JOIN ENDERECO E
		ON C.IDCLIENTE=E.ID_FK_CLIENTE
		INNER JOIN TELEFONE T
		ON C.IDCLIENTE = T.ID_FK_CLIENTE;
/*
					mysql> SELECT C.NOME,C.EMAIL,E.ESTADO,T.NUMERO
						-> FROM CLIENTE C
						-> INNER JOIN ENDERECO E
						-> ON C.IDCLIENTE=E.ID_FK_CLIENTE
						-> INNER JOIN TELEFONE T
						-> ON C.IDCLIENTE = T.ID_FK_CLIENTE;
					+-----------+---------------------+--------+------------+
					| NOME      | EMAIL               | ESTADO | NUMERO     |
					+-----------+---------------------+--------+------------+
					| JOÃO      | JOAO@GMAIL.COM      | MG     | 9898-1012  |
					| JOÃO      | JOAO@GMAIL.COM      | MG     | 3698-1232  |
					| CARLOS    | CARLOS@GMAIL.COM    | RJ     | 2398-1222  |
					| CARLOS    | CARLOS@GMAIL.COM    | RJ     | 9898-1012  |
					| CLAUDIO   | CLAUDIO@GMAIL.COM   | RG     | 9898-1012  |
					| MARCO     | MARCO@GMAIL.COM     | RJ     | 6545-1102  |
					| TERCIO    | TERCIO@GMAIL.COM    | RJ     | 9898-1012  |
					| SOUZA     | SOUZA@GMAIL.COM     | DF     | 9898-1012  |
					| CASTRILHO | CASTRILHO@GMAIL.COM | DF     | 9981-2233  |
					| TEIXEIRA  | TEIXEIRA@GMAIL.COM  | MA     | 3567-0101  |
					| CAMILAP   | CAMILAP@GMAIL.COM   | DF     | 8398-0000  |
					| CARINA    | CARINA@GMAIL.COM    | RJ     | 8198-1012  |
					| CAROLINA  | CAROLINA@GMAIL.COM  | MG     | 8734-9090  |
					| CAROLINA  | CAROLINA@GMAIL.COM  | MG     | 9655-1106  |
					| ROSA      | ROSA@GMAIL.COM      | MG     | 87658-1111 |
					| VANESSA   | VANESSA@GMAIL.COM   | PA     | 8767-4542  |
					| CLAUDIA   | CLAUDIA@GMAIL.COM   | PA     | 8343-0101  |
					| CLAUDIA   | CLAUDIA@GMAIL.COM   | PA     | 4343-1000  |
					| FLAVIO    | FLAVIO@IG.COM       | MG     | 68976565   |
					| FLAVIO    | FLAVIO@IG.COM       | MG     | 99656675   |
					| GIOVANA   | NULL                | RJ     | 33567765   | /* ESSA FORMA TRAZ NO RELATÓRIO O NULL 
					| GIOVANA   | NULL                | RJ     | 88668786   | /*ISSO DESQUALIFICA A TABELA  
					| GIOVANA   | NULL                | RJ     | 55689654   | /* VAMOS USAR UMA FUNÇÃO PARA MUDAR A MENSAGEM 
					| KARLA     | KARLA@GMAIL.COM     | RJ     | 88687979   |
					| DANIELE   | DANIELE@GMAIL.COM   | ES     | 88965676   |
					| EDUARDO   | NULL                | PR     | 89966809   |
					| ANTONIO   | ANTONIO@IG.COM      | SP     | 88679978   |
					| ANTONIO   | ANTONIO@UOL.COM     | PR     | 99655768   |
					| ELAINE    | ELAINE@GLOBO.COM    | SP     | 89955665   |
					| CARMEM    | CARMEM@IG.COM       | RJ     | 77455786   |
					| CARMEM    | CARMEM@IG.COM       | RJ     | 89766554   |
					| ADRIANA   | ADRIANA@GMAIL.COM   | RJ     | 77755785   |
					| ADRIANA   | ADRIANA@GMAIL.COM   | RJ     | 44522578   |
					+-----------+---------------------+--------+------------+
					33 rows in set (0.00 sec)


ALTERANDO O QUE ESTÁ NULL
*/
		SELECT 	C.NOME,
				IFNULL(C.EMAIL, 'NÃO TEM EMAIL'),
				E.ESTADO,
				T.NUMERO
		FROM CLIENTE C
		INNER JOIN ENDERECO E
		ON C.IDCLIENTE=E.ID_FK_CLIENTE
		INNER JOIN TELEFONE T
		ON C.IDCLIENTE = T.ID_FK_CLIENTE;
/*
					mysql> SELECT C.NOME,
						-> IFNULL(C.EMAIL, 'NÃO TEM EMAIL'),
						-> E.ESTADO,
						-> T.NUMERO
						-> FROM CLIENTE C
						-> INNER JOIN ENDERECO E
						-> ON C.IDCLIENTE=E.ID_FK_CLIENTE
						-> INNER JOIN TELEFONE T
						-> ON C.IDCLIENTE = T.ID_FK_CLIENTE;
					+-----------+-----------------------------------+--------+------------+
					| NOME      | IFNULL(C.EMAIL, 'NÃO TEM EMAIL')  | ESTADO | NUMERO     |
					+-----------+-----------------------------------+--------+------------+
					| JOÃO      | JOAO@GMAIL.COM                    | MG     | 9898-1012  |
					| JOÃO      | JOAO@GMAIL.COM                    | MG     | 3698-1232  |
					| CARLOS    | CARLOS@GMAIL.COM                  | RJ     | 2398-1222  |
					| CARLOS    | CARLOS@GMAIL.COM                  | RJ     | 9898-1012  |
					| CLAUDIO   | CLAUDIO@GMAIL.COM                 | RG     | 9898-1012  |
					| MARCO     | MARCO@GMAIL.COM                   | RJ     | 6545-1102  |
					| TERCIO    | TERCIO@GMAIL.COM                  | RJ     | 9898-1012  |
					| SOUZA     | SOUZA@GMAIL.COM                   | DF     | 9898-1012  |
					| CASTRILHO | CASTRILHO@GMAIL.COM               | DF     | 9981-2233  |
					| TEIXEIRA  | TEIXEIRA@GMAIL.COM                | MA     | 3567-0101  |
					| CAMILAP   | CAMILAP@GMAIL.COM                 | DF     | 8398-0000  |
					| CARINA    | CARINA@GMAIL.COM                  | RJ     | 8198-1012  |
					| CAROLINA  | CAROLINA@GMAIL.COM                | MG     | 8734-9090  |
					| CAROLINA  | CAROLINA@GMAIL.COM                | MG     | 9655-1106  |
					| ROSA      | ROSA@GMAIL.COM                    | MG     | 87658-1111 |
					| VANESSA   | VANESSA@GMAIL.COM                 | PA     | 8767-4542  |
					| CLAUDIA   | CLAUDIA@GMAIL.COM                 | PA     | 8343-0101  |
					| CLAUDIA   | CLAUDIA@GMAIL.COM                 | PA     | 4343-1000  |
					| FLAVIO    | FLAVIO@IG.COM                     | MG     | 68976565   |
					| FLAVIO    | FLAVIO@IG.COM                     | MG     | 99656675   |
					| GIOVANA   | NÃO TEM EMAIL                     | RJ     | 33567765   |
					| GIOVANA   | NÃO TEM EMAIL                     | RJ     | 88668786   |
					| GIOVANA   | NÃO TEM EMAIL                     | RJ     | 55689654   |
					| KARLA     | KARLA@GMAIL.COM                   | RJ     | 88687979   |
					| DANIELE   | DANIELE@GMAIL.COM                 | ES     | 88965676   |
					| EDUARDO   | NÃO TEM EMAIL                     | PR     | 89966809   |
					| ANTONIO   | ANTONIO@IG.COM                    | SP     | 88679978   |
					| ANTONIO   | ANTONIO@UOL.COM                   | PR     | 99655768   |
					| ELAINE    | ELAINE@GLOBO.COM                  | SP     | 89955665   |
					| CARMEM    | CARMEM@IG.COM                     | RJ     | 77455786   |
					| CARMEM    | CARMEM@IG.COM                     | RJ     | 89766554   |
					| ADRIANA   | ADRIANA@GMAIL.COM                 | RJ     | 77755785   |
					| ADRIANA   | ADRIANA@GMAIL.COM                 | RJ     | 44522578   |
					+-----------+-----------------------------------+--------+------------+
					33 rows in set (0.09 sec)

				ARRUMANDO O CABEÇALHO:*/

		SELECT 	C.NOME,
				IFNULL(C.EMAIL, 'NÃO TEM EMAIL') AS EMAIL,
				E.ESTADO,
				T.NUMERO
		FROM CLIENTE C
		INNER JOIN ENDERECO E
		ON C.IDCLIENTE=E.ID_FK_CLIENTE
		INNER JOIN TELEFONE T
		ON C.IDCLIENTE = T.ID_FK_CLIENTE;

/*
					mysql> SELECT C.NOME,
						-> IFNULL(C.EMAIL, 'NÃO TEM EMAIL') AS EMAIL,
						-> E.ESTADO,
						-> T.NUMERO
						-> FROM CLIENTE C
						-> INNER JOIN ENDERECO E
						-> ON C.IDCLIENTE=E.ID_FK_CLIENTE
						-> INNER JOIN TELEFONE T
						-> ON C.IDCLIENTE = T.ID_FK_CLIENTE;
							+-----------+---------------------+--------+------------+
							| NOME      | EMAIL               | ESTADO | NUMERO     |
							+-----------+---------------------+--------+------------+
							| JOÃO      | JOAO@GMAIL.COM      | MG     | 9898-1012  |
							| JOÃO      | JOAO@GMAIL.COM      | MG     | 3698-1232  |
							| CARLOS    | CARLOS@GMAIL.COM    | RJ     | 2398-1222  |
							| CARLOS    | CARLOS@GMAIL.COM    | RJ     | 9898-1012  |
							| CLAUDIO   | CLAUDIO@GMAIL.COM   | RG     | 9898-1012  |
							| MARCO     | MARCO@GMAIL.COM     | RJ     | 6545-1102  |
							| TERCIO    | TERCIO@GMAIL.COM    | RJ     | 9898-1012  |
							| SOUZA     | SOUZA@GMAIL.COM     | DF     | 9898-1012  |
							| CASTRILHO | CASTRILHO@GMAIL.COM | DF     | 9981-2233  |
							| TEIXEIRA  | TEIXEIRA@GMAIL.COM  | MA     | 3567-0101  |
							| CAMILAP   | CAMILAP@GMAIL.COM   | DF     | 8398-0000  |
							| CARINA    | CARINA@GMAIL.COM    | RJ     | 8198-1012  |
							| CAROLINA  | CAROLINA@GMAIL.COM  | MG     | 8734-9090  |
							| CAROLINA  | CAROLINA@GMAIL.COM  | MG     | 9655-1106  |
							| ROSA      | ROSA@GMAIL.COM      | MG     | 87658-1111 |
							| VANESSA   | VANESSA@GMAIL.COM   | PA     | 8767-4542  |
							| CLAUDIA   | CLAUDIA@GMAIL.COM   | PA     | 8343-0101  |
							| CLAUDIA   | CLAUDIA@GMAIL.COM   | PA     | 4343-1000  |
							| FLAVIO    | FLAVIO@IG.COM       | MG     | 68976565   |
							| FLAVIO    | FLAVIO@IG.COM       | MG     | 99656675   |
							| GIOVANA   | NÃO TEM EMAIL       | RJ     | 33567765   |
							| GIOVANA   | NÃO TEM EMAIL       | RJ     | 88668786   |
							| GIOVANA   | NÃO TEM EMAIL       | RJ     | 55689654   |
							| KARLA     | KARLA@GMAIL.COM     | RJ     | 88687979   |
							| DANIELE   | DANIELE@GMAIL.COM   | ES     | 88965676   |
							| EDUARDO   | NÃO TEM EMAIL       | PR     | 89966809   |
							| ANTONIO   | ANTONIO@IG.COM      | SP     | 88679978   |
							| ANTONIO   | ANTONIO@UOL.COM     | PR     | 99655768   |
							| ELAINE    | ELAINE@GLOBO.COM    | SP     | 89955665   |
							| CARMEM    | CARMEM@IG.COM       | RJ     | 77455786   |
							| CARMEM    | CARMEM@IG.COM       | RJ     | 89766554   |
							| ADRIANA   | ADRIANA@GMAIL.COM   | RJ     | 77755785   |
							| ADRIANA   | ADRIANA@GMAIL.COM   | RJ     | 44522578   |
							+-----------+---------------------+--------+------------+
							33 rows in set (0.00 sec)



**************************************************************************************************
**************************************************************************************************
**************************************************************************************************
**************************************************************************************************
CRIANDO VIEW */
				SELECT C.NOME, C.SEXO, C.EMAIL, T.TIPO, T.NUMERO, E.BAIRRO, E.CIDADE, E.ESTADO
				FROM CLIENTE C
				INNER JOIN TELEFONE T
				ON C.IDCLIENTE = T.ID_FK_CLIENTE
				INNER JOIN ENDERECO E
				ON C.IDCLIENTE = E.ID_FK_CLIENTE;

/*
						mysql> SELECT C.NOME, C.SEXO, C.EMAIL, T.TIPO, T.NUMERO, E.BAIRRO, E.CIDADE, E.ESTADO
						-> FROM CLIENTE C
						-> INNER JOIN TELEFONE T
						-> ON C.IDCLIENTE = T.ID_FK_CLIENTE
						-> INNER JOIN ENDERECO E
						-> ON C.IDCLIENTE = E.ID_FK_CLIENTE;
					+-----------+------+---------------------+------+------------+------------+-----------------+--------+
					| NOME      | SEXO | EMAIL               | TIPO | NUMERO     | BAIRRO     | CIDADE          | ESTADO |
					+-----------+------+---------------------+------+------------+------------+-----------------+--------+
					| JOÃO      | M    | JOAO@GMAIL.COM      | CEL  | 9898-1012  | CENTRO     | BELO HORIZONTE  | MG     |
					| JOÃO      | M    | JOAO@GMAIL.COM      | COM  | 3698-1232  | CENTRO     | BELO HORIZONTE  | MG     |
					| CARLOS    | M    | CARLOS@GMAIL.COM    | CEL  | 2398-1222  | CENTRO     | CABO FRIO       | RJ     |
					| CARLOS    | M    | CARLOS@GMAIL.COM    | RES  | 9898-1012  | CENTRO     | CABO FRIO       | RJ     |
					| CLAUDIO   | M    | CLAUDIO@GMAIL.COM   | CEL  | 9898-1012  | NORTE      | ARRAIAL DO CABO | RG     |
					| MARCO     | M    | MARCO@GMAIL.COM     | RES  | 6545-1102  | CENTRO     | CABO FRIO       | RJ     |
					| TERCIO    | M    | TERCIO@GMAIL.COM    | COM  | 9898-1012  | CENTRO     | CABO FRIO       | RJ     |
					| SOUZA     | M    | SOUZA@GMAIL.COM     | RES  | 9898-1012  | ASA SUL    | BRASILIA        | DF     |
					| CASTRILHO | M    | CASTRILHO@GMAIL.COM | CEL  | 9981-2233  | SUL        | ÁGUAS CLARAS    | DF     |
					| TEIXEIRA  | M    | TEIXEIRA@GMAIL.COM  | COM  | 3567-0101  | ARROIO     | MARANHÃO        | MA     |
					| CAMILAP   | F    | CAMILAP@GMAIL.COM   | CEL  | 8398-0000  | GUARÁ      | BRASÍLIA        | DF     |
					| CARINA    | F    | CARINA@GMAIL.COM    | RES  | 8198-1012  | CENTRO     | CABO FRIO       | RJ     |
					| CAROLINA  | F    | CAROLINA@GMAIL.COM  | CEL  | 8734-9090  | CENTRO     | BELO HORIZONTE  | MG     |
					| CAROLINA  | F    | CAROLINA@GMAIL.COM  | RES  | 9655-1106  | CENTRO     | BELO HORIZONTE  | MG     |
					| ROSA      | F    | ROSA@GMAIL.COM      | COM  | 87658-1111 | CENTRO     | BELO HORIZONTE  | MG     |
					| VANESSA   | F    | VANESSA@GMAIL.COM   | RES  | 8767-4542  | MARISCAL   | BELÉM           | PA     |
					| CLAUDIA   | F    | CLAUDIA@GMAIL.COM   | CEL  | 8343-0101  | CENTRO     | ANANIDNEUA      | PA     |
					| CLAUDIA   | F    | CLAUDIA@GMAIL.COM   | COM  | 4343-1000  | CENTRO     | ANANIDNEUA      | PA     |
					| FLAVIO    | M    | FLAVIO@IG.COM       | RES  | 68976565   | CASCADURA  | B. HORIZONTE    | MG     |
					| FLAVIO    | M    | FLAVIO@IG.COM       | CEL  | 99656675   | CASCADURA  | B. HORIZONTE    | MG     |
					| GIOVANA   | F    | NULL                | CEL  | 33567765   | CENTRO     | RIO DE JANEIRO  | RJ     |
					| GIOVANA   | F    | NULL                | CEL  | 88668786   | CENTRO     | RIO DE JANEIRO  | RJ     |
					| GIOVANA   | F    | NULL                | COM  | 55689654   | CENTRO     | RIO DE JANEIRO  | RJ     |
					| KARLA     | F    | KARLA@GMAIL.COM     | COM  | 88687979   | COPACABANA | RIO DE JANEIRO  | RJ     |
					| DANIELE   | F    | DANIELE@GMAIL.COM   | COM  | 88965676   | CENTRO     | VITORIA         | ES     |
					| EDUARDO   | M    | NULL                | CEL  | 89966809   | CENTRO     | CURITIBA        | PR     |
					| ANTONIO   | M    | ANTONIO@IG.COM      | COM  | 88679978   | JARDINS    | SAO PAULO       | SP     |
					| ANTONIO   | M    | ANTONIO@UOL.COM     | CEL  | 99655768   | BOM RETIRO | CURITIBA        | PR     |
					| ELAINE    | F    | ELAINE@GLOBO.COM    | RES  | 89955665   | LAPA       | SAO PAULO       | SP     |
					| CARMEM    | F    | CARMEM@IG.COM       | RES  | 77455786   | CENTRO     | RIO DE JANEIRO  | RJ     |
					| CARMEM    | F    | CARMEM@IG.COM       | RES  | 89766554   | CENTRO     | RIO DE JANEIRO  | RJ     |
					| ADRIANA   | F    | ADRIANA@GMAIL.COM   | RES  | 77755785   | CENTRO     | RIO DE JANEIRO  | RJ     |
					| ADRIANA   | F    | ADRIANA@GMAIL.COM   | COM  | 44522578   | CENTRO     | RIO DE JANEIRO  | RJ     |
					+-----------+------+---------------------+------+------------+------------+-----------------+--------+
					33 rows in set (0.00 sec)


IMAGINE QUE VC TODO DIA TEM A NECXESSIDADE DE MANDAR ESSE DADOS PARA ALGUÉM. 
NO LUGAR DE ENVIAR A QUERRY TODO DIA, BASTA CRIAR UAM VIEW :

			FUNÇÃO:*/

						CREATE VIEW RELATORIO AS
						SELECT 	C.NOME,
								C.SEXO, 
								C.EMAIL, 
								T.TIPO, 
								T.NUMERO, 
								E.BAIRRO, 
								E.CIDADE, 
								E.ESTADO
						FROM CLIENTE C
						INNER JOIN TELEFONE T
						ON C.IDCLIENTE = T.ID_FK_CLIENTE
						INNER JOIN ENDERECO E
						ON C.IDCLIENTE = E.ID_FK_CLIENTE;
/*
							mysql> CREATE VIEW RELATORIO AS
								-> SELECT C.NOME,
								-> C.SEXO,
								-> C.EMAIL,
								-> T.TIPO,
								-> T.NUMERO,
								-> E.BAIRRO,
								-> E.CIDADE,
								-> E.ESTADO
								-> FROM CLIENTE C
								-> INNER JOIN TELEFONE T
								-> ON C.IDCLIENTE = T.ID_FK_CLIENTE
								-> INNER JOIN ENDERECO E
								-> ON C.IDCLIENTE = E.ID_FK_CLIENTE;
							Query OK, 0 rows affected (0.09 sec)

					mysql> SELECT * FROM RELATORIO;
					+-----------+------+---------------------+------+------------+------------+-----------------+--------+
					| NOME      | SEXO | EMAIL               | TIPO | NUMERO     | BAIRRO     | CIDADE          | ESTADO |
					+-----------+------+---------------------+------+------------+------------+-----------------+--------+
					| JOÃO      | M    | JOAO@GMAIL.COM      | CEL  | 9898-1012  | CENTRO     | BELO HORIZONTE  | MG     |
					| JOÃO      | M    | JOAO@GMAIL.COM      | COM  | 3698-1232  | CENTRO     | BELO HORIZONTE  | MG     |
					| CARLOS    | M    | CARLOS@GMAIL.COM    | CEL  | 2398-1222  | CENTRO     | CABO FRIO       | RJ     |
					| CARLOS    | M    | CARLOS@GMAIL.COM    | RES  | 9898-1012  | CENTRO     | CABO FRIO       | RJ     |
					| CLAUDIO   | M    | CLAUDIO@GMAIL.COM   | CEL  | 9898-1012  | NORTE      | ARRAIAL DO CABO | RG     |
					| MARCO     | M    | MARCO@GMAIL.COM     | RES  | 6545-1102  | CENTRO     | CABO FRIO       | RJ     |
					| TERCIO    | M    | TERCIO@GMAIL.COM    | COM  | 9898-1012  | CENTRO     | CABO FRIO       | RJ     |
					| SOUZA     | M    | SOUZA@GMAIL.COM     | RES  | 9898-1012  | ASA SUL    | BRASILIA        | DF     |
					| CASTRILHO | M    | CASTRILHO@GMAIL.COM | CEL  | 9981-2233  | SUL        | ÁGUAS CLARAS    | DF     |
					| TEIXEIRA  | M    | TEIXEIRA@GMAIL.COM  | COM  | 3567-0101  | ARROIO     | MARANHÃO        | MA     |
					| CAMILAP   | F    | CAMILAP@GMAIL.COM   | CEL  | 8398-0000  | GUARÁ      | BRASÍLIA        | DF     |
					| CARINA    | F    | CARINA@GMAIL.COM    | RES  | 8198-1012  | CENTRO     | CABO FRIO       | RJ     |
					| CAROLINA  | F    | CAROLINA@GMAIL.COM  | CEL  | 8734-9090  | CENTRO     | BELO HORIZONTE  | MG     |
					| CAROLINA  | F    | CAROLINA@GMAIL.COM  | RES  | 9655-1106  | CENTRO     | BELO HORIZONTE  | MG     |
					| ROSA      | F    | ROSA@GMAIL.COM      | COM  | 87658-1111 | CENTRO     | BELO HORIZONTE  | MG     |
					| VANESSA   | F    | VANESSA@GMAIL.COM   | RES  | 8767-4542  | MARISCAL   | BELÉM           | PA     |
					| CLAUDIA   | F    | CLAUDIA@GMAIL.COM   | CEL  | 8343-0101  | CENTRO     | ANANIDNEUA      | PA     |
					| CLAUDIA   | F    | CLAUDIA@GMAIL.COM   | COM  | 4343-1000  | CENTRO     | ANANIDNEUA      | PA     |
					| FLAVIO    | M    | FLAVIO@IG.COM       | RES  | 68976565   | CASCADURA  | B. HORIZONTE    | MG     |
					| FLAVIO    | M    | FLAVIO@IG.COM       | CEL  | 99656675   | CASCADURA  | B. HORIZONTE    | MG     |
					| GIOVANA   | F    | NULL                | CEL  | 33567765   | CENTRO     | RIO DE JANEIRO  | RJ     |
					| GIOVANA   | F    | NULL                | CEL  | 88668786   | CENTRO     | RIO DE JANEIRO  | RJ     |
					| GIOVANA   | F    | NULL                | COM  | 55689654   | CENTRO     | RIO DE JANEIRO  | RJ     |
					| KARLA     | F    | KARLA@GMAIL.COM     | COM  | 88687979   | COPACABANA | RIO DE JANEIRO  | RJ     |
					| DANIELE   | F    | DANIELE@GMAIL.COM   | COM  | 88965676   | CENTRO     | VITORIA         | ES     |
					| EDUARDO   | M    | NULL                | CEL  | 89966809   | CENTRO     | CURITIBA        | PR     |
					| ANTONIO   | M    | ANTONIO@IG.COM      | COM  | 88679978   | JARDINS    | SAO PAULO       | SP     |
					| ANTONIO   | M    | ANTONIO@UOL.COM     | CEL  | 99655768   | BOM RETIRO | CURITIBA        | PR     |
					| ELAINE    | F    | ELAINE@GLOBO.COM    | RES  | 89955665   | LAPA       | SAO PAULO       | SP     |
					| CARMEM    | F    | CARMEM@IG.COM       | RES  | 77455786   | CENTRO     | RIO DE JANEIRO  | RJ     |
					| CARMEM    | F    | CARMEM@IG.COM       | RES  | 89766554   | CENTRO     | RIO DE JANEIRO  | RJ     |
					| ADRIANA   | F    | ADRIANA@GMAIL.COM   | RES  | 77755785   | CENTRO     | RIO DE JANEIRO  | RJ     |
					| ADRIANA   | F    | ADRIANA@GMAIL.COM   | COM  | 44522578   | CENTRO     | RIO DE JANEIRO  | RJ     |
					+-----------+------+---------------------+------+------------+------------+-----------------+--------+
					33 rows in set (0.09 sec)


					APAGANDO UM VIEW: */
					DROP VIEW RELATORIO;
/*
mysql> DROP VIEW RELATORIO;
Query OK, 0 rows affected (0.00 sec)

mysql> SHOW TABLES;
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| produto            |
| telefone           |
+--------------------+
4 rows in set (0.01 sec)


	CRIAR NOVAMENTE (SEMPRE USAR "V_" PARA DETERMINAR QUE É UMA VIEW) */
CREATE VIEW V_RELATORIO AS
						SELECT 	C.NOME,
								C.SEXO, 
								C.EMAIL, 
								T.TIPO, 
								T.NUMERO, 
								E.BAIRRO, 
								E.CIDADE, 
								E.ESTADO
						FROM CLIENTE C
						INNER JOIN TELEFONE T
						ON C.IDCLIENTE = T.ID_FK_CLIENTE
						INNER JOIN ENDERECO E
						ON C.IDCLIENTE = E.ID_FK_CLIENTE;
/*

			mysql> CREATE VIEW V_RELATORIO AS
				-> SELECT C.NOME,
				-> C.SEXO,
				-> C.EMAIL,
				-> T.TIPO,
				-> T.NUMERO,
				-> E.BAIRRO,
				-> E.CIDADE,
				-> E.ESTADO
				-> FROM CLIENTE C
				-> INNER JOIN TELEFONE T
				-> ON C.IDCLIENTE = T.ID_FK_CLIENTE
				-> INNER JOIN ENDERECO E
				-> ON C.IDCLIENTE = E.ID_FK_CLIENTE;
			Query OK, 0 rows affected (0.11 sec)

			mysql> SHOW TABLES;
			+--------------------+
			| Tables_in_comercio |
			+--------------------+
			| cliente            |
			| endereco           |
			| produto            |
			| telefone           |
			| v_relatorio        |
			+--------------------+
			5 rows in set (0.00 sec)


- PODEMOS FAZER QUERRYES NO VIEW CRIADO:*/

	SELECT NOME, SEXO, BAIRRO
	FROM V_RELATORIO;
/*
	mysql> SELECT NOME, SEXO, BAIRRO
    -> FROM V_RELATORIO;
+-----------+------+------------+
| NOME      | SEXO | BAIRRO     |
+-----------+------+------------+
| JOÃO      | M    | CENTRO     |
| JOÃO      | M    | CENTRO     |
| CARLOS    | M    | CENTRO     |
| CARLOS    | M    | CENTRO     |
| CLAUDIO   | M    | NORTE      |
| MARCO     | M    | CENTRO     |
| TERCIO    | M    | CENTRO     |
| SOUZA     | M    | ASA SUL    |
| CASTRILHO | M    | SUL        |
| TEIXEIRA  | M    | ARROIO     |
| CAMILAP   | F    | GUARÁ      |
| CARINA    | F    | CENTRO     |
| CAROLINA  | F    | CENTRO     |
| CAROLINA  | F    | CENTRO     |
| ROSA      | F    | CENTRO     |
| VANESSA   | F    | MARISCAL   |
| CLAUDIA   | F    | CENTRO     |
| CLAUDIA   | F    | CENTRO     |
| FLAVIO    | M    | CASCADURA  |
| FLAVIO    | M    | CASCADURA  |
| GIOVANA   | F    | CENTRO     |
| GIOVANA   | F    | CENTRO     |
| GIOVANA   | F    | CENTRO     |
| KARLA     | F    | COPACABANA |
| DANIELE   | F    | CENTRO     |
| EDUARDO   | M    | CENTRO     |
| ANTONIO   | M    | JARDINS    |
| ANTONIO   | M    | BOM RETIRO |
| ELAINE    | F    | LAPA       |
| CARMEM    | F    | CENTRO     |
| CARMEM    | F    | CENTRO     |
| ADRIANA   | F    | CENTRO     |
| ADRIANA   | F    | CENTRO     |
+-----------+------+------------+
33 rows in set (0.00 sec)



/*UPDATE, INSERT e DELETE 
VIEWS COM JOINS		- NÃO É POSSÍVEL INSERT E DELETE de VIEW COM JOIN
					- MAS É POSSÍVEL FAZER UPDATE DE VIEWS COM JOINS.

VIEWS SEM JOINS		- É POSSÍVEL INSERT, DELETE E UPDATE de VIEW COM JOIN - mas não é muito recomendado por causa dos campos com restrições.

 
**************************************************************************************************
**************************************************************************************************
**************************************************************************************************
ORDENANDO DADOS
ORDER BY */
	CREATE TABLE ALUNOS (
		NUMERO INT,
		NOME VARCHAR(30)
	);

/*			FAZER ISERTS: */
				INSERT INTO ALUNOS VALUES(1,'JOÃO');
				INSERT INTO ALUNOS VALUES(1,'PEDRO');	 
				INSERT INTO ALUNOS VALUES(1,'CELSO');
				INSERT INTO ALUNOS VALUES(2,'CARLA');
				INSERT INTO ALUNOS VALUES(2,'CESAR');	 
				INSERT INTO ALUNOS VALUES(2,'JOANA');
				INSERT INTO ALUNOS VALUES(3,'CELIA');
				INSERT INTO ALUNOS VALUES(3,'MARCIO');	 
				INSERT INTO ALUNOS VALUES(3,'LORA');
				INSERT INTO ALUNOS VALUES(4,'DUDA');
				INSERT INTO ALUNOS VALUES(4,'THIAGO');	 
				INSERT INTO ALUNOS VALUES(4,'CLAUDIA');
				INSERT INTO ALUNOS VALUES(5,'TEREZA');
				INSERT INTO ALUNOS VALUES(5,'ANA');	 
				INSERT INTO ALUNOS VALUES(5,'VALTER');
				INSERT INTO ALUNOS VALUES(6,'ANA CLARA');
				INSERT INTO ALUNOS VALUES(6,'CELINHA');	 
				INSERT INTO ALUNOS VALUES(6,'TIÃO');

		SELECT * FROM ALUNOS
		ORDER BY NUMERO;
  /*      
					mysql> SELECT * FROM ALUNOS
						-> ORDER BY NUMERO;
					+--------+-----------+
					| NUMERO | NOME      |
					+--------+-----------+
					|      1 | JOÃO      |
					|      1 | PEDRO     |
					|      1 | CELSO     |
					|      2 | CARLA     |
					|      2 | CESAR     |
					|      2 | JOANA     |
					|      3 | CELIA     |
					|      3 | MARCIO    |
					|      3 | LORA      |
					|      4 | DUDA      |
					|      4 | THIAGO    |
					|      4 | CLAUDIA   |
					|      5 | TEREZA    |
					|      5 | ANA       |
					|      5 | VALTER    |
					|      6 | ANA CLARA |
					|      6 | CELINHA   |
					|      6 | TIÃO      |
					+--------+-----------+
					18 rows in set (0.00 sec)
*/
		SELECT * FROM ALUNOS
		ORDER BY 1;
/*					mysql> SELECT * FROM ALUNOS
						-> ORDER BY 1;  /*ORDENADO PELA COLUNA 1 
					+--------+-----------+
					| NUMERO | NOME      |
					+--------+-----------+
					|      1 | JOÃO      |
					|      1 | PEDRO     |
					|      1 | CELSO     |
					|      2 | CARLA     |
					|      2 | CESAR     |
					|      2 | JOANA     |
					|      3 | CELIA     |
					|      3 | MARCIO    |
					|      3 | LORA      |
					|      4 | DUDA      |
					|      4 | THIAGO    |
					|      4 | CLAUDIA   |
					|      5 | TEREZA    |
					|      5 | ANA       |
					|      5 | VALTER    |
					|      6 | ANA CLARA |
					|      6 | CELINHA   |
					|      6 | TIÃO      |
					+--------+-----------+*/
		SELECT * FROM ALUNOS
		ORDER BY 2;/*
					mysql> SELECT * FROM ALUNOS
						-> ORDER BY 2;  /*ORDENADO PELA COLUNA 2
					+--------+-----------+
					| NUMERO | NOME      |
					+--------+-----------+
					|      5 | ANA       |
					|      6 | ANA CLARA |
					|      2 | CARLA     |
					|      3 | CELIA     |
					|      6 | CELINHA   |
					|      1 | CELSO     |
					|      2 | CESAR     |
					|      4 | CLAUDIA   |
					|      4 | DUDA      |
					|      2 | JOANA     |
					|      1 | JOÃO      |
					|      3 | LORA      |
					|      3 | MARCIO    |
					|      1 | PEDRO     |
					|      5 | TEREZA    |
					|      4 | THIAGO    |
					|      6 | TIÃO      |
					|      5 | VALTER    |
					+--------+-----------+
					18 rows in set (0.03 sec)
		/* ORDENAR POR MAIS DE 1 COLUNA*/

		SELECT * FROM ALUNOS
		ORDER BY NUMERO, NOME;
        /*
					mysql> SELECT * FROM ALUNOS
						-> ORDER BY NUMERO, NOME;
					+--------+-----------+
					| NUMERO | NOME      |
					+--------+-----------+
					|      1 | CELSO     |
					|      1 | JOÃO      |
					|      1 | PEDRO     |
					|      2 | CARLA     |
					|      2 | CESAR     |
					|      2 | JOANA     |
					|      3 | CELIA     |
					|      3 | LORA      |
					|      3 | MARCIO    |
					|      4 | CLAUDIA   |
					|      4 | DUDA      |
					|      4 | THIAGO    |
					|      5 | ANA       |
					|      5 | TEREZA    |
					|      5 | VALTER    |
					|      6 | ANA CLARA |
					|      6 | CELINHA   |
					|      6 | TIÃO      |
					+--------+-----------+
					18 rows in set (0.00 sec)*/

		SELECT * FROM ALUNOS
		ORDER BY 1, 2;
/*					mysql> SELECT * FROM ALUNOS
						-> ORDER BY 1, 2;
					+--------+-----------+
					| NUMERO | NOME      |
					+--------+-----------+
					|      1 | CELSO     |
					|      1 | JOÃO      |
					|      1 | PEDRO     |
					|      2 | CARLA     |
					|      2 | CESAR     |
					|      2 | JOANA     |
					|      3 | CELIA     |
					|      3 | LORA      |
					|      3 | MARCIO    |
					|      4 | CLAUDIA   |
					|      4 | DUDA      |
					|      4 | THIAGO    |
					|      5 | ANA       |
					|      5 | TEREZA    |
					|      5 | VALTER    |
					|      6 | ANA CLARA |
					|      6 | CELINHA   |
					|      6 | TIÃO      |
					+--------+-----------+
					18 rows in set (0.00 sec)


/*ORDER BY DESC / ASC */
		SELECT * FROM ALUNOS
		ORDER BY ASC; 	/*ASCENDENTE*/

		SELECT * FROM ALUNOS
		ORDER BY DESC; 	/*ASCENDENTE*/

		
/*
**************************************************************************************************
**************************************************************************************************
**************************************************************************************************
**************************************************************************************************
DELIMITADOR (;)

O 'PONTO E VÍGULA' É O DELIMITER da ordem dada.
É ele quem separa a ordem e delimita seus limites

para saber o STATUS não precisa de delimiter.

Pode-se torcar o delimiter 

**************************************************************************************************
**************************************************************************************************
PROGRAMAÇÃO EM BANCO DE DADOS 


