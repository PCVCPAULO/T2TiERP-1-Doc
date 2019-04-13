-- ------------------------------------------------------------
-- Tabela com os c�digos do CST A.
-- O C�digo de Situa��o Tribut�ria foi institu�do com a finalidade de identificar a origem da mercadoria e identificar o regime de tributa��o a que esta sujeita a mercadoria, na opera��o praticada. � composto por tr�s d�gitos, onde o 1� d�gito indicar� a origem da mercadoria, com base na Tabela A e os dois �ltimos d�gitos a tributa��o pelo ICMS, com base na Tabela B.
-- ------------------------------------------------------------

CREATE TABLE CST_A_ICMS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO CHAR(1)  NOT NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tabela com os c�digos do CST A.  O C�digo de Situa��o Tribut�ria foi institu�do com a finalidade de identificar a origem da mercadoria e identificar o regime de tributa��o a que esta sujeita a mercadoria, na opera��o praticada. � composto por tr�s d�gitos, onde o 1� d�gito indicar� a origem da mercadoria, com base na Tabela A e os dois �ltimos d�gitos a tributa��o pelo ICMS, com base na Tabela B.' ;



-- ------------------------------------------------------------
-- Tabela com os c�digos do CST B.
-- O C�digo de Situa��o Tribut�ria foi institu�do com a finalidade de identificar a origem da mercadoria e identificar o regime de tributa��o a que esta sujeita a mercadoria, na opera��o praticada. � composto por tr�s d�gitos, onde o 1� d�gito indicar� a origem da mercadoria, com base na Tabela A e os dois �ltimos d�gitos a tributa��o pelo ICMS, com base na Tabela B.
-- ------------------------------------------------------------

CREATE TABLE CST_B_ICMS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO CHAR(3)  NOT NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tabela com os c�digos do CST B.  O C�digo de Situa��o Tribut�ria foi institu�do com a finalidade de identificar a origem da mercadoria e identificar o regime de tributa��o a que esta sujeita a mercadoria, na opera��o praticada. � composto por tr�s d�gitos, onde o 1� d�gito indicar� a origem da mercadoria, com base na Tabela A e os dois �ltimos d�gitos a tributa��o pelo ICMS, com base na Tabela B.' ;



CREATE TABLE CSOSN (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DESCRICAO VARCHAR(100)  NULL  ,
  CODIGO INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID));



CREATE TABLE COTACAO_COMPRA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DATA_COTACAO DATE  NULL  ,
  DESCRICAO VARCHAR(100)  NULL    ,
PRIMARY KEY(ID));



CREATE TABLE MOEDAS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(50)  NULL  ,
  SIGLA VARCHAR(10)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB;



CREATE TABLE MATRIZ (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  RAZAO_SOCIAL VARCHAR(100)  NULL  ,
  CNPJ VARCHAR(14)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Armazena os dados dos terminais de caixa.
-- ------------------------------------------------------------

CREATE TABLE ECF_CAIXA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(30)  NULL  ,
  DATA_CADASTRO DATE  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena os dados dos terminais de caixa.' ;



CREATE TABLE CST_PIS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DESCRICAO VARCHAR(100)  NULL  ,
  CODIGO INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID));



CREATE TABLE CST_COFINS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DESCRICAO VARCHAR(100)  NULL  ,
  CODIGO INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID));



CREATE TABLE CST_IPI (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DECRICAO VARCHAR(100)  NULL  ,
  CODIGO INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID));



CREATE TABLE SALARIO_MINIMO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  COMPETENCIA VARCHAR(7)  NULL   COMMENT 'Exemplo: 10/2011' ,
  VALOR DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB;




-- ------------------------------------------------------------
-- Se��o do NCM
-- ------------------------------------------------------------

CREATE TABLE NCM_SECAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  SECAO CHAR(2)  NOT NULL  ,
  DESCRICAO_SECAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Se��o do NCM' ;



-- ------------------------------------------------------------
-- Armazena os poss�veis estados civis. De acordo com as leis brasileiras, os poss�veis estados civis s�o:
-- 
--     * Solteiro(a) - quem nunca se casou, ou que teve o casamento anulado
--     * Casado(a) - quem contraiu matrim�nio, independente do regime de bens adotado
--     * Separado(a) judicialmente - quem n�o vive mais com o c�njuge (vive em separa��o f�sica dele), mas que ainda n�o obteve o div�rcio, todavia obteve senten�a que deliberou por decretar a separa��o judicial dos c�njuges, cessando, assim, os deveres oriundos da sociedade conjugal.
--     * Divorciado(a) - ap�s a homologa��o do div�rcio pela justi�a
--     * Vi�vo(a) - pessoa cujo c�njuge faleceu.
-- ------------------------------------------------------------

CREATE TABLE ESTADO_CIVIL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(50)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena os poss�veis estados civis. De acordo com as leis brasileiras, os poss�veis estados civis s�o:        * Solteiro(a) - quem nunca se casou, ou que teve o casamento anulado      * Casado(a) - quem contraiu matrim�nio, independente do regime de bens adotado      * Separado(a) judicialmente - quem n�o vive mais com o c�njuge (vive em separa��o f�sica dele), mas que ainda n�o obteve o div�rcio, todavia obteve senten�a que deliberou por decretar a separa��o judicial dos c�njuges, cessando, assim, os deveres oriundos da sociedade conjugal.      * Divorciado(a) - ap�s a homologa��o do div�rcio pela justi�a      * Vi�vo(a) - pessoa cujo c�njuge faleceu.' ;



-- ------------------------------------------------------------
-- Tabela IRRF
-- ------------------------------------------------------------

CREATE TABLE IRRF (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  COMPETENCIA VARCHAR(7)  NULL   COMMENT 'Exemplo: 10/2011' ,
  DESCONTO_POR_DEPENDENTE DECIMAL(18,6)  NULL  ,
  MINIMO_PARA_RETENCAO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tabela IRRF' ;




-- ------------------------------------------------------------
-- Armazena os lotes de lan�amento.
-- ------------------------------------------------------------

CREATE TABLE CONTABIL_LOTE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DESCRICAO VARCHAR(100)  NULL  ,
  LIBERADO CHAR(1)  NULL  ,
  ID_USUARIO INTEGER UNSIGNED  NULL  ,
  DATA_INC DATE  NULL  ,
  DATA_LIBERACAO DATE  NULL  ,
  MODULO_ORIGEM VARCHAR(30)  NULL  ,
  PROGRAMADO CHAR(1)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena os lotes de lan�amento.' ;



CREATE TABLE PLANO_CENTRO_RESULTADO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME INTEGER UNSIGNED  NULL  ,
  MASCARA VARCHAR(50)  NULL  ,
  NIVEIS INTEGER UNSIGNED  NULL  ,
  DATA_INC INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Pedido Normal: Quando nao existe nenhuma programacao de entrega ou seja, a entrega do material � feita de uma unica vez.
-- 
-- Pedido Planejado: O comprador negocia um determinado material mas n�o quer armazenar o consumo do ano em seu estoque, neste caso o comprador poderia fazer o pedido para o ano todo por�m as entregas seriam mensais j� que o comprador sabe o consumo mensal. 
-- 
-- Pedido Aberto: O Comprador negocia um determinado material mas n�o sabe o consumo mensal durante o ano, neste caso ele gera liberacoes conforme necessidade.
-- ------------------------------------------------------------

CREATE TABLE TIPO_PEDIDO_COMPRA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO CHAR(2)  NULL   COMMENT '01-Normal | 02-Planejado | 03-Aberto' ,
  NOME VARCHAR(30)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Pedido Normal: Quando nao existe nenhuma programacao de entrega ou seja, a entrega do material � feita de uma unica vez.    Pedido Planejado: O comprador negocia um determinado material mas n�o quer armazenar o consumo do ano em seu estoque, neste caso o comprador poderia fazer o pedido para o ano todo por�m as entregas seriam mensais j� que o comprador sabe o consumo mensal.     Pedido Aberto: O Comprador negocia um determinado material mas n�o sabe o consumo mensal durante o ano, neste caso ele gera liberacoes conforme necessidade.' ;




-- ------------------------------------------------------------
-- Plano contabil do SPED.
-- ------------------------------------------------------------

CREATE TABLE PLANO_CONTA_REF_SPED (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  COD_CTA_REF VARCHAR(30)  NULL  ,
  DESCRICAO VARCHAR(100)  NULL  ,
  ORIENTACOES TEXT  NULL  ,
  INICIO_VALIDADE DATE  NULL  ,
  FIM_VALIDADE DATE  NULL  ,
  TIPO CHAR(1)  NULL   COMMENT 'S=Sint�tica | A=Anal�tica'   ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Plano contabil do SPED.' ;




-- ------------------------------------------------------------
-- Posi��o do NCM
-- ------------------------------------------------------------

CREATE TABLE NCM_POSICAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  POSICAO_NCM CHAR(4)  NOT NULL  ,
  DESCRICAO_POSICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Posi��o do NCM' ;



CREATE TABLE PLANO_NAT_FINANCEIRA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(100)  NULL  ,
  DATA_INC DATE  NULL  ,
  MASCARA VARCHAR(50)  NULL  ,
  NIVEIS INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Armazena as configura��es do terminal de caixa.
-- ------------------------------------------------------------

CREATE TABLE ECF_CONFIGURACAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_ECF_IMPRESSORA INTEGER UNSIGNED  NULL  ,
  ID_ECF_RESOLUCAO INTEGER UNSIGNED  NULL  ,
  ID_ECF_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_ECF_EMPRESA INTEGER UNSIGNED  NULL  ,
  MENSAGEM_CUPOM VARCHAR(250)  NULL  ,
  PORTA_ECF CHAR(10)  NULL  ,
  IP_SERVIDOR VARCHAR(15)  NULL  ,
  IP_SITEF VARCHAR(15)  NULL  ,
  TIPO_TEF CHAR(2)  NULL   COMMENT 'DI-Discado | DE-Dedicado' ,
  TITULO_TELA_CAIXA VARCHAR(100)  NULL  ,
  CAMINHO_IMAGENS_PRODUTOS VARCHAR(250)  NULL  ,
  CAMINHO_IMAGENS_MARKETING VARCHAR(250)  NULL  ,
  CAMINHO_IMAGENS_LAYOUT VARCHAR(250)  NULL  ,
  COR_JANELAS_INTERNAS VARCHAR(20)  NULL  ,
  MARKETING_ATIVO CHAR(1)  NULL   COMMENT 'S=SIM | N=NAO' ,
  CFOP_ECF INTEGER UNSIGNED  NULL   COMMENT 'Armazena o CFOP' ,
  CFOP_NF2 INTEGER UNSIGNED  NULL   COMMENT 'Armazena o CFOP' ,
  TIMEOUT_ECF INTEGER UNSIGNED  NULL  ,
  INTERVALO_ECF INTEGER UNSIGNED  NULL  ,
  DESCRICAO_SUPRIMENTO VARCHAR(20)  NULL   COMMENT 'Descri��o do suprimento no ECF' ,
  DESCRICAO_SANGRIA VARCHAR(20)  NULL   COMMENT 'Descri��o da sangria no ECF' ,
  TEF_TIPO_GP INTEGER UNSIGNED  NULL  ,
  TEF_TEMPO_ESPERA INTEGER UNSIGNED  NULL  ,
  TEF_ESPERA_STS INTEGER UNSIGNED  NULL  ,
  TEF_NUMERO_VIAS INTEGER UNSIGNED  NULL  ,
  DECIMAIS_QUANTIDADE INTEGER UNSIGNED  NULL   COMMENT 'Quantidade de decimais para campos do tipo Quantidade' ,
  DECIMAIS_VALOR INTEGER UNSIGNED  NULL   COMMENT 'Quantidade de decimais para campos do tipo Valor' ,
  BITS_POR_SEGUNDO INTEGER UNSIGNED  NULL  ,
  QTDE_MAXIMA_CARTOES INTEGER UNSIGNED  NULL   COMMENT 'Quantidade m�xima de cart�es que poder� ser utilizada na ocasi�o do pagamento' ,
  PESQUISA_PARTE CHAR(1)  NULL   COMMENT 'Controla a pesquisa quando utiliza o LIKE com o curinga "%".' ,
  CONFIGURACAO_BALANCA VARCHAR(100)  NULL  ,
  PARAMETROS_DIVERSOS VARCHAR(250)  NULL  ,
  ULTIMA_EXCLUSAO INTEGER UNSIGNED  NULL  ,
  LAUDO VARCHAR(10)  NULL  ,
  INDICE_GERENCIAL VARCHAR(100)  NULL  ,
  DATA_ATUALIZACAO_ESTOQUE DATE  NULL  ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena as configura��es do terminal de caixa.' ;













-- ------------------------------------------------------------
-- Armazena o detallhe das vendas.
-- ------------------------------------------------------------

CREATE TABLE ECF_VENDA_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_ECF_PRODUTO INTEGER UNSIGNED  NULL  ,
  ID_ECF_VENDA_CABECALHO INTEGER UNSIGNED  NULL  ,
  CFOP INTEGER UNSIGNED  NOT NULL  ,
  ITEM INTEGER UNSIGNED  NULL  ,
  QUANTIDADE DECIMAL(18,6)  NULL  ,
  VALOR_UNITARIO DECIMAL(18,6)  NULL  ,
  VALOR_TOTAL DECIMAL(18,6)  NULL  ,
  TOTAL_ITEM DECIMAL(18,6)  NULL  ,
  BASE_ICMS DECIMAL(18,6)  NULL  ,
  TAXA_ICMS DECIMAL(18,6)  NULL  ,
  ICMS DECIMAL(18,6)  NULL  ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL  ,
  DESCONTO DECIMAL(18,6)  NULL  ,
  TAXA_ISSQN DECIMAL(18,6)  NULL  ,
  ISSQN DECIMAL(18,6)  NULL  ,
  TAXA_PIS DECIMAL(18,6)  NULL  ,
  PIS DECIMAL(18,6)  NULL  ,
  TAXA_COFINS DECIMAL(18,6)  NULL  ,
  COFINS DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO DECIMAL(18,6)  NULL  ,
  ACRESCIMO DECIMAL(18,6)  NULL  ,
  ACRESCIMO_RATEIO DECIMAL(18,6)  NULL  ,
  DESCONTO_RATEIO DECIMAL(18,6)  NULL  ,
  TOTALIZADOR_PARCIAL VARCHAR(10)  NULL  ,
  CST CHAR(3)  NULL  ,
  CANCELADO CHAR(1)  NULL   COMMENT 'S=SIM | N=NAO' ,
  MOVIMENTA_ESTOQUE CHAR(1)  NULL   COMMENT 'S=SIM | N=NAO' ,
  HASH_TRIPA VARCHAR(32)  NULL  ,
  HASH_INCREMENTO INTEGER  NULL  ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena o detallhe das vendas.' ;





CREATE TABLE TRIBUTACAO_PIS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DESCRICAO VARCHAR(100)  NULL    ,
PRIMARY KEY(ID));



-- ------------------------------------------------------------
-- Armazena o cabe�alho das vendas.
-- ------------------------------------------------------------

CREATE TABLE ECF_VENDA_CABECALHO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_CLIENTE INTEGER UNSIGNED  NULL  ,
  ID_ECF_FUNCIONARIO INTEGER UNSIGNED  NULL  ,
  ID_ECF_MOVIMENTO INTEGER UNSIGNED  NULL  ,
  ID_ECF_DAV INTEGER UNSIGNED  NULL  ,
  ID_ECF_PRE_VENDA_CABECALHO INTEGER UNSIGNED  NULL  ,
  CFOP INTEGER UNSIGNED  NOT NULL  ,
  COO INTEGER UNSIGNED  NULL  ,
  CCF INTEGER UNSIGNED  NULL  ,
  DATA_VENDA DATE  NULL  ,
  HORA_VENDA VARCHAR(8)  NULL  ,
  VALOR_VENDA DECIMAL(18,6)  NULL  ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL  ,
  DESCONTO DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO DECIMAL(18,6)  NULL  ,
  ACRESCIMO DECIMAL(18,6)  NULL  ,
  VALOR_FINAL DECIMAL(18,6)  NULL  ,
  VALOR_RECEBIDO DECIMAL(18,6)  NULL  ,
  TROCO DECIMAL(18,6)  NULL  ,
  VALOR_CANCELADO DECIMAL(18,6)  NULL  ,
  TOTAL_PRODUTOS DECIMAL(18,6)  NULL  ,
  TOTAL_DOCUMENTO DECIMAL(18,6)  NULL  ,
  BASE_ICMS DECIMAL(18,6)  NULL  ,
  ICMS DECIMAL(18,6)  NULL  ,
  ICMS_OUTRAS DECIMAL(18,6)  NULL  ,
  ISSQN DECIMAL(18,6)  NULL  ,
  PIS DECIMAL(18,6)  NULL  ,
  COFINS DECIMAL(18,6)  NULL  ,
  ACRESCIMO_ITENS DECIMAL(18,6)  NULL  ,
  DESCONTO_ITENS DECIMAL(18,6)  NULL  ,
  STATUS_VENDA CHAR(1)  NULL   COMMENT 'A=ABERTA | F=FECHADA | C=CANCELADA | P=PROBLEMAS' ,
  NOME_CLIENTE VARCHAR(100)  NULL  ,
  CPF_CNPJ_CLIENTE VARCHAR(14)  NULL  ,
  CUPOM_CANCELADO CHAR(1)  NULL   COMMENT 'S=SIM | N=NAO' ,
  HASH_TRIPA VARCHAR(32)  NULL  ,
  HASH_INCREMENTO INTEGER  NULL  ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena o cabe�alho das vendas.' ;





-- ------------------------------------------------------------
-- Armazena os tipos de pagamentos de determinada venda.
-- ------------------------------------------------------------

CREATE TABLE ECF_TOTAL_TIPO_PGTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_ECF_VENDA_CABECALHO INTEGER UNSIGNED  NULL  ,
  ID_ECF_TIPO_PAGAMENTO INTEGER UNSIGNED  NULL  ,
  VALOR DECIMAL(18,6)  NULL  ,
  NSU VARCHAR(30)  NULL   COMMENT 'N�mero sequencial unico - utilizado quando a venda � efetuada por TEF' ,
  ESTORNO CHAR(1)  NULL   COMMENT 'S=Sim | N=N�o' ,
  REDE VARCHAR(10)  NULL  ,
  CARTAO_DC CHAR(1)  NULL   COMMENT 'D=D�bito | C=Cr�dito' ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena os tipos de pagamentos de determinada venda.' ;






-- ------------------------------------------------------------
-- Armazena os turnos que podem ser utilizados em determinado movimento. Exemplos:
-- 
-- Manha
-- Tarde
-- Noite
-- ------------------------------------------------------------

CREATE TABLE ECF_TURNO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DESCRICAO VARCHAR(10)  NULL  ,
  HORA_INICIO VARCHAR(8)  NULL  ,
  HORA_FIM VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena os turnos que podem ser utilizados em determinado movimento. Exemplos:    Manha  Tarde  Noite' ;



CREATE TABLE TRIBUTACAO_COFINS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DESCRICAO VARCHAR(100)  NULL    ,
PRIMARY KEY(ID));



-- ------------------------------------------------------------
-- Tabela que armazena os dados dos impostos estaduais.
-- ------------------------------------------------------------

CREATE TABLE TRIBUTACAO_ESTADUAL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DESCRICAO VARCHAR(50)  NULL  ,
  DATA_CADASTRO DATE  NULL  ,
  DATA_ALTERACAO DATE  NULL  ,
  TAXA_ISSQN DECIMAL(18,6)  NULL  ,
  TAXA_ICMS DECIMAL(18,6)  NULL  ,
  CFOP_FORA INTEGER UNSIGNED  NULL  ,
  CFOP_DENTRO INTEGER UNSIGNED  NULL  ,
  CST_A_ICMS CHAR(1)  NULL  ,
  CST_B_ICMS CHAR(3)  NULL  ,
  CST_ECF CHAR(3)  NULL  ,
  CSOSN CHAR(4)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tabela que armazena os dados dos impostos estaduais.' ;



CREATE TABLE PLANO_CONTAS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME INTEGER UNSIGNED  NULL  ,
  DATA_INC DATE  NULL  ,
  MASCARA VARCHAR(50)  NULL  ,
  NIVEIS INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Armazena as marcas dos produtos.
-- ------------------------------------------------------------

CREATE TABLE MARCA_PRODUTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(50)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena as marcas dos produtos.' ;



-- ------------------------------------------------------------
-- Lote dos produtos.
-- ------------------------------------------------------------

CREATE TABLE LOTE_PRODUTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT  ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Lote dos produtos.' ;



-- ------------------------------------------------------------
-- Armazena os movimentos para determinado caixa. Podem haver v�rios movimentos durante um dia. Um movimento deve ter obrigatoriamente:
-- 
-- -Operador
-- -Caixa (terminal)
-- -Impressora
-- -Turno
-- -Status
-- 
-- � atrav�s dessa tabela que o caixa deve funcionar. Sem um movimento aberto n�o pode haver movimenta��o no caixa.
-- ------------------------------------------------------------

CREATE TABLE ECF_MOVIMENTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL   COMMENT 'Id do Movimento gerado no terminal de caixa' ,
  ID_ECF_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_ECF_TURNO INTEGER UNSIGNED  NULL  ,
  ID_ECF_IMPRESSORA INTEGER UNSIGNED  NULL  ,
  ID_ECF_OPERADOR INTEGER UNSIGNED  NULL  ,
  ID_ECF_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_GERENTE_SUPERVISOR INTEGER UNSIGNED  NOT NULL  ,
  DATA_ABERTURA DATE  NULL  ,
  HORA_ABERTURA VARCHAR(8)  NULL  ,
  DATA_FECHAMENTO DATE  NULL  ,
  HORA_FECHAMENTO VARCHAR(8)  NULL  ,
  TOTAL_SUPRIMENTO DECIMAL(18,6)  NULL  ,
  TOTAL_SANGRIA DECIMAL(18,6)  NULL  ,
  TOTAL_NAO_FISCAL DECIMAL(18,6)  NULL  ,
  TOTAL_VENDA DECIMAL(18,6)  NULL  ,
  TOTAL_DESCONTO DECIMAL(18,6)  NULL  ,
  TOTAL_ACRESCIMO DECIMAL(18,6)  NULL  ,
  TOTAL_FINAL DECIMAL(18,6)  NULL  ,
  TOTAL_RECEBIDO DECIMAL(18,6)  NULL  ,
  TOTAL_TROCO DECIMAL(18,6)  NULL  ,
  TOTAL_CANCELADO DECIMAL(18,6)  NULL  ,
  STATUS_MOVIMENTO CHAR(1)  NOT NULL   COMMENT 'A=ABERTO | F=FECHADO | T=FECHADO TEMPORARIAMENTE' ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena os movimentos para determinado caixa. Podem haver v�rios movimentos durante um dia. Um movimento deve ter obrigatoriamente:    -Operador  -Caixa (terminal)  -Impressora  -Turno  -Status    � atrav�s dessa tabela que o caixa deve funcionar. Sem um movimento aberto n�o pode haver movimenta��o no caixa.' ;





-- ------------------------------------------------------------
-- Armazena os dados dos componentes para que sejam arrumados na tela de acordo com a resolu��o selecionada.
-- ------------------------------------------------------------

CREATE TABLE ECF_POSICAO_COMPONENTES (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_ECF_RESOLUCAO INTEGER UNSIGNED  NULL  ,
  NOME VARCHAR(100)  NULL  ,
  ALTURA INTEGER UNSIGNED  NULL  ,
  LARGURA INTEGER UNSIGNED  NULL  ,
  TOPO INTEGER UNSIGNED  NULL  ,
  ESQUERDA INTEGER UNSIGNED  NULL  ,
  TAMANHO_FONTE INTEGER UNSIGNED  NULL DEFAULT 0 ,
  TEXTO VARCHAR(250)  NULL  ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena os dados dos componentes para que sejam arrumados na tela de acordo com a resolu��o selecionada.' ;



-- ------------------------------------------------------------
-- Armazena os dados das impressoras (ECF).
-- ------------------------------------------------------------

CREATE TABLE ECF_IMPRESSORA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NUMERO INTEGER UNSIGNED  NULL  ,
  CODIGO VARCHAR(10)  NULL  ,
  SERIE VARCHAR(20)  NULL  ,
  IDENTIFICACAO VARCHAR(250)  NULL  ,
  MC CHAR(2)  NULL   COMMENT 'MARCA' ,
  MD CHAR(2)  NULL   COMMENT 'MODELO' ,
  VR CHAR(2)  NULL   COMMENT 'VERSAO DO SOFTWARE BASICO' ,
  TIPO VARCHAR(7)  NULL  ,
  MARCA VARCHAR(30)  NULL  ,
  MODELO VARCHAR(30)  NULL  ,
  MODELO_ACBR VARCHAR(30)  NULL   COMMENT 'Para configurar o modelo da impressora no componente ACBr no Delphi' ,
  MODELO_DOCUMENTO_FISCAL CHAR(2)  NULL  ,
  VERSAO VARCHAR(30)  NULL  ,
  LE CHAR(1)  NULL   COMMENT 'QTDE DE LACRES EXTERNOS' ,
  LEF CHAR(1)  NULL   COMMENT 'QTDE DE LACRES EXTERNOS DE FABRICA' ,
  MFD CHAR(1)  NULL   COMMENT 'MEMORIA DE FITA DETALHE (S=SIM | N=NAO)' ,
  LACRE_NA_MFD CHAR(1)  NULL   COMMENT 'S=SIM | N=NAO' ,
  DOCTO VARCHAR(60)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena os dados das impressoras (ECF).' ;











-- ------------------------------------------------------------
-- Armazena os documentos que s�o emitidos durante o movimento.
-- ------------------------------------------------------------

CREATE TABLE ECF_DOCUMENTOS_EMITIDOS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_ECF_MOVIMENTO INTEGER UNSIGNED  NULL  ,
  DATA_EMISSAO DATE  NULL  ,
  HORA_EMISSAO VARCHAR(8)  NULL  ,
  TIPO CHAR(2)  NULL   COMMENT 'LX=Leitura X | RZ=Reducao Z | RG=Relatorio Gerencial | CA=Cancelamento de Cupom | MF=Leitura da Memoria Fiscal | RV=Registro de Venda | CC=Comprovante de Credito ou Debito | CN=Comprovante Nao-Fiscal | NC=Comprovante Nao-Fiscal Cancelamento' ,
  COO INTEGER UNSIGNED  NULL  ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena os documentos que s�o emitidos durante o movimento.' ;




CREATE TABLE ECF_FECHAMENTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_ECF_MOVIMENTO INTEGER UNSIGNED  NULL  ,
  TIPO_PAGAMENTO VARCHAR(20)  NULL  ,
  VALOR DECIMAL(18,6)  NULL  ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID));



-- ------------------------------------------------------------
-- Armazena todos os suprimentos que s�o feitos no caixa. Tem relacionamento direto com a tabela de movimento, j� que um suprimento s� pode ser feito se houver um movimento aberto.
-- ------------------------------------------------------------

CREATE TABLE ECF_SUPRIMENTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_ECF_MOVIMENTO INTEGER UNSIGNED  NULL  ,
  DATA_SUPRIMENTO DATE  NULL  ,
  VALOR DECIMAL(18,6)  NULL  ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena todos os suprimentos que s�o feitos no caixa. Tem relacionamento direto com a tabela de movimento, j� que um suprimento s� pode ser feito se houver um movimento aberto.' ;



-- ------------------------------------------------------------
-- Armazena os poss�veis tipos de pagamento:
-- 
-- Dinheiro
-- Cart�o
-- Cheque
-- Etc.
-- ------------------------------------------------------------

CREATE TABLE ECF_TIPO_PAGAMENTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO CHAR(3)  NULL  ,
  DESCRICAO VARCHAR(20)  NULL  ,
  TEF CHAR(1)  NULL   COMMENT 'S=SIM | N=NAO' ,
  IMPRIME_VINCULADO CHAR(1)  NULL   COMMENT 'S=SIM | N=NAO' ,
  PERMITE_TROCO CHAR(1)  NULL   COMMENT 'S=SIM | N=NAO' ,
  TEF_TIPO_GP CHAR(1)  NULL   COMMENT '1=TEFDial | 2=TECBAN | 3=TEFHiperlink | N=N�o' ,
  GERA_PARCELAS CHAR(1)  NULL   COMMENT 'S=SIM | N=NAO'   ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena os poss�veis tipos de pagamento:    Dinheiro  Cart�o  Cheque  Etc.' ;








-- ------------------------------------------------------------
-- Armazena todas as sangrias que s�o feitas no caixa. Tem relacionamento direto com a tabela de movimento, j� que uma sangria s� pode ser feita se houver um 
-- movimento aberto.
-- ------------------------------------------------------------

CREATE TABLE ECF_SANGRIA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_ECF_MOVIMENTO INTEGER UNSIGNED  NULL  ,
  DATA_SANGRIA DATE  NULL  ,
  VALOR DECIMAL(18,6)  NULL  ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena todas as sangrias que s�o feitas no caixa. Tem relacionamento direto com a tabela de movimento, j� que uma sangria s� pode ser feita se houver um   movimento aberto.' ;



-- ------------------------------------------------------------
-- Armazena os recebimentos que ocorrem via ECF, mas que n�o tem natureza fiscal.
-- ------------------------------------------------------------

CREATE TABLE ECF_RECEBIMENTO_NAO_FISCAL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_ECF_MOVIMENTO INTEGER UNSIGNED  NULL  ,
  DATA_RECEBIMENTO DATE  NULL  ,
  DESCRICAO VARCHAR(50)  NULL  ,
  VALOR DECIMAL(18,6)  NULL  ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena os recebimentos que ocorrem via ECF, mas que n�o tem natureza fiscal.' ;



-- ------------------------------------------------------------
-- Armazena as resolu��es que podem ser trabalhadas pelo terminal de caixa.
-- ------------------------------------------------------------

CREATE TABLE ECF_RESOLUCAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  RESOLUCAO_TELA VARCHAR(20)  NULL  ,
  LARGURA INTEGER UNSIGNED  NULL  ,
  ALTURA INTEGER UNSIGNED  NULL  ,
  IMAGEM_TELA VARCHAR(50)  NULL  ,
  IMAGEM_MENU VARCHAR(50)  NULL  ,
  IMAGEM_SUBMENU VARCHAR(50)  NULL  ,
  HOTTRACK_COLOR VARCHAR(20)  NULL  ,
  ITEM_STYLE_FONT_NAME VARCHAR(20)  NULL  ,
  ITEM_STYLE_FONT_COLOR VARCHAR(20)  NULL  ,
  ITEM_SEL_STYLE_COLOR VARCHAR(20)  NULL  ,
  LABEL_TOTAL_GERAL_FONT_COLOR VARCHAR(20)  NULL  ,
  ITEM_STYLE_FONT_STYLE VARCHAR(20)  NULL  ,
  EDITS_COLOR VARCHAR(20)  NULL  ,
  EDITS_FONT_COLOR VARCHAR(20)  NULL  ,
  EDITS_DISABLED_COLOR VARCHAR(20)  NULL  ,
  EDITS_FONT_NAME VARCHAR(20)  NULL  ,
  EDITS_FONT_STYLE VARCHAR(20)  NULL  ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena as resolu��es que podem ser trabalhadas pelo terminal de caixa.' ;



-- ------------------------------------------------------------
-- C�DIGO FISCAL DE OPERA��ES E PRESTA��ES - CFOP
-- ------------------------------------------------------------

CREATE TABLE CFOP (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CFOP INTEGER UNSIGNED  NULL  ,
  DESCRICAO TEXT  NULL  ,
  APLICACAO TEXT  NULL  ,
  MOVIMENTA_ESTOQUE CHAR(1)  NULL   COMMENT 'S=Sim | N=N�o' ,
  TIPO_OPERACAO CHAR(1)  NULL   COMMENT 'E=Entrada, s=saida, R=retorno, S-remessa' ,
  ORIGEM  CHAR(1)  NULL   COMMENT 'D=Dentro Estado | F=Fora Estado | I=Importa��o | E=Exporta��o' ,
  ALTERA_CUSTO_PRODUTO CHAR(1)  NULL   COMMENT 'S=Sim | N=N�o' ,
  MOVIMENTA_FINANCEIRO CHAR(1)  NULL   COMMENT 'S=Sim | N=N�o' ,
  PERMITE_CREDITO_ICMS CHAR(1)  NULL  ,
  PERMITE_CREDITO_IPI CHAR(1)  NULL  ,
  PERMITE_CREDITO_PIS CHAR(1)  NULL  ,
  PERMITE_CREDITO_COFINS CHAR(1)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'C�DIGO FISCAL DE OPERA��ES E PRESTA��ES - CFOP' ;








-- ------------------------------------------------------------
-- Armazena os dados de cabe�alho da Nota Fiscal Modelo 2.
-- ------------------------------------------------------------

CREATE TABLE NOTA_FISCAL_CABECALHO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_ECF_FUNCIONARIO INTEGER UNSIGNED  NULL  ,
  ID_CLIENTE INTEGER UNSIGNED  NULL  ,
  CFOP INTEGER UNSIGNED  NOT NULL  ,
  NUMERO VARCHAR(6)  NULL  ,
  DATA_EMISSAO DATE  NULL  ,
  HORA_EMISSAO VARCHAR(8)  NULL  ,
  SERIE CHAR(2)  NULL  ,
  SUBSERIE CHAR(2)  NULL  ,
  TOTAL_PRODUTOS DECIMAL(18,6)  NULL  ,
  TOTAL_NF DECIMAL(18,6)  NULL  ,
  BASE_ICMS DECIMAL(18,6)  NULL  ,
  ICMS DECIMAL(18,6)  NULL  ,
  ICMS_OUTRAS DECIMAL(18,6)  NULL  ,
  ISSQN DECIMAL(18,6)  NULL  ,
  PIS DECIMAL(18,6)  NULL  ,
  COFINS DECIMAL(18,6)  NULL  ,
  IPI DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO DECIMAL(18,6)  NULL  ,
  ACRESCIMO DECIMAL(18,6)  NULL  ,
  ACRESCIMO_ITENS DECIMAL(18,6)  NULL  ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL  ,
  DESCONTO DECIMAL(18,6)  NULL  ,
  DESCONTO_ITENS DECIMAL(18,6)  NULL  ,
  CANCELADA CHAR(1)  NULL   COMMENT 'S=SIM | N=NAO' ,
  TIPO_NOTA CHAR(1)  NULL   COMMENT '1=NFE | 2=NF2' ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena os dados de cabe�alho da Nota Fiscal Modelo 2.' ;





-- ------------------------------------------------------------
-- Armazena os dados de detalhe da Nota Fiscal Modelo 2.
-- ------------------------------------------------------------

CREATE TABLE NOTA_FISCAL_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_NF_CABECALHO INTEGER UNSIGNED  NULL  ,
  ID_PRODUTO INTEGER UNSIGNED  NULL  ,
  CFOP INTEGER UNSIGNED  NOT NULL  ,
  ITEM INTEGER UNSIGNED  NULL  ,
  QUANTIDADE DECIMAL(18,6)  NULL  ,
  VALOR_UNITARIO DECIMAL(18,6)  NULL  ,
  VALOR_TOTAL DECIMAL(18,6)  NULL  ,
  BASE_ICMS DECIMAL(18,6)  NULL  ,
  TAXA_ICMS DECIMAL(18,6)  NULL  ,
  ICMS DECIMAL(18,6)  NULL  ,
  ICMS_OUTRAS DECIMAL(18,6)  NULL  ,
  ICMS_ISENTO DECIMAL(18,6)  NULL  ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL  ,
  DESCONTO DECIMAL(18,6)  NULL  ,
  TAXA_ISSQN DECIMAL(18,6)  NULL  ,
  ISSQN DECIMAL(18,6)  NULL  ,
  TAXA_PIS DECIMAL(18,6)  NULL  ,
  PIS DECIMAL(18,6)  NULL  ,
  TAXA_COFINS DECIMAL(18,6)  NULL  ,
  COFINS DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO DECIMAL(18,6)  NULL  ,
  ACRESCIMO DECIMAL(18,6)  NULL  ,
  TAXA_IPI DECIMAL(18,6)  NULL  ,
  IPI DECIMAL(18,6)  NULL  ,
  CANCELADO CHAR(1)  NULL   COMMENT 'S=SIM | N=NAO' ,
  CST CHAR(3)  NULL  ,
  MOVIMENTA_ESTOQUE CHAR(1)  NULL   COMMENT 'S=SIM | N=NAO' ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena os dados de detalhe da Nota Fiscal Modelo 2.' ;





CREATE TABLE CBO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO INTEGER UNSIGNED  NULL  ,
  NOME VARCHAR(100)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Rela��o de Redu��es Z;
-- ------------------------------------------------------------

CREATE TABLE R02 (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_OPERADOR INTEGER UNSIGNED  NOT NULL  ,
  ID_IMPRESSORA INTEGER UNSIGNED  NOT NULL  ,
  ID_ECF_CAIXA INTEGER UNSIGNED  NULL  ,
  CRZ INTEGER UNSIGNED  NULL  ,
  COO INTEGER UNSIGNED  NULL  ,
  CRO INTEGER UNSIGNED  NULL  ,
  DATA_MOVIMENTO DATE  NULL  ,
  DATA_EMISSAO DATE  NULL  ,
  HORA_EMISSAO VARCHAR(8)  NULL  ,
  VENDA_BRUTA DECIMAL(18,6)  NULL  ,
  GRANDE_TOTAL DECIMAL(18,6)  NULL  ,
  HASH_TRIPA VARCHAR(32)  NULL  ,
  HASH_INCREMENTO INTEGER  NULL  ,
  DATA_SINCRONIZACAO DATE  NULL   COMMENT 'S=SIM | N=NAO' ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Rela��o de Redu��es Z;' ;




-- ------------------------------------------------------------
-- Tabela com os n�veis de forma��o.
-- ------------------------------------------------------------

CREATE TABLE NIVEL_FORMACAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(20)  NULL  ,
  DESCRICAO TEXT  NULL  ,
  GRAU_INSTRUCAO_CAGED INTEGER UNSIGNED  NULL   COMMENT 'trazer esse informa�ao da tabeal de CAGED'   ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tabela com os n�veis de forma��o.' ;




-- ------------------------------------------------------------
--  Esta tabela ir� armazenar os codigos da ( Tabela 4.3.5 da EFD PIS COFINS), com a finalidade de gerar o SPED PIS COFINS e tamb�m o DACON.
-- ------------------------------------------------------------

CREATE TABLE COD_APURACAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO INTEGER UNSIGNED  NULL  ,
  DESCRICAO VARCHAR(255)  NULL    ,
PRIMARY KEY(ID))
COMMENT = 'Esta tabela ir� armazenar os codigos da ( Tabela 4.3.5 da EFD PIS COFINS), com a finalidade de gerar o SPED PIS COFINS e tamb�m o DACON.' ;



CREATE TABLE HOLDING (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME INTEGER UNSIGNED  NULL  ,
  TIPO_LIGACAO CHAR(1)  NULL   COMMENT '1=SUBSIDIARIA, CONTROLADA, COLIGADA' ,
  PARTIC_CAPITAL_VOTANTE DECIMAL(18,6)  NULL  ,
  PARTIC_CAPITAL_TOTAL DECIMAL(18,6)  NULL  ,
  CNPJ VARCHAR(14)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB;




-- ------------------------------------------------------------
-- A finalidade desta tabela � armazenar os codigos dos tipos de Receita da DACON. 
-- ------------------------------------------------------------

CREATE TABLE TIPO_RECEITA_DACON (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO INTEGER UNSIGNED  NULL  ,
  DESCRICAO VARCHAR(50)  NULL  ,
  OBS BLOB  NULL    ,
PRIMARY KEY(ID))
COMMENT = 'A finalidade desta tabela � armazenar os codigos dos tipos de Receita da DACON.' ;



-- ------------------------------------------------------------
-- Armazena os tipos de admiss�o do colaborador.
-- ------------------------------------------------------------

CREATE TABLE TIPO_ADMISSAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO CHAR(3)  NULL   COMMENT 'Exemplos: 100=Admiss�o Normal | 101=Transfer�ncia | 102=Reintegra��o' ,
  NOME VARCHAR(100)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena os tipos de admiss�o do colaborador.' ;




-- ------------------------------------------------------------
-- A CNAE - Classifica��o Nacional de Atividades Econ�micas � o instrumento de padroniza��o nacional dos c�digos de atividade econ�mica e dos crit�rios de enquadramento utilizados pelos diversos �rg�os da Administra��o Tribut�ria do pa�s.
-- 
-- EX.:
--    Se��o:  A  AGRICULTURA, PECU�RIA, PRODU��O FLORESTAL, PESCA E AQ�ICULTURA
--    Divis�o:  01  AGRICULTURA, PECU�RIA E SERVI�OS RELACIONADOS
--    Grupo:  011  PRODU��O DE LAVOURAS TEMPOR�RIAS
--    Classe:  0111-3  CULTIVO DE CEREAIS
--    Subclasse  0111-3/01  CULTIVO DE ARROZ
-- ------------------------------------------------------------

CREATE TABLE CNAE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DENOMINACAO TEXT  NULL  ,
  CODIGO VARCHAR(7)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'A CNAE - Classifica��o Nacional de Atividades Econ�micas � o instrumento de padroniza��o nacional dos c�digos de atividade econ�mica e dos crit�rios de enquadramento utilizados pelos diversos �rg�os da Administra��o Tribut�ria do pa�s.    EX.:     Se��o:  A  AGRICULTURA, PECU�RIA, PRODU��O FLORESTAL, PESCA E AQ�ICULTURA     Divis�o:  01  AGRICULTURA, PECU�RIA E SERVI�OS RELACIONADOS     Grupo:  011  PRODU��O DE LAVOURAS TEMPOR�RIAS     Classe:  0111-3  CULTIVO DE CEREAIS     Subclasse  0111-3/01  CULTIVO DE ARROZ' ;



CREATE TABLE CATEGORIA_TRAB_SEFIP (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO INTEGER UNSIGNED  NULL  ,
  NOME VARCHAR(100)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Permite agrupar clientes e fornecedores por segmentos e ramos de atividades.
-- ------------------------------------------------------------

CREATE TABLE ATIVIDADE_FOR_CLI (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(50)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Permite agrupar clientes e fornecedores por segmentos e ramos de atividades.' ;



CREATE TABLE TIPO_RECEITA_DIPI (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DESCRICAO INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID));



-- ------------------------------------------------------------
-- Tabela de pa�ses.
-- ------------------------------------------------------------

CREATE TABLE PAIS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO INTEGER UNSIGNED  NULL  ,
  NOME_EN VARCHAR(100)  NULL  ,
  NOME_PTBR VARCHAR(100)  NULL  ,
  SIGLA2 CHAR(2)  NULL  ,
  SIGLA3 CHAR(3)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tabela de pa�ses.' ;



-- ------------------------------------------------------------
-- Tabela com os tipos de relacionamento.
-- ------------------------------------------------------------

CREATE TABLE TIPO_RELACIONAMENTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO CHAR(3)  NULL   COMMENT 'Exemplos: 100=Conjuge | 101=Filho | 102=Pai' ,
  NOME VARCHAR(20)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tabela com os tipos de relacionamento.' ;




-- ------------------------------------------------------------
-- Tabela que define os pap�is do sistema.
-- ------------------------------------------------------------

CREATE TABLE PAPEL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(20)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tabela que define os pap�is do sistema.' ;



-- ------------------------------------------------------------
-- Tabela com a rela��o de bancos.
-- ------------------------------------------------------------

CREATE TABLE BANCO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO VARCHAR(10)  NULL  ,
  NOME VARCHAR(100)  NULL  ,
  URL VARCHAR(255)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tabela com a rela��o de bancos.' ;



-- ------------------------------------------------------------
-- Tipos de e-mails
-- ------------------------------------------------------------

CREATE TABLE TIPO_EMAIL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(20)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tipos de e-mails' ;



-- ------------------------------------------------------------
-- Tipos de colaboradores
-- ------------------------------------------------------------

CREATE TABLE TIPO_COLABORADOR (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(20)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tipos de colaboradores' ;



-- ------------------------------------------------------------
-- Armazena a informa��o do tipo de item que � gerado para o arquivo do SPED: Registro 200 - Campo 7.
-- Tipos:
-- 
-- 00-Mercadoria para Revenda;
-- 01-Mat�ria-Prima;
-- 02-Embalagem;
-- 03-Produto em Processo;
-- 04-Produto Acabado;
-- 05-Subproduto;
-- 06-Produto Intermedi�rio;
-- 07-Material de Uso e Consumo;
-- 08-Ativo Imobilizado;
-- 09-Servi�os;
-- 10-Outros insumos;
-- 99-Outras
-- ------------------------------------------------------------

CREATE TABLE TIPO_ITEM_SPED (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO CHAR(2)  NULL  ,
  DESCRICAO VARCHAR(50)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena a informa��o do tipo de item que � gerado para o arquivo do SPED: Registro 200 - Campo 7.  Tipos:    00-Mercadoria para Revenda;  01-Mat�ria-Prima;  02-Embalagem;  03-Produto em Processo;  04-Produto Acabado;  05-Subproduto;  06-Produto Intermedi�rio;  07-Material de Uso e Consumo;  08-Ativo Imobilizado;  09-Servi�os;  10-Outros insumos;  99-Outras' ;



-- ------------------------------------------------------------
-- Esta tabela ir� armazenar as diversas tributa��es do ICMS existentes para cada empresa,
-- ------------------------------------------------------------

CREATE TABLE TRIBUTACAO_ICMS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DESCRICAO VARCHAR(100)  NULL    ,
PRIMARY KEY(ID))
COMMENT = 'Esta tabela ir� armazenar as diversas tributa��es do ICMS existentes para cada empresa,' ;



-- ------------------------------------------------------------
-- Tipo de telefone
-- ------------------------------------------------------------

CREATE TABLE TIPO_TELEFONE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(20)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tipo de telefone' ;



-- ------------------------------------------------------------
-- Detalhe do Cupom Fiscal e do Documento N�o Fiscal - Meio de Pagamento;
-- ------------------------------------------------------------

CREATE TABLE R07 (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(8)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_R06 INTEGER UNSIGNED  NULL  ,
  CCF INTEGER UNSIGNED  NULL  ,
  MEIO_PAGAMENTO VARCHAR(20)  NULL  ,
  VALOR_PAGAMENTO DECIMAL(18,6)  NULL  ,
  ESTORNO CHAR(1)  NULL  ,
  VALOR_ESTORNO DECIMAL(18,6)  NULL  ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Detalhe do Cupom Fiscal e do Documento N�o Fiscal - Meio de Pagamento;' ;



CREATE TABLE TRIBUTACAO_IPI (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DESCRICAO VARCHAR(100)  NULL    ,
PRIMARY KEY(ID));



CREATE TABLE FPAS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO_FPAS INTEGER UNSIGNED  NULL  ,
  DESCRICAO VARCHAR(255)  NULL  ,
  CODIGO_TERCEIRO DECIMAL(4)  NULL  ,
  PERCENTUAL_TERCEIROS DECIMAL(18,6)  NULL  ,
  PERCENTUAL_INSS_PATRONAL DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Demais documentos emitidos pelo ECF;
-- ------------------------------------------------------------

CREATE TABLE R06 (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_OPERADOR INTEGER UNSIGNED  NOT NULL  ,
  ID_IMPRESSORA INTEGER UNSIGNED  NOT NULL  ,
  ID_ECF_CAIXA INTEGER UNSIGNED  NULL  ,
  COO INTEGER UNSIGNED  NULL  ,
  GNF INTEGER UNSIGNED  NULL  ,
  GRG INTEGER UNSIGNED  NULL  ,
  CDC INTEGER UNSIGNED  NULL  ,
  DENOMINACAO CHAR(2)  NULL   COMMENT 'CM=Confer�ncia de Mesa | RV=Registro de Venda | CC=Comprovante de Cr�dito ou D�bito | CN=Comprovante N�o-Fiscal | NC=Comprovante N�o-Fiscal Cancelamento | RG=Relat�rio Gerencial' ,
  DATA_EMISSAO DATE  NULL  ,
  HORA_EMISSAO VARCHAR(8)  NULL  ,
  HASH_TRIPA VARCHAR(32)  NULL  ,
  HASH_INCREMENTO INTEGER  NULL  ,
  DATA_SINCRONIZACAO DATE  NULL   COMMENT 'S=SIM | N=NAO' ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Demais documentos emitidos pelo ECF;' ;





-- ------------------------------------------------------------
-- Identifica a situa��o (ativo, inativo, bloqueado, desbloqueado...)
-- ------------------------------------------------------------

CREATE TABLE SITUACAO_FOR_CLI (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(20)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Identifica a situa��o (ativo, inativo, bloqueado, desbloqueado...)' ;



-- ------------------------------------------------------------
-- Situa��es poss�veis para o colaborador dentro da empresa.
-- ------------------------------------------------------------

CREATE TABLE SITUACAO_COLABORADOR (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO CHAR(3)  NULL   COMMENT 'Exemplos: 100=Trabalhando | 101=Licen�a Sa�de | 102=Licen�a interesse' ,
  NOME VARCHAR(100)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Situa��es poss�veis para o colaborador dentro da empresa.' ;




-- ------------------------------------------------------------
-- Tabela com as unidades de produto.
-- ------------------------------------------------------------

CREATE TABLE UNIDADE_PRODUTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  SIGLA VARCHAR(10)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tabela com as unidades de produto.' ;



-- ------------------------------------------------------------
-- Armazena as faixas e os percentuais para o desconto do INSS, os valores para o sal�rio fam�lia.
-- ------------------------------------------------------------

CREATE TABLE INSS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  COMPETENCIA VARCHAR(7)  NULL   COMMENT 'Exemplo: 12/2011'   ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Armazena as faixas e os percentuais para o desconto do INSS, os valores para o sal�rio fam�lia.' ;




-- ------------------------------------------------------------
-- Tabela que armazena os dados da PESSOA. Demais tabelas devem especializar esta tabela com seus pr�prios dados: FORNECEDOR, TRANSPORTADORA, CLIENTE, etc.
-- ------------------------------------------------------------

CREATE TABLE PESSOA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(150)  NULL  ,
  TIPO CHAR(1)  NULL   COMMENT 'F=F�sica | J=Jur�dica' ,
  EMAIL VARCHAR(250)  NULL  ,
  SITE VARCHAR(250)  NULL  ,
  SUFRAMA VARCHAR(9)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tabela que armazena os dados da PESSOA. Demais tabelas devem especializar esta tabela com seus pr�prios dados: FORNECEDOR, TRANSPORTADORA, CLIENTE, etc.' ;




CREATE TABLE COD_RECOLHIMENTO_SEFIP (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO INTEGER UNSIGNED  NULL  ,
  DESCRICAO VARCHAR(255)  NULL  ,
  APLICACAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Guarda o n�mero da �ltima nota emitida
-- ------------------------------------------------------------

CREATE TABLE NFE_NUMERO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NUMERO INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Guarda o n�mero da �ltima nota emitida' ;



CREATE TABLE COD_GPS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO INTEGER UNSIGNED  NULL  ,
  DESCRICAO VARCHAR(255)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB;



CREATE TABLE COD_MOVIMENTACAO_SEFIP (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CODIGO CHAR(2)  NULL  ,
  DESCRICAO VARCHAR(255)  NULL  ,
  APLICACAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Tabela com os grupos de produtos
-- ------------------------------------------------------------

CREATE TABLE GRUPO_PRODUTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME VARCHAR(20)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tabela com os grupos de produtos' ;



-- ------------------------------------------------------------
-- Tabela com as fun��es do sistema.
-- ------------------------------------------------------------

CREATE TABLE FUNCAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  DESCRICAO_MENU VARCHAR(30)  NULL  ,
  IMAGEM_MENU VARCHAR(30)  NULL  ,
  METODO VARCHAR(30)  NULL  ,
  NOME VARCHAR(30)  NULL  ,
  FORMULARIO VARCHAR(30)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Tabela com as fun��es do sistema.' ;



-- ------------------------------------------------------------
-- Detalhe da Redu��o Z;
-- ------------------------------------------------------------

CREATE TABLE R03 (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME_CAIXA VARCHAR(30)  NULL  ,
  ID_GERADO_CAIXA INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_R02 INTEGER UNSIGNED  NULL  ,
  TOTALIZADOR_PARCIAL VARCHAR(10)  NULL  ,
  VALOR_ACUMULADO DECIMAL(18,6)  NULL  ,
  HASH_TRIPA VARCHAR(32)  NULL  ,
  HASH_INCREMENTO INTEGER  NULL  ,
  DATA_SINCRONIZACAO DATE  NULL  ,
  HORA_SINCRONIZACAO VARCHAR(8)  NULL    ,
PRIMARY KEY(ID))
TYPE=InnoDB
COMMENT = 'Detalhe da Redu��o Z;' ;



-- ------------------------------------------------------------
-- Tabela IRRF detalhes
-- ------------------------------------------------------------

CREATE TABLE IRRF_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_IRRF INTEGER UNSIGNED  NOT NULL  ,
  FAIXA INTEGER UNSIGNED  NULL  ,
  DE DECIMAL(18,6)  NULL  ,
  ATE DECIMAL(18,6)  NULL  ,
  TAXA DECIMAL(18,6)  NULL  ,
  DESCONTO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_IRRF_DETALHE(ID_IRRF),
  FOREIGN KEY(ID_IRRF)
    REFERENCES IRRF(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela IRRF detalhes' ;



CREATE TABLE INSS_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_INSS INTEGER UNSIGNED  NOT NULL  ,
  FAIXA INTEGER UNSIGNED  NULL  ,
  DE DECIMAL(18,6)  NULL  ,
  ATE DECIMAL(18,6)  NULL  ,
  TAXA DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_INSS_DETALHE(ID_INSS),
  FOREIGN KEY(ID_INSS)
    REFERENCES INSS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Tabela com os �ndices econ�micos de determinado pa�s.
-- ------------------------------------------------------------

CREATE TABLE INDICE_ECONOMICO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PAIS INTEGER UNSIGNED  NOT NULL  ,
  SIGLA VARCHAR(50)  NULL  ,
  NOME VARCHAR(50)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_PAIS_INDICE_ECONOMICO(ID_PAIS),
  FOREIGN KEY(ID_PAIS)
    REFERENCES PAIS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com os �ndices econ�micos de determinado pa�s.' ;



-- ------------------------------------------------------------
-- G�nero do NCM
-- ------------------------------------------------------------

CREATE TABLE NCM_GENERO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NCM_SECAO INTEGER UNSIGNED  NOT NULL  ,
  GENERO CHAR(2)  NOT NULL   COMMENT 'CAPITULO DO NCM - 2 PRIMEIROS DIGITOS DO NCM' ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_NCM_SECAO_GENERO(ID_NCM_SECAO),
  FOREIGN KEY(ID_NCM_SECAO)
    REFERENCES NCM_SECAO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'G�nero do NCM' ;




-- ------------------------------------------------------------
-- Armazena os dados espec�ficos de pessoa jur�dica.
-- ------------------------------------------------------------

CREATE TABLE PESSOA_JURIDICA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  CNPJ VARCHAR(14)  NULL  ,
  RAZAO_SOCIAL VARCHAR(150)  NULL  ,
  FANTASIA VARCHAR(150)  NULL  ,
  INSCRICAO_MUNICIPAL VARCHAR(30)  NULL  ,
  INSCRICAO_ESTADUAL VARCHAR(30)  NULL  ,
  DATA_CONSTITUICAO DATE  NULL  ,
  CRT INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_PESSOA_JURIDICA(ID_PESSOA),
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os dados espec�ficos de pessoa jur�dica.' ;



CREATE TABLE MOEDA_COTACAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_MOEDAS INTEGER UNSIGNED  NOT NULL  ,
  DATA_COTACAO DATE  NULL  ,
  VALOR_COTACAO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX MOEDA_COTACAO_FKIndex1(ID_MOEDAS),
  FOREIGN KEY(ID_MOEDAS)
    REFERENCES MOEDAS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Armazena os dados do contador da empresa. 
-- ------------------------------------------------------------

CREATE TABLE CONTADOR (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  INSCRICAO_CRC VARCHAR(15)  NULL  ,
  FONE VARCHAR(10)  NULL  ,
  FAX VARCHAR(10)  NULL  ,
  LOGRADOURO VARCHAR(100)  NULL  ,
  NUMERO VARCHAR(10)  NULL  ,
  COMPLEMENTO VARCHAR(100)  NULL  ,
  BAIRRO VARCHAR(60)  NULL  ,
  CEP VARCHAR(8)  NULL  ,
  MUNICIPIO_IBGE INTEGER UNSIGNED  NULL  ,
  UF CHAR(2)  NULL  ,
  EMAIL VARCHAR(250)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX CONTADOR_FKIndex1(ID_PESSOA),
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os dados do contador da empresa.' ;



CREATE TABLE SALARIO_FAMILIA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_INSS INTEGER UNSIGNED  NOT NULL  ,
  FAIXA INTEGER UNSIGNED  NULL  ,
  DE DECIMAL(18,6)  NULL  ,
  ATE DECIMAL(18,6)  NULL  ,
  VALOR DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_INSS_SALARIO_FAMILIA(ID_INSS),
  FOREIGN KEY(ID_INSS)
    REFERENCES INSS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



CREATE TABLE CENTRO_RESULTADO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PLANO_CENTRO_RESULTADO INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(100)  NULL  ,
  CLASSIFICACAO VARCHAR(30)  NULL  ,
  SOFRE_RATEIRO CHAR(1)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX CENTRO_RESULTADO(ID_PLANO_CENTRO_RESULTADO),
  FOREIGN KEY(ID_PLANO_CENTRO_RESULTADO)
    REFERENCES PLANO_CENTRO_RESULTADO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Tabela para armazenar as ag�ncias banc�rias.
-- ------------------------------------------------------------

CREATE TABLE AGENCIA_BANCO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_BANCO INTEGER UNSIGNED  NOT NULL  ,
  CODIGO INTEGER UNSIGNED  NULL  ,
  NOME VARCHAR(100)  NULL  ,
  LOGRADOURO VARCHAR(100)  NULL  ,
  NUMERO VARCHAR(10)  NULL  ,
  CEP VARCHAR(8)  NULL  ,
  MUNICIPIO_IBGE INTEGER UNSIGNED  NULL  ,
  UF CHAR(2)  NULL  ,
  TELEFONE VARCHAR(10)  NULL  ,
  GERENTE VARCHAR(30)  NULL  ,
  CONTATO VARCHAR(30)  NULL  ,
  OBS TEXT  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_BANCO_AGENCIA(ID_BANCO),
  FOREIGN KEY(ID_BANCO)
    REFERENCES BANCO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela para armazenar as ag�ncias banc�rias.' ;



CREATE TABLE TABELA_PRECO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TABELA_MESTRE INTEGER UNSIGNED  NULL  ,
  ID_MOEDAS INTEGER UNSIGNED  NOT NULL  ,
  NOME VARCHAR(100)  NULL  ,
  COEFICIENTE DECIMAL(18,6)  NULL  ,
  PRINCIPAL CHAR(1)  NULL   COMMENT 'Informar se esta tabela � a principal - nao pode ser deletada.' ,
  BASE_CUSTO CHAR(1)  NULL   COMMENT 'Informar se esta tabela � baseada no custo'   ,
PRIMARY KEY(ID)  ,
INDEX TABELA_PRECO_FKIndex1(ID_MOEDAS)  ,
INDEX TABELA_PRECO_FKIndex2(ID_TABELA_MESTRE),
  FOREIGN KEY(ID_MOEDAS)
    REFERENCES MOEDAS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TABELA_MESTRE)
    REFERENCES TABELA_PRECO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;





-- ------------------------------------------------------------
-- Tabela com os sub-grupos dos produtos.
-- ------------------------------------------------------------

CREATE TABLE SUB_GRUPO_PRODUTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_GRUPO INTEGER UNSIGNED  NOT NULL  ,
  NOME VARCHAR(20)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_SUB_GRUPO_GRUPO(ID_GRUPO),
  FOREIGN KEY(ID_GRUPO)
    REFERENCES GRUPO_PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com os sub-grupos dos produtos.' ;



-- ------------------------------------------------------------
-- Esta tabela ir� armazenar os saldos mensais de cada CENTRO DE RESULTADO. Estes registrados ser�o inseridos quando for acionado no executavel uma RONTINA DE ENCERRAMENTO DOS CENTROS DE RESULTADOS. Neste caso quando houver no CAD. do centro de Resultado estiver SOFRE_RATEIO = true, o sistema deve : APRUARAR O SALDO, registrar o encerramento nesta tabela, pegar esse SALDO e fazer a rotina de SUB_RATEIO lan�ado o saldo no campo VALOR_SUB_RATEIO desta tabela. Assim o Centro ter� 2 saldos O VALOR PROPRIO E VALOR ORIUNDO DE OUTROS CENTROS.
-- ------------------------------------------------------------

CREATE TABLE ENCERRA_CENTRO_RESULTADO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CENTRO_RESULTADO INTEGER UNSIGNED  NOT NULL  ,
  COMPETENCIA VARCHAR(7)  NULL  ,
  VALOR_TOTAL DECIMAL(18,6)  NULL  ,
  VALOR_SUB_RATEIO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX ENCERRA_CENTRO_RESULT_FK1(ID_CENTRO_RESULTADO),
  FOREIGN KEY(ID_CENTRO_RESULTADO)
    REFERENCES CENTRO_RESULTADO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Esta tabela ir� armazenar os saldos mensais de cada CENTRO DE RESULTADO. Estes registrados ser�o inseridos quando for acionado no executavel uma RONTINA DE ENCERRAMENTO DOS CENTROS DE RESULTADOS. Neste caso quando houver no CAD. do centro de Resultado estiver SOFRE_RATEIO = true, o sistema deve : APRUARAR O SALDO, registrar o encerramento nesta tabela, pegar esse SALDO e fazer a rotina de SUB_RATEIO lan�ado o saldo no campo VALOR_SUB_RATEIO desta tabela. Assim o Centro ter� 2 saldos O VALOR PROPRIO E VALOR ORIUNDO DE OUTROS CENTROS.' ;



CREATE TABLE RATEIO_CENTRO_RESUL_CAB (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CENTRO_RESULTADO INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(100)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX RATEIO_CENTRO_RESUL_CAB(ID_CENTRO_RESULTADO),
  FOREIGN KEY(ID_CENTRO_RESULTADO)
    REFERENCES CENTRO_RESULTADO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Tabela com os Estados de determinado Pais.
-- ------------------------------------------------------------

CREATE TABLE UF (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PAIS INTEGER UNSIGNED  NOT NULL  ,
  SIGLA CHAR(2)  NULL  ,
  NOME VARCHAR(50)  NULL  ,
  CODIGO_IBGE INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_PAIS_UF(ID_PAIS),
  FOREIGN KEY(ID_PAIS)
    REFERENCES PAIS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com os Estados de determinado Pais.' ;



-- ------------------------------------------------------------
-- Armazena os dados espec�ficos de pessoa f�sica.
-- ------------------------------------------------------------

CREATE TABLE PESSOA_FISICA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  ID_ESTADO_CIVIL INTEGER UNSIGNED  NOT NULL  ,
  CPF VARCHAR(11)  NULL  ,
  RG VARCHAR(20)  NULL  ,
  ORGAO_RG VARCHAR(20)  NULL  ,
  DATA_EMISSAO_RG DATE  NULL  ,
  DATA_NASCIMENTO DATE  NULL  ,
  SEXO CHAR(1)  NULL   COMMENT 'M=Masculino | F=Feminino' ,
  NATURALIDADE VARCHAR(100)  NULL  ,
  NACIONALIDADE VARCHAR(100)  NULL  ,
  RACA CHAR(1)  NULL   COMMENT 'B=Branco | N=Negro | P=Pardo | I=Indio' ,
  TIPO_SANGUE CHAR(3)  NULL   COMMENT 'Exemplos: A+ | AB+ | O-' ,
  CNH_NUMERO VARCHAR(20)  NULL  ,
  CNH_CATEGORIA CHAR(1)  NULL   COMMENT 'A | B | C | D | E' ,
  CNH_VENCIMENTO DATE  NULL  ,
  TITULO_ELEITORAL_NUMERO INTEGER UNSIGNED  NULL  ,
  TITULO_ELEITORAL_ZONA INTEGER UNSIGNED  NULL  ,
  TITULO_ELEITORAL_SECAO INTEGER UNSIGNED  NULL  ,
  RESERVISTA_NUMERO INTEGER UNSIGNED  NULL  ,
  RESERVISTA_CATEGORIA INTEGER UNSIGNED  NULL  ,
  MAE VARCHAR(100)  NOT NULL  ,
  PAI VARCHAR(100)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_ESTADO_CIVIL_PF(ID_ESTADO_CIVIL)  ,
INDEX FK_PESSOA_FISICA(ID_PESSOA),
  FOREIGN KEY(ID_ESTADO_CIVIL)
    REFERENCES ESTADO_CIVIL(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os dados espec�ficos de pessoa f�sica.' ;







CREATE TABLE REPRESENTANTES (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  ID_AGENCIA_BANCO INTEGER UNSIGNED  NOT NULL  ,
  NR_CONTA_BANCO VARCHAR(30)  NULL  ,
  CORE VARCHAR(20)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX REPRESENTANTES_FKIndex1(ID_AGENCIA_BANCO)  ,
INDEX REPRESENTANTES_FKIndex2(ID_PESSOA),
  FOREIGN KEY(ID_AGENCIA_BANCO)
    REFERENCES AGENCIA_BANCO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Esta tabela visa relacionar o CODIGO DE APURACAO PIS COFINS com o respectivo tipo de Receita da DAcon
-- ------------------------------------------------------------

CREATE TABLE COD_APURACAO_RECEITA_DACON (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TIPO_RECEITA_DACON INTEGER UNSIGNED  NOT NULL  ,
  ID_COD_APURACAO INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(ID)  ,
INDEX COD_APURACAO_RECEITA_DACON(ID_TIPO_RECEITA_DACON)  ,
INDEX COD_APURACAO_RECEITA_DACON_F2(ID_COD_APURACAO),
  FOREIGN KEY(ID_TIPO_RECEITA_DACON)
    REFERENCES TIPO_RECEITA_DACON(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_COD_APURACAO)
    REFERENCES COD_APURACAO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
COMMENT = 'Esta tabela visa relacionar o CODIGO DE APURACAO PIS COFINS com o respectivo tipo de Receita da DAcon' ;



-- ------------------------------------------------------------
-- Contas cont�beis da empresa.
-- ------------------------------------------------------------

CREATE TABLE CONTABIL_CONTA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PLANO_CONTAS INTEGER UNSIGNED  NOT NULL  ,
  ID_PLANO_CONTA_REF_SPED INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTA_PAI INTEGER UNSIGNED  NOT NULL  ,
  CLASSIFICACAO VARCHAR(30)  NULL  ,
  TIPO CHAR(1)  NULL   COMMENT 'S=Sint�tica | A=Anal�tica' ,
  DESCRICAO VARCHAR(100)  NULL  ,
  DATA_INCLUSAO DATE  NULL  ,
  SITUACAO CHAR(1)  NULL   COMMENT 'A=Ativa | I=Inativa' ,
  NATUREZA CHAR(1)  NULL   COMMENT 'C=Credora | D=Devedora' ,
  PATRIMONIO_RESULTADO CHAR(1)  NOT NULL   COMMENT 'P=Patrimonio | R=Resultado' ,
  LIVRO_CAIXA CHAR(1)  NULL   COMMENT 'S=Sim | N=N�o' ,
  DFC CHAR(1)  NULL   COMMENT 'N=N�o participa | O=Atividades Operacionais | F=Atividades de Financiamento | I=Atividades de Investimento' ,
  ORDEM VARCHAR(20)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_CONTA_SPED_CONTA(ID_PLANO_CONTA_REF_SPED)  ,
INDEX CONTABIL_CONTA_FKIndex2(ID_PLANO_CONTAS),
  FOREIGN KEY(ID_PLANO_CONTA_REF_SPED)
    REFERENCES PLANO_CONTA_REF_SPED(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PLANO_CONTAS)
    REFERENCES PLANO_CONTAS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Contas cont�beis da empresa.' ;









-- ------------------------------------------------------------
-- Tabela com a Nomeclatura Comum do Mercosul (NCM)
-- ------------------------------------------------------------

CREATE TABLE NCM (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NCM_SECAO INTEGER UNSIGNED  NOT NULL  ,
  ID_NCM_POSICAO INTEGER UNSIGNED  NOT NULL  ,
  NCM_COMPLETO VARCHAR(8)  NULL   COMMENT 'C�digo NCM completo' ,
  DESCRICAO VARCHAR(200)  NULL  ,
  GENERO CHAR(2)  NULL   COMMENT 'Cap�tulo Tabela IPI'   ,
PRIMARY KEY(ID)  ,
INDEX FK_NCM_POSICAO(ID_NCM_POSICAO)  ,
INDEX FK_NCM_SECAO(ID_NCM_SECAO),
  FOREIGN KEY(ID_NCM_POSICAO)
    REFERENCES NCM_POSICAO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_NCM_SECAO)
    REFERENCES NCM_SECAO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com a Nomeclatura Comum do Mercosul (NCM)' ;





-- ------------------------------------------------------------
-- Tabela de transportadoras
-- ------------------------------------------------------------

CREATE TABLE TRANSPORTADORA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  DATA_CADASTRO DATE  NULL  ,
  OBSERVACOES TEXT  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_PESSOA_TRANSPORTADORA(ID_PESSOA)  ,
INDEX TRANSPORTADORA_FKIndex2(ID_CONTABIL_CONTA),
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela de transportadoras' ;



-- ------------------------------------------------------------
-- Vinculo entre PAPEL e FUNCAO pare definir os n�veis de acesso do sistema.
-- ------------------------------------------------------------

CREATE TABLE PAPEL_FUNCAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PAPEL INTEGER UNSIGNED  NOT NULL  ,
  ID_FUNCAO INTEGER UNSIGNED  NOT NULL  ,
  PODE_CONSULTAR CHAR(1)  NULL   COMMENT 'Valores poss�veis: S-Sim | N-N�o' ,
  PODE_INSERIR CHAR(1)  NULL   COMMENT 'Valores poss�veis: S-Sim | N-N�o' ,
  PODE_ALTERAR CHAR(1)  NULL   COMMENT 'Valores poss�veis: S-Sim | N-N�o' ,
  PODE_EXCLUIR CHAR(1)  NULL   COMMENT 'Valores poss�veis: S-Sim | N-N�o' ,
  HABILITADO CHAR(1)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_PAPEL_FUNCAO(ID_PAPEL)  ,
INDEX FK_FUNCAO_PAPEL(ID_FUNCAO),
  FOREIGN KEY(ID_PAPEL)
    REFERENCES PAPEL(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_FUNCAO)
    REFERENCES FUNCAO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Vinculo entre PAPEL e FUNCAO pare definir os n�veis de acesso do sistema.' ;







-- ------------------------------------------------------------
-- Tabela das operadoras de plano de sa�de.
-- ------------------------------------------------------------

CREATE TABLE OPERADORA_PLANO_SAUDE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  REGISTRO_ANS VARCHAR(20)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX OPERADORA_PLANO_SAUDE_FKIndex1(ID_CONTABIL_CONTA)  ,
INDEX OPERADORA_PLANO_SAUDE_FKIndex2(ID_PESSOA),
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela das operadoras de plano de sa�de.' ;



-- ------------------------------------------------------------
-- Cadastro das empresas de transporte.
-- ------------------------------------------------------------

CREATE TABLE EMPRESA_TRANSPORTE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  UF CHAR(2)  NULL  ,
  NOME VARCHAR(100)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX EMPRESA_TRANSPORTE_FKIndex1(ID_CONTABIL_CONTA)  ,
INDEX EMPRESA_TRANSPORTE_FKIndex2(ID_PESSOA),
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Cadastro das empresas de transporte.' ;



CREATE TABLE HOLDING_MATRIZ (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_HOLDING INTEGER UNSIGNED  NOT NULL  ,
  ID_MATRIZ INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(ID)  ,
INDEX HOLDING_MATRIZ_FKIndex1(ID_MATRIZ)  ,
INDEX HOLDING_MATRIZ_FKIndex2(ID_HOLDING),
  FOREIGN KEY(ID_MATRIZ)
    REFERENCES MATRIZ(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_HOLDING)
    REFERENCES HOLDING(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



CREATE TABLE NATUREZA_FINANCEIRA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CENTRO_RESULTADO INTEGER UNSIGNED  NOT NULL  ,
  ID_PLANO_NAT_FINANCEIRA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(200)  NULL  ,
  CLASSIFICASSAO VARCHAR(30)  NULL  ,
  TIPO CHAR(1)  NULL  ,
  HISTORICO VARCHAR(200)  NULL  ,
  SINTETICO CHAR(1)  NULL  ,
  SINAL CHAR(1)  NULL  ,
  APLICACAO VARCHAR(255)  NULL  ,
  APARECE_CAIXA CHAR(1)  NULL  ,
  APARECE_A_PAGAR CHAR(1)  NULL  ,
  APARECE_A_RECEBER CHAR(1)  NULL  ,
  APARECE_PRODUTO CHAR(1)  NULL  ,
  APARECE_ENTRADA CHAR(1)  NULL  ,
  APARECE_TESOURARIA CHAR(1)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX NATUREZA_FINANCEIRA_FK2(ID_CONTABIL_CONTA)  ,
INDEX NATUREZA_FINANCEIRA_FKIndex2(ID_PLANO_NAT_FINANCEIRA)  ,
INDEX NATUREZA_FINANCEIRA_FKIndex3(ID_CENTRO_RESULTADO),
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PLANO_NAT_FINANCEIRA)
    REFERENCES PLANO_NAT_FINANCEIRA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CENTRO_RESULTADO)
    REFERENCES CENTRO_RESULTADO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



CREATE TABLE EMPRESA_PLANOS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PLANO_CENTRO_RESULTADO INTEGER UNSIGNED  NOT NULL  ,
  ID_PLANO_NAT_FINANCEIRA INTEGER UNSIGNED  NOT NULL  ,
  ID_PLANO_CONTAS INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(ID)  ,
INDEX EMPRESA_PLANO_CONTAS_FK1(ID_PLANO_CONTAS)  ,
INDEX EMPRESA_PLANO_CONTAS_FK2(ID_PLANO_NAT_FINANCEIRA)  ,
INDEX EMPRESA_PLANO_CONTAS_FK3(ID_PLANO_CENTRO_RESULTADO),
  FOREIGN KEY(ID_PLANO_CONTAS)
    REFERENCES PLANO_CONTAS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PLANO_NAT_FINANCEIRA)
    REFERENCES PLANO_NAT_FINANCEIRA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PLANO_CENTRO_RESULTADO)
    REFERENCES PLANO_CENTRO_RESULTADO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Esta tabela ir� armazernar os paramentros de SUB_RATEIRO. Isto � quando o Saldo de um CENTRO ser� rateado para outros CENTROS. Ex. o saldo do CENTRO ADM ser� rateado para os CENTROS PROUDCAO E COMERCIAL.
-- ------------------------------------------------------------

CREATE TABLE RATEIO_CENTRO_RESUL_DET (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CENTRO_RESULTADO_DESTINO INTEGER UNSIGNED  NOT NULL  ,
  ID_CENTRO_RESULTADO_ORIGEM INTEGER UNSIGNED  NOT NULL  ,
  ID_RATEIO_CENTRO_RESUL_CAB INTEGER UNSIGNED  NOT NULL  ,
  PORCENTO_RATEIO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX RATEIO_CENTRO_RESUL_DET_FK1(ID_RATEIO_CENTRO_RESUL_CAB)  ,
INDEX RATEIO_CENTRO_RESUL_DET_FK2(ID_CENTRO_RESULTADO_DESTINO)  ,
INDEX RATEIO_CENTRO_RESUL_DET_FK3(ID_CENTRO_RESULTADO_ORIGEM),
  FOREIGN KEY(ID_RATEIO_CENTRO_RESUL_CAB)
    REFERENCES RATEIO_CENTRO_RESUL_CAB(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CENTRO_RESULTADO_DESTINO)
    REFERENCES CENTRO_RESULTADO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CENTRO_RESULTADO_ORIGEM)
    REFERENCES CENTRO_RESULTADO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Esta tabela ir� armazernar os paramentros de SUB_RATEIRO. Isto � quando o Saldo de um CENTRO ser� rateado para outros CENTROS. Ex. o saldo do CENTRO ADM ser� rateado para os CENTROS PROUDCAO E COMERCIAL.' ;



-- ------------------------------------------------------------
-- Tabela com a rela�ao de fornecedores das empresas.
-- ------------------------------------------------------------

CREATE TABLE FORNECEDOR (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  ID_ATIVIDADE_FOR_CLI INTEGER UNSIGNED  NOT NULL  ,
  ID_SITUACAO_FOR_CLI INTEGER UNSIGNED  NOT NULL  ,
  DESDE DATE  NULL  ,
  OPTANTE_SIMPLES_NACIONAL CHAR(1)  NULL   COMMENT 'Indica se � optante do simples nacional' ,
  LOCALIZACAO CHAR(1)  NULL   COMMENT 'N = Nacional, E = Exterior' ,
  DATA_CADASTRO DATE  NULL  ,
  SOFRE_RETENCAO CHAR(1)  NULL   COMMENT 'Valores poss�veis: S-Sim | N-N�o - Informa se o fornecedor sofre reten��o de pagamentos caso ocorra algum tipo de problema.' ,
  CHEQUE_NOMINAL_A VARCHAR(100)  NULL  ,
  OBSERVACOES TEXT  NULL  ,
  CONTA_REMETENTE VARCHAR(30)  NULL   COMMENT 'Conta vinculada ao plano de contas cont�bil.' ,
  PRAZO_MEDIO_ENTEGRA DECIMAL(4,0)  NULL  ,
  GERA_FATURAMENTO CHAR(1)  NULL   COMMENT 'indicar se este fornecedor libera a prazo ou nao.' ,
  NUM_DIAS_PRIM_VENC DECIMAL(4,0)  NULL   COMMENT 'numero de dias do primeiro vencimento' ,
  NUM_DIAS_INTERVALO DECIMAL(4,0)  NULL   COMMENT 'intervalo de dias entre as parcelas' ,
  QTD_PARCELAS DECIMAL(4,0)  NULL   COMMENT 'quantidade de parcelas que o forncedor permite'   ,
PRIMARY KEY(ID)  ,
INDEX FK_SITUACAO_FORNECEDOR(ID_SITUACAO_FOR_CLI)  ,
INDEX FK_ATIVIDADE_FORNECEDOR(ID_ATIVIDADE_FOR_CLI)  ,
INDEX FK_PESSOA_FORNECEDOR(ID_PESSOA)  ,
INDEX FORNECEDOR_FKIndex4(ID_CONTABIL_CONTA),
  FOREIGN KEY(ID_SITUACAO_FOR_CLI)
    REFERENCES SITUACAO_FOR_CLI(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_ATIVIDADE_FOR_CLI)
    REFERENCES ATIVIDADE_FOR_CLI(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com a rela�ao de fornecedores das empresas.' ;











-- ------------------------------------------------------------
-- Esta tabela ir� armazenar todos os lan�amentos nos CENTROS DE RESULTADOS (tambem chamado de CENTRO DE CUSTOS).
-- ------------------------------------------------------------

CREATE TABLE LANCA_CENTRO_RESULTADO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CENTRO_RESULTADO INTEGER UNSIGNED  NOT NULL  ,
  VALOR INTEGER UNSIGNED  NULL  ,
  HISTORICO INTEGER UNSIGNED  NULL  ,
  DOCUMENTO VARCHAR(30)  NULL  ,
  DATA_LANCAMENTO DATE  NULL  ,
  DATA_INC DATE  NULL  ,
  ORIGEM_DE_RATEIO CHAR(1)  NULL   COMMENT 'Inforamar se este lan�amento � originado de rateiro. Isto ocorre quando o saldo de CENTRO ser� rateada para outros CENTROS.'   ,
PRIMARY KEY(ID)  ,
INDEX LANCA_CENTRO_RESULTADO_FK1(ID_CENTRO_RESULTADO),
  FOREIGN KEY(ID_CENTRO_RESULTADO)
    REFERENCES CENTRO_RESULTADO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Esta tabela ir� armazenar todos os lan�amentos nos CENTROS DE RESULTADOS (tambem chamado de CENTRO DE CUSTOS).' ;




-- ------------------------------------------------------------
-- Tabela com as cidades de determinado Estado.
-- ------------------------------------------------------------

CREATE TABLE MUNICIPIO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_UF INTEGER UNSIGNED  NOT NULL  ,
  NOME VARCHAR(100)  NULL  ,
  CODIGO_IBGE INTEGER UNSIGNED  NULL  ,
  CODIGO_RECEITA_FEDERAL INTEGER UNSIGNED  NULL  ,
  CODIGO_ESTADUAL INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_UF_MUNICIPIO(ID_UF),
  FOREIGN KEY(ID_UF)
    REFERENCES UF(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com as cidades de determinado Estado.' ;



-- ------------------------------------------------------------
-- Tabela dos bairros de uma cidade
-- ------------------------------------------------------------

CREATE TABLE BAIRRO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_MUNICIPIO INTEGER UNSIGNED  NOT NULL  ,
  NOME VARCHAR(100)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_MUNICIPIO_BAIRRO(ID_MUNICIPIO),
  FOREIGN KEY(ID_MUNICIPIO)
    REFERENCES MUNICIPIO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela dos bairros de uma cidade' ;



-- ------------------------------------------------------------
-- Tabela com a rela��o de CEPs do Brasil.
-- ------------------------------------------------------------

CREATE TABLE CEP (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_BAIRRO INTEGER UNSIGNED  NOT NULL  ,
  CEP VARCHAR(8)  NULL  ,
  LOGRADOURO VARCHAR(100)  NULL  ,
  COMPLEMENTO VARCHAR(100)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_BAIRRO_CEP(ID_BAIRRO),
  FOREIGN KEY(ID_BAIRRO)
    REFERENCES BAIRRO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com a rela��o de CEPs do Brasil.' ;



-- ------------------------------------------------------------
-- Itiner�rios das empresas de transporte.
-- ------------------------------------------------------------

CREATE TABLE EMPRESA_TRANSPORTE_ITINERARIO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA_TRANSPORTE INTEGER UNSIGNED  NOT NULL  ,
  NOME VARCHAR(100)  NULL   COMMENT 'Nome itiner�rio' ,
  TARIFA DECIMAL(18,6)  NULL  ,
  TRAJETO TEXT  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_EMPRESA_TRANSP_ITINERARIO(ID_EMPRESA_TRANSPORTE),
  FOREIGN KEY(ID_EMPRESA_TRANSPORTE)
    REFERENCES EMPRESA_TRANSPORTE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Itiner�rios das empresas de transporte.' ;




-- ------------------------------------------------------------
-- Tabela que armazena os pedidos de compra.
-- ------------------------------------------------------------

CREATE TABLE PEDIDO_COMPRA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_FORNECEDOR INTEGER UNSIGNED  NOT NULL  ,
  ID_TIPO_PEDIDO_COMPRA INTEGER UNSIGNED  NOT NULL  ,
  DATA_PEDIDO DATE  NULL  ,
  DATA_PREVISTA_ENTREGA DATE  NULL  ,
  DATA_PREVISAO_PAGAMENTO DATE  NULL  ,
  LOCAL_ENTREGA VARCHAR(100)  NULL  ,
  LOCAL_COBRANCA VARCHAR(100)  NULL  ,
  CONTATO VARCHAR(30)  NULL  ,
  VALOR_SUBTOTAL DECIMAL(18,6)  NULL  ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_TOTAL_PEDIDO DECIMAL(18,6)  NULL  ,
  TIPO_FRETE CHAR(1)  NULL   COMMENT 'C=CIF | F=FOB' ,
  FORMA_PAGAMENTO CHAR(1)  NULL   COMMENT '0=pagamento � vista | 1=pagamento � prazo | 2=outros. (Campo indPag da NF-e)' ,
  BASE_CALCULO_ICMS DECIMAL(18,6)  NULL  ,
  VALOR_ICMS DECIMAL(18,6)  NULL  ,
  BASE_CALCULO_ICMS_ST DECIMAL(18,6)  NULL  ,
  VALOR_ICMS_ST DECIMAL(18,6)  NULL  ,
  VALOR_TOTAL_PRODUTOS DECIMAL(18,6)  NULL  ,
  VALOR_FRETE DECIMAL(18,6)  NULL  ,
  VALOR_SEGURO DECIMAL(18,6)  NULL  ,
  VALOR_OUTRAS_DESPESAS DECIMAL(18,6)  NULL  ,
  VALOR_IPI DECIMAL(18,6)  NULL  ,
  VALOR_TOTAL_NF DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_TIPO_PEDIDO_COMPRA(ID_TIPO_PEDIDO_COMPRA)  ,
INDEX PEDIDO_COMPRA_FKIndex3(ID_FORNECEDOR),
  FOREIGN KEY(ID_TIPO_PEDIDO_COMPRA)
    REFERENCES TIPO_PEDIDO_COMPRA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_FORNECEDOR)
    REFERENCES FORNECEDOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que armazena os pedidos de compra.' ;





-- ------------------------------------------------------------
-- Armazena os dados do respons�vel legal pela empresa. 
-- ------------------------------------------------------------

CREATE TABLE RESPONSAVEL_SOCIOS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  FONE VARCHAR(10)  NULL  ,
  FAX VARCHAR(10)  NULL  ,
  LOGRADOURO VARCHAR(100)  NULL  ,
  NUMERO VARCHAR(10)  NULL  ,
  COMPLEMENTO VARCHAR(100)  NULL  ,
  BAIRRO VARCHAR(60)  NULL  ,
  CEP VARCHAR(8)  NULL  ,
  MUNICIPIO_IBGE INTEGER UNSIGNED  NULL  ,
  UF CHAR(2)  NULL  ,
  EMAIL VARCHAR(250)  NULL  ,
  PIS_NIT INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID)  ,
INDEX RESPONSAVEL_SOCIOS_FKIndex1(ID_CONTABIL_CONTA)  ,
INDEX RESPONSAVEL_SOCIOS_FKIndex2(ID_PESSOA),
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os dados do respons�vel legal pela empresa.' ;



CREATE TABLE SOCIO_DEPENDENTES (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_RESPONSAVEL_SOCIOS INTEGER UNSIGNED  NOT NULL  ,
  ID_TIPO_RELACIONAMENTO INTEGER UNSIGNED  NOT NULL  ,
  NOME INTEGER UNSIGNED  NULL  ,
  DATA_NASCIMENTO DATE  NULL  ,
  DATA_INICIO_DEPEDENCIA DATE  NULL  ,
  DATA_FIM_DEPENDENCIA DATE  NULL  ,
  CPF VARCHAR(11)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX SOCIO_DEPENDENTES_FKIndex1(ID_TIPO_RELACIONAMENTO)  ,
INDEX SOCIO_DEPENDENTES_FKIndex2(ID_RESPONSAVEL_SOCIOS),
  FOREIGN KEY(ID_TIPO_RELACIONAMENTO)
    REFERENCES TIPO_RELACIONAMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_RESPONSAVEL_SOCIOS)
    REFERENCES RESPONSAVEL_SOCIOS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Tabela das sindicatos patronais
-- ------------------------------------------------------------

CREATE TABLE SINDICATO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  COD_BANCO INTEGER UNSIGNED  NULL  ,
  COD_AGENCIA INTEGER UNSIGNED  NULL  ,
  CONTA_BANCO VARCHAR(20) BINARY  NULL  ,
  COD_CEDENTE VARCHAR(30)  NULL  ,
  LOGRADOURO VARCHAR(100)  NULL  ,
  NUMERO VARCHAR(10)  NULL  ,
  BAIRRO VARCHAR(100)  NULL  ,
  MUNICIPIO_IBGE INTEGER UNSIGNED  NULL  ,
  UF CHAR(2)  NULL  ,
  FONE VARCHAR(14)  NULL  ,
  FONE2 VARCHAR(14)  NULL  ,
  EMAIL VARCHAR(100)  NULL  ,
  TIPO_SINDICATO CHAR(1)  NULL   COMMENT 'P=patronal, E=empregados' ,
  DATA_BASE DATE  NULL    ,
PRIMARY KEY(ID)  ,
INDEX SINDICATO_FKIndex1(ID_CONTABIL_CONTA)  ,
INDEX SINDICATO_FKIndex2(ID_PESSOA),
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela das sindicatos patronais' ;




-- ------------------------------------------------------------
-- Esta tabela ir� armazenar os pararamentros para o Rateio autom�tico dos lan�amentos nas CONTA_CONTABIL para os CENTRO_RESULTADO. Toda vez que aquela conta recebe um lan�amento o sistema deve ter uma rotina que checa se esta conta posssui Paramentro nesta tabela e procede aos devidos lan�amentos nos CENTROS DE RESULTADOS. A vantagem deste procedimento � que vai evitar que usuario tenha de fazer isso de forma Manual perdendo tempo e aumentando as chances de erro operacional. Ex. A CONTA DE LUZ da empresa � compartilhada por todos os CENTROS DE RESULTADOS, mas a empresa precisa fazer esse rateio de forma que cada CENTRO recebe seu respectivo valor. Neste caso, iremos no CAD DA  CONTA CONTABIL informar quais os CENTROS e os PERCENTUAIS que ser�o RATEADOS pra cada CENTRO.
-- ------------------------------------------------------------

CREATE TABLE CONTA_CONTABIL_RATEIO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CENTRO_RESULTADO INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  PORCENTO_RATEIRO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX CONTA_CONTABIL_RATEIO_FK1(ID_CONTABIL_CONTA)  ,
INDEX CONTA_CONTABIL_RATEIO_FK2(ID_CENTRO_RESULTADO),
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CENTRO_RESULTADO)
    REFERENCES CENTRO_RESULTADO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Esta tabela ir� armazenar os pararamentros para o Rateio autom�tico dos lan�amentos nas CONTA_CONTABIL para os CENTRO_RESULTADO. Toda vez que aquela conta recebe um lan�amento o sistema deve ter uma rotina que checa se esta conta posssui Paramentro nesta tabela e procede aos devidos lan�amentos nos CENTROS DE RESULTADOS. A vantagem deste procedimento � que vai evitar que usuario tenha de fazer isso de forma Manual perdendo tempo e aumentando as chances de erro operacional. Ex. A CONTA DE LUZ da empresa � compartilhada por todos os CENTROS DE RESULTADOS, mas a empresa precisa fazer esse rateio de forma que cada CENTRO recebe seu respectivo valor. Neste caso, iremos no CAD DA  CONTA CONTABIL informar quais os CENTROS e os PERCENTUAIS que ser�o RATEADOS pra cada CENTRO.' ;



CREATE TABLE TRANSPORTADORA_MUNICIPIO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_MUNICIPIO INTEGER UNSIGNED  NOT NULL  ,
  ID_TRANSPORTADORA INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(ID)  ,
INDEX TRANSPORTADORA_MUNICIPIO(ID_TRANSPORTADORA)  ,
INDEX TRANSPORTADORA_MUNICIPIO3(ID_MUNICIPIO),
  FOREIGN KEY(ID_TRANSPORTADORA)
    REFERENCES TRANSPORTADORA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_MUNICIPIO)
    REFERENCES MUNICIPIO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Uma cota��o pode ter v�rios fornecedores e um fornecedor pode fazer parte de v�rias cota��es.
-- ------------------------------------------------------------

CREATE TABLE FORNECEDOR_COTACAO_COMPRA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_FORNECEDOR INTEGER UNSIGNED  NOT NULL  ,
  ID_COTACAO_COMPRA INTEGER UNSIGNED  NOT NULL  ,
  PRAZO_ENTREGA VARCHAR(30)  NULL  ,
  CONDICOES_PAGAMENTO VARCHAR(30)  NULL  ,
  VALOR_SUBTOTAL DECIMAL(18,6)  NULL  ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL  ,
  TOTAL DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_COTACAO_FORNECEDOR(ID_COTACAO_COMPRA)  ,
INDEX FORNECEDOR_COTACAO_COMPRA(ID_FORNECEDOR),
  FOREIGN KEY(ID_COTACAO_COMPRA)
    REFERENCES COTACAO_COMPRA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_FORNECEDOR)
    REFERENCES FORNECEDOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
COMMENT = 'Uma cota��o pode ter v�rios fornecedores e um fornecedor pode fazer parte de v�rias cota��es.' ;



-- ------------------------------------------------------------
-- Tabela com as empresas que utilizam o sistema. ERP multi-empresa.
-- ------------------------------------------------------------

CREATE TABLE EMPRESA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_MATRIZ INTEGER UNSIGNED  NOT NULL  ,
  ID_RESPONSAVEL_SOCIOS INTEGER UNSIGNED  NOT NULL  ,
  ID_SINDICATO_PATRONAL INTEGER UNSIGNED  NOT NULL  ,
  ID_FPAS INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTADOR INTEGER UNSIGNED  NOT NULL  ,
  RAZAO_SOCIAL VARCHAR(150)  NULL  ,
  NOME_FANTASIA VARCHAR(150)  NULL  ,
  CNPJ VARCHAR(14)  NULL  ,
  INSCRICAO_ESTADUAL VARCHAR(30)  NULL  ,
  INSCRICAO_ESTADUAL_ST VARCHAR(30)  NULL  ,
  INSCRICAO_MUNICIPAL VARCHAR(30) BINARY  NULL  ,
  INSCRICAO_JUNTA_COMERCIAL VARCHAR(30)  NULL  ,
  DATA_INSC_JUNTA_COMERCIAL DATE  NULL  ,
  TIPO CHAR(1)  NULL   COMMENT 'Valores poss�veis: M-Matriz | F-Filial | D=Dep�sito' ,
  DATA_CADASTRO DATE  NULL  ,
  DATA_INICIO_ATIVIDADES DATE  NULL  ,
  SUFRAMA VARCHAR(9)  NULL  ,
  EMAIL VARCHAR(250)  NULL  ,
  IMAGEM_LOGOTIPO TEXT  NULL  ,
  CRT CHAR(1)  NULL   COMMENT 'C�digo Regime Tribut�rio [1=Simples Nacional | 2=Simples Nacional - excesso de sublimite da receita bruta  | 2=Simples Nacional - excesso de sublimite da receita bruta | 3=Regime Normal' ,
  TIPO_REGIME CHAR(1)  NULL   COMMENT '1-Lucro REAL;2-Lucro presumido;3-Simples nacional;' ,
  ALIQUOTA_PIS DECIMAL(18,6)  NULL   COMMENT 'Aliquota do PIS padrao para a empresa' ,
  CONTATO VARCHAR(50)  NULL   COMMENT 'Aliquota padrao do Confins' ,
  ALIQUOTA_COFINS DECIMAL(18,6)  NULL  ,
  CODIGO_IBGE_CIDADE INTEGER UNSIGNED  NULL  ,
  CODIGO_IBGE_UF INTEGER UNSIGNED  NULL  ,
  COD_TERCEIROS DECIMAL(18,6)  NULL   COMMENT 'Codigo das contribuicoes para terceiros incidentes sobre a folha de pagamento (os terceiros sao SESI, SENAI, SEBRAE, INCRA, etc) esta tabela consta na IN 971/2009  da RFB' ,
  COD_GPS INTEGER UNSIGNED  NULL   COMMENT 'Codigo de pagamento da GPS, trata-se de tabale encontrada no site da Previdencia Social' ,
  ALIQUOTA_SAT DECIMAL(18,6)  NULL   COMMENT 'Aliquota do Seguro contra Acidente de trabalho incidente sobre a folha de pagametno dos empregados'   ,
PRIMARY KEY(ID)  ,
INDEX FK_CONTADOR_EMPRESA(ID_CONTADOR)  ,
INDEX FK_RESPONSAVEL_SOCIO_EMPRESA(ID_RESPONSAVEL_SOCIOS)  ,
INDEX EMPRESA_FKIndex4(ID_FPAS)  ,
INDEX EMPRESA_FK6(ID_SINDICATO_PATRONAL)  ,
INDEX EMPRESA_FKIndex6(ID_MATRIZ),
  FOREIGN KEY(ID_CONTADOR)
    REFERENCES CONTADOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_RESPONSAVEL_SOCIOS)
    REFERENCES RESPONSAVEL_SOCIOS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_FPAS)
    REFERENCES FPAS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_SINDICATO_PATRONAL)
    REFERENCES SINDICATO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_MATRIZ)
    REFERENCES MATRIZ(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com as empresas que utilizam o sistema. ERP multi-empresa.' ;











-- ------------------------------------------------------------
-- Tabela para controle da Situa��o Tributaria por UF.
-- ------------------------------------------------------------

CREATE TABLE IMPOSTO_ST_UF (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(50)  NULL  ,
  DATA_CADASTRO DATE  NULL  ,
  DATA_ALTERACAO DATE  NULL  ,
  TAXA_ACRESCIMO_AC DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_AL DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_AP DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_AM DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_BA DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_CE DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_DF DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_ES DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_GO DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_MA DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_MT DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_MS DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_MG DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_PA DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_PB DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_PR DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_PE DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_PI DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_RJ DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_RN DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_RS DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_RO DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_RR DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_SC DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_SP DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_SE DECIMAL(18,6)  NULL  ,
  TAXA_ACRESCIMO_TO DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_AC DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_AL DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_AP DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_AM DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_BA DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_CE DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_DF DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_ES DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_GO DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_MA DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_MT DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_MS DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_MG DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_PA DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_PB DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_PR DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_PE DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_PI DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_RJ DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_RN DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_RS DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_RO DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_RR DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_SC DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_SP DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_SE DECIMAL(18,6)  NULL  ,
  VALOR_PAUTA_TO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_EMPRESA_IMPOSTO_ST_UF(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela para controle da Situa��o Tributaria por UF.' ;



-- ------------------------------------------------------------
-- Cadastro dos lan�amentos padr�es: aqueles que s�o usados freq�entemente, permitindo agilidade no momento dos lan�amentos - detalhes.
-- ------------------------------------------------------------

CREATE TABLE LANCAMENTO_PADRAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(100)  NULL  ,
  HISTORICO TEXT  NULL  ,
  ID_CONTA_DEBITO INTEGER UNSIGNED  NULL   COMMENT 'Informar a conta a ser debitada neste lan�amento' ,
  ID_CONTA_CREDITO INTEGER UNSIGNED  NULL   COMMENT 'Informar a conta a ser creditada'   ,
PRIMARY KEY(ID)  ,
INDEX LANCAMENTO_PADRAO_FK2(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Cadastro dos lan�amentos padr�es: aqueles que s�o usados freq�entemente, permitindo agilidade no momento dos lan�amentos - detalhes.' ;





-- ------------------------------------------------------------
-- Esta tabela deve ir� armazenar as diferentes opera��es presentes na empresa conforme cada tratamento tribut�rio nela existente do ponto de vista do Cliente ou Destinat�rio. Ou seja, para esp�cie de destinat�rio, assim considerado �queles para os quais houvesse diferen�a de tratamento tribut�rio.
-- Ex. 
-- 1. Venda a  n�o contribuinte. Ex. Consumidor final, Construtora ou empresas que comprem os produtos para uso pr�prio.
-- 2. Venda para Lojistas (Revendedor)
-- 3. Venda Consumidor fora do Estado
-- 4. Venda a Contribuinte Usu�rio final (ex. construtora, empresa que comprem para consumo)
-- 5. Venda Lojista fora do Estado
-- ------------------------------------------------------------

CREATE TABLE OPERACAO_FISCAL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(100) BINARY  NULL  ,
  COMENTARIO BLOB  NULL  ,
  ID_CFOP INTEGER UNSIGNED  NULL  ,
  DESCRICAO_NA_NF VARCHAR(100)  NULL  ,
  MENSAGEM_FISCAL TEXT  NULL    ,
PRIMARY KEY(ID)  ,
INDEX OPERACAO_FISCAL_FK1(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
COMMENT = 'Esta tabela deve ir� armazenar as diferentes opera��es presentes na empresa conforme cada tratamento tribut�rio nela existente do ponto de vista do Cliente ou Destinat�rio. Ou seja, para esp�cie de destinat�rio, assim considerado �queles para os quais houvesse diferen�a de tratamento tribut�rio.  Ex.   1. Venda a  n�o contribuinte. Ex. Consumidor final, Construtora ou empresas que comprem os produtos para uso pr�prio.  2. Venda para Lojistas (Revendedor)  3. Venda Consumidor fora do Estado  4. Venda a Contribuinte Usu�rio final (ex. construtora, empresa que comprem para consumo)  5. Venda Lojista fora do Estado' ;



-- ------------------------------------------------------------
-- Armazena os tipos de requisi��o:
-- 
-- 01=INTERNA = requisi��o onde os itens s�o utilizados pela pr�pria empresa
-- 02=EXTERNA = requisi��o onde os itens s�o utilizados para venda ao consumidor
-- ------------------------------------------------------------

CREATE TABLE TIPO_REQUISICAO_COMPRA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  CODIGO CHAR(2)  NULL   COMMENT '01=Interna | 02=Normal' ,
  NOME VARCHAR(30)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID)  ,
INDEX TIPO_REQUISICAO_COMPRA_FK(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os tipos de requisi��o:    01=INTERNA = requisi��o onde os itens s�o utilizados pela pr�pria empresa  02=EXTERNA = requisi��o onde os itens s�o utilizados para venda ao consumidor' ;




-- ------------------------------------------------------------
-- Tabela que armazena os dados do ICMS Interestadual.
-- ------------------------------------------------------------

CREATE TABLE ICMS_INTERESTADUAL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(50)  NULL  ,
  DATA_CADASTRO DATE  NULL  ,
  DATA_ALTERACAO DATE  NULL  ,
  UF_AC DECIMAL(18,6)  NULL  ,
  UF_AL DECIMAL(18,6)  NULL  ,
  UF_AP DECIMAL(18,6)  NULL  ,
  UF_AM DECIMAL(18,6)  NULL  ,
  UF_BA DECIMAL(18,6)  NULL  ,
  UF_CE DECIMAL(18,6)  NULL  ,
  UF_DF DECIMAL(18,6)  NULL  ,
  UF_ES DECIMAL(18,6)  NULL  ,
  UF_GO DECIMAL(18,6)  NULL  ,
  UF_MA DECIMAL(18,6)  NULL  ,
  UF_MT DECIMAL(18,6)  NULL  ,
  UF_MS DECIMAL(18,6)  NULL  ,
  UF_MG DECIMAL(18,6)  NULL  ,
  UF_PA DECIMAL(18,6)  NULL  ,
  UF_PB DECIMAL(18,6)  NULL  ,
  UF_PR DECIMAL(18,6)  NULL  ,
  UF_PE DECIMAL(18,6)  NULL  ,
  UF_PI DECIMAL(18,6)  NULL  ,
  UF_RJ DECIMAL(18,6)  NULL  ,
  UF_RN DECIMAL(18,6)  NULL  ,
  UF_RS DECIMAL(18,6)  NULL  ,
  UF_RO DECIMAL(18,6)  NULL  ,
  UF_RR DECIMAL(18,6)  NULL  ,
  UF_SC DECIMAL(18,6)  NULL  ,
  UF_SP DECIMAL(18,6)  NULL  ,
  UF_SE DECIMAL(18,6)  NULL  ,
  UF_TO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_EMPRESA_ICMS_INTERES(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que armazena os dados do ICMS Interestadual.' ;



-- ------------------------------------------------------------
-- Dados do encerramento do exerc�cio;
-- ------------------------------------------------------------

CREATE TABLE CONTABIL_ENCERRAMENTO_EXE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  DATA_INICIO DATE  NULL  ,
  DATA_FIM DATE  NULL  ,
  DATA_INC DATE  NULL  ,
  MOTIVO VARCHAR(100)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX CONTABIL_ENCERRAMENTO_FK1(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Dados do encerramento do exerc�cio;' ;



-- ------------------------------------------------------------
-- Cadastro de todos os hist�ricos padr�es com as informa��es correspondentes aos lan�amentos
-- ------------------------------------------------------------

CREATE TABLE CONTABIL_HISTORICO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(100)  NULL  ,
  HISTORICO VARCHAR(100)  NULL  ,
  PEDE_COMPLEMENTO CHAR(1)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX CONTABIL_HISTORICO_FKIndex1(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Cadastro de todos os hist�ricos padr�es com as informa��es correspondentes aos lan�amentos' ;



-- ------------------------------------------------------------
-- Armazena as condi��es de pagamento.
-- ------------------------------------------------------------

CREATE TABLE CONDICOES_PAGAMENTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  NOME VARCHAR(50)  NULL   COMMENT 'Exemplo: BOLETO 20/40/60' ,
  DESCRICAO TEXT  NULL   COMMENT 'Texto descritivo da condi��o de pagamento' ,
  FATURAMENTO_MINIMO DECIMAL(18,6)  NULL   COMMENT 'Valor m�nimo para determinado tipo de pagamento. Exemplo: boleto: delimitar o menor valor de uma venda.' ,
  FATURAMENTO_MAXIMO DECIMAL(18,6)  NULL   COMMENT 'Valor m�ximo para determinado tipo de pagamento. Exemplo: boleto: delimitar o maior valor de uma venda.' ,
  INDICE_CORRECAO DECIMAL(18,6)  NULL   COMMENT '�ndice para acr�scimo nas vendas a prazo sobre o pre�o de tabela no formato 1 + %/ 100. Exemplo: acr�scimo de 5% = 1,05. Padr�o 1(=100%)' ,
  DIAS_TOLERANCIA INTEGER UNSIGNED  NULL   COMMENT 'Quantidade de dias de flexibilidade das datas de vencimento dos boletos que podem ser ajustados pelo vendedor para antes ou depois da data definida. Exemplo: a 1� parcela vence em 20 dias; se houver uma toler�ncia de 10 dias, o vendedor pode gerar um boleto para 10 at� 30 dias.' ,
  VALOR_TOLERANCIA DECIMAL(18,6)  NULL   COMMENT 'Permite o ajuste no valor das parcelas de acordo com a toler�ncia.' ,
  PRAZO_MEDIO INTEGER UNSIGNED  NULL   COMMENT 'Calculado pelo sistema de acordo com os prazos definidos para cada parcela.'   ,
PRIMARY KEY(ID)  ,
INDEX CONDICOES_PAGAMENTO_FKIndex2(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena as condi��es de pagamento.' ;











-- ------------------------------------------------------------
-- Tabela matriz para gera��o de parcelas.
-- ------------------------------------------------------------

CREATE TABLE CONDICOES_PARCELAS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONDICOES_PAGAMENTO INTEGER UNSIGNED  NOT NULL  ,
  QTD_PARCELAS INTEGER UNSIGNED  NULL   COMMENT 'N�mero da parcela' ,
  DIAS_PRIMEIRO_VENC INTEGER UNSIGNED  NULL   COMMENT 'Quantidade de dias a partir da data da venda' ,
  TAXA DECIMAL(18,6)  NULL   COMMENT 'Taxa percentual referente � parcela' ,
  INTERVALO_PARCELAS INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_CONDICOES_PARCELAS(ID_CONDICOES_PAGAMENTO),
  FOREIGN KEY(ID_CONDICOES_PAGAMENTO)
    REFERENCES CONDICOES_PAGAMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela matriz para gera��o de parcelas.' ;






-- ------------------------------------------------------------
-- DRE - cabe�alho.
-- ------------------------------------------------------------

CREATE TABLE CONTABIL_DRE_CABECALHO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(100)  NULL  ,
  PADRAO CHAR(1)  NULL   COMMENT 'S=Sim | N=N�o' ,
  PERIODO_INICIAL VARCHAR(7)  NULL  ,
  PERIODO_FINAL VARCHAR(7)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX CONTABIL_DRE_CABECALHO_FKIndex1(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'DRE - cabe�alho.' ;




-- ------------------------------------------------------------
-- Tabela de setores/departamentos.
-- ------------------------------------------------------------

CREATE TABLE SETOR (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  NOME VARCHAR(50)  NULL  ,
  DESCRICAO TEXT  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_EMPRESA_SETOR(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela de setores/departamentos.' ;



-- ------------------------------------------------------------
-- Livros cont�beis.
-- ------------------------------------------------------------

CREATE TABLE CONTABIL_LIVRO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(50)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX CONTABIL_LIVRO_FKIndex1(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Livros cont�beis.' ;



-- ------------------------------------------------------------
-- Par�metros do sistema cont�bil.
-- ------------------------------------------------------------

CREATE TABLE CONTABIL_PARAMETROS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  MASCARA VARCHAR(30)  NULL   COMMENT 'Exemplo: A.B.C.DD.EEEE (mascara com 5 n�veis)' ,
  NIVEIS INTEGER UNSIGNED ZEROFILL  NULL   COMMENT 'Quantidade de n�veis para o plano' ,
  INFORMAR_CONTA_POR CHAR(1)  NULL   COMMENT 'C=C�digo | M=M�scara' ,
  COMPARTILHA_PLANO_CONTAS CHAR(1)  NULL   COMMENT 'S=Sim | N=N�o [se a empresa corrente disponibiliza o plano de  contas para as demais empresas]' ,
  COMPARTILHA_HISTORICOS CHAR(1)  NULL   COMMENT 'S=Sim | N=N�o [se a empresa corrente disponibilizA o cadastro de hist�ricos para as demais empresas]' ,
  ALTERA_LANCAMENTO_OUTRO CHAR(1)  NULL   COMMENT 'S=Sim | N=N�o [permite alterar um lan�amento feito por outro sistema]' ,
  HISTORICO_OBRIGATORIO CHAR(1)  NULL   COMMENT 'S=Sim | N=N�o' ,
  PERMITE_LANCAMENTO_ZERADO CHAR(1)  NULL   COMMENT 'S=Sim | N=N�o [permite a inclus�o de lan�amentos com valor igual a zero]' ,
  GERA_INFORMATIVO_SPED CHAR(1) BINARY  NULL   COMMENT 'S=Sim | N=N�o' ,
  SPED_FORMA_ESCRIT_DIARIO CHAR(3)  NULL   COMMENT 'LDC=Livro Di�rio Completo | LDE=Livro Di�rio com Escritura��o Resumida | LBD=Livro Balancete Di�rio e Balan�os' ,
  SPED_NOME_LIVRO_DIARIO VARCHAR(100)  NULL  ,
  ASSINATURA_DIREITA TEXT  NULL  ,
  ASSINATURA_ESQUERDA TEXT  NULL  ,
  CONTA_ATIVO INTEGER UNSIGNED ZEROFILL  NULL  ,
  CONTA_PASSIVO INTEGER UNSIGNED ZEROFILL  NULL  ,
  CONTA_PATRIMONIO_LIQUIDO INTEGER UNSIGNED ZEROFILL  NULL  ,
  CONTA_DEPRECIACAO_ACUMU INTEGER UNSIGNED ZEROFILL  NULL  ,
  CONTA_CAPITAL_SOCIAL INTEGER UNSIGNED ZEROFILL  NULL  ,
  CONTA_RESULTADO_EXER INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_HIST_PADRAO_RESULT INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_CONTA_LUCROS_ACUM INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_HIST_PADRAO_LUCRO INTEGER UNSIGNED ZEROFILL  NULL  ,
  CONTA_PREJ_ACUM INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_HIST_PADRAO_PREJUIZO INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_CONTA_TIT_PAGAR INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_CONTA_JUROS_PASSIVO INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_CONTA_TIT_RECEBER INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_CONTA_JUROS_ATIVOS INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_CONTA_DESCONTO_OBITIDO INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_CONTA_DESCONTO_CONCEDIDO INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_CONTA_CMV INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_CONTA_VENDAS INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_CONTA_VENDA_SERVICO INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_CONTA_ESTOQUE INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_CONTA_APURA_RESULTADO INTEGER UNSIGNED ZEROFILL  NULL  ,
  ID_CONTA_JUROS_APROPRIAR INTEGER UNSIGNED ZEROFILL  NULL    ,
PRIMARY KEY(ID)  ,
INDEX CONTABIL_PARAMETROS_FKIndex1(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Par�metros do sistema cont�bil.' ;













-- ------------------------------------------------------------
-- Termos de abertura e encerramento dos livros.
-- ------------------------------------------------------------

CREATE TABLE CONTABIL_TERMO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_LIVRO INTEGER UNSIGNED  NOT NULL  ,
  NUMERO INTEGER UNSIGNED  NULL  ,
  PAGINA_INICIAL INTEGER UNSIGNED  NULL  ,
  PAGINA_FINAL INTEGER UNSIGNED  NULL  ,
  REGISTRADO VARCHAR(100)  NULL  ,
  NUMERO_REGISTRO VARCHAR(50)  NULL  ,
  DATA_DESPACHO DATE  NULL  ,
  DATA_ABERTURA DATE  NULL  ,
  DATA_ENCERRAMENTO DATE  NULL  ,
  ESCRITURACA0_INICIO DATE  NULL  ,
  ESCRITURACAO_FIM DATE  NULL  ,
  TEXTO TEXT  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_CONTABIL_LIVRO_TERMO(ID_CONTABIL_LIVRO),
  FOREIGN KEY(ID_CONTABIL_LIVRO)
    REFERENCES CONTABIL_LIVRO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Termos de abertura e encerramento dos livros.' ;



-- ------------------------------------------------------------
-- Tabela que armazena as poss�veis situa��es de uma parcela: PAGO, BAIXA PARCIAL, EM ABERTO,  RETENCAO, etc.
-- Status padr�es (j� s�o criados para cada empresa):
-- 01 = A pagar | 02 = Pago | 03 = Pago Parcial | 04 = Vencida
-- ------------------------------------------------------------

CREATE TABLE STATUS_PARCELA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  SITUACAO CHAR(2)  NOT NULL   COMMENT '01 = Aaberto | 02 = Quitado | 03 = Quitado Parcial | 04 = Vencida' ,
  DESCRICAO VARCHAR(30)  NULL   COMMENT 'PAGO | BAIXA PARCIAL | EM ABERTO | ETC' ,
  PROCEDIMENTO TEXT  NULL   COMMENT 'Procedimento a ser adotado para o status em quest�o'   ,
PRIMARY KEY(ID)  ,
INDEX STATUS_PARCELA_FK1(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que armazena as poss�veis situa��es de uma parcela: PAGO, BAIXA PARCIAL, EM ABERTO,  RETENCAO, etc.  Status padr�es (j� s�o criados para cada empresa):  01 = A pagar | 02 = Pago | 03 = Pago Parcial | 04 = Vencida' ;






-- ------------------------------------------------------------
-- Tabela que armazena os dados de Base de Calculo Reduzida dos produtos.
-- ------------------------------------------------------------

CREATE TABLE BASE_CALCULO_REDUZIDA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(50)  NULL  ,
  DATA_CADASTRO DATE  NULL  ,
  DATA_ALTERACAO DATE  NULL  ,
  UF_AC DECIMAL(18,6)  NULL  ,
  UF_AL DECIMAL(18,6)  NULL  ,
  UF_AP DECIMAL(18,6)  NULL  ,
  UF_AM DECIMAL(18,6)  NULL  ,
  UF_BA DECIMAL(18,6)  NULL  ,
  UF_CE DECIMAL(18,6)  NULL  ,
  UF_DF DECIMAL(18,6)  NULL  ,
  UF_ES DECIMAL(18,6)  NULL  ,
  UF_GO DECIMAL(18,6)  NULL  ,
  UF_MA DECIMAL(18,6)  NULL  ,
  UF_MT DECIMAL(18,6)  NULL  ,
  UF_MS DECIMAL(18,6)  NULL  ,
  UF_MG DECIMAL(18,6)  NULL  ,
  UF_PA DECIMAL(18,6)  NULL  ,
  UF_PB DECIMAL(18,6)  NULL  ,
  UF_PR DECIMAL(18,6)  NULL  ,
  UF_PE DECIMAL(18,6)  NULL  ,
  UF_PI DECIMAL(18,6)  NULL  ,
  UF_RJ DECIMAL(18,6)  NULL  ,
  UF_RN DECIMAL(18,6)  NULL  ,
  UF_RS DECIMAL(18,6)  NULL  ,
  UF_RO DECIMAL(18,6)  NULL  ,
  UF_RR DECIMAL(18,6)  NULL  ,
  UF_SC DECIMAL(18,6)  NULL  ,
  UF_SP DECIMAL(18,6)  NULL  ,
  UF_SE DECIMAL(18,6)  NULL  ,
  UF_TO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_EMPRESA_BCR(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que armazena os dados de Base de Calculo Reduzida dos produtos.' ;



-- ------------------------------------------------------------
-- Autoriza��o de Impress�o de Doc. Fiscais
-- ------------------------------------------------------------

CREATE TABLE AIDF_AIMDF (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  NUMERO INTEGER UNSIGNED  NULL  ,
  DATA_VALIDADE DATE  NULL  ,
  DATA_AUTORIZACAO DATE  NULL  ,
  NUMERO_AUTORIZACAO VARCHAR(20)  NULL  ,
  SEM_FORMULARIO_DISPONIVEL CHAR(1)  NULL   COMMENT 'BOOLEAN'   ,
PRIMARY KEY(ID)  ,
INDEX FK_EMPRESA_AIDF(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Autoriza��o de Impress�o de Doc. Fiscais' ;




-- ------------------------------------------------------------
-- Armazena os almoxarifados vinculados ao dep�sito ou � pr�pria empresa. Deve existir pelo menos um almoxarifado padr�o.
-- ------------------------------------------------------------

CREATE TABLE ALMOXARIFADO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  NOME VARCHAR(50)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_EMPRESA_ALMOXARIFADO(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os almoxarifados vinculados ao dep�sito ou � pr�pria empresa. Deve existir pelo menos um almoxarifado padr�o.' ;



CREATE TABLE TRIBUTACAO_ISS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_OPERACAO_FISCAL INTEGER UNSIGNED  NOT NULL  ,
  MODALIDADE_BC DECIMAL(18,6)  NULL  ,
  PORCENTO_BC DECIMAL(18,6)  NULL  ,
  ALIQ_PORCENTO DECIMAL(18,6)  NULL  ,
  ALIQ_UNID_ISS DECIMAL(18,6)  NULL  ,
  PAUTA_PRECO_MAXIMO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX TRIBUTACAO_ISS_FK1(ID_OPERACAO_FISCAL),
  FOREIGN KEY(ID_OPERACAO_FISCAL)
    REFERENCES OPERACAO_FISCAL(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Dados do registro em cart�rio;
-- ------------------------------------------------------------

CREATE TABLE REGISTRO_CARTORIO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  NOME_CARTORIO VARCHAR(100)  NULL  ,
  DATA_REGISTRO DATE  NULL  ,
  NUMERO INTEGER UNSIGNED  NULL   COMMENT 'N�mero de registro no cart�rio' ,
  FOLHA INTEGER UNSIGNED  NULL   COMMENT 'N�mero da folha do livro em que foi realizado o registro no cart�rio' ,
  LIVRO INTEGER UNSIGNED  NULL   COMMENT 'N�mero do livro em que foi realizado o registro no cart�rio' ,
  NIRE VARCHAR(50)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX REGISTRO_CARTORIO_FKIndex1(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Dados do registro em cart�rio;' ;






CREATE TABLE FAP (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  FAP DECIMAL(18,6)  NULL  ,
  DATA_NICIAL DATE  NULL  ,
  DATA_FINAL DATE  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FAP_FKIndex1(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Esta tabela ir� armazenar os Perfis tribut�rios  diferentes existentes dentro do mix de produtos da empresa. Ou seja, os diferentes conjuntos de produtos cuja tributa��o sofrem varia��es. Definindo o GRUPO TRIBUT�RIO (independente da classifica��o de grupo gerencial empregada pelo cliente). Isto �, produtos com tributa��es id�nticas ficariam todos em um grupo independentemente  suas caracter�sticas intr�nsecas.
-- Exemplos:
-- 1. Produtos de fabrica��o pr�pria (sujeitos ao ICMS ST)
-- 2. Produtos de Revenda (sujeitos ao Regime do ICMS ST)
-- 3. Produtos de Revenda N�o sujeitos ao ICMS ST
-- 4. Produtos com Suspensao de IPI
-- 5. Produtos com Suspensa�ao de PIS, COFINS
-- 6. etc.
-- ------------------------------------------------------------

CREATE TABLE GRUPO_TRIBUTARIO (
  ID INTEGER  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(100)  NULL  ,
  COMENTARIO TEXT  NULL    ,
PRIMARY KEY(ID)  ,
INDEX GRUPO_TRIBUTARIO_FKIndex1(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
COMMENT = 'Esta tabela ir� armazenar os Perfis tribut�rios  diferentes existentes dentro do mix de produtos da empresa. Ou seja, os diferentes conjuntos de produtos cuja tributa��o sofrem varia��es. Definindo o GRUPO TRIBUT�RIO (independente da classifica��o de grupo gerencial empregada pelo cliente). Isto �, produtos com tributa��es id�nticas ficariam todos em um grupo independentemente  suas caracter�sticas intr�nsecas.  Exemplos:  1. Produtos de fabrica��o pr�pria (sujeitos ao ICMS ST)  2. Produtos de Revenda (sujeitos ao Regime do ICMS ST)  3. Produtos de Revenda N�o sujeitos ao ICMS ST  4. Produtos com Suspensao de IPI  5. Produtos com Suspensa�ao de PIS, COFINS  6. etc.' ;



-- ------------------------------------------------------------
-- Tabela para cadastro dos tipo de documentos que podem gerar contas a pagar: nota fiscal, boleto, recibo, etc.
-- ------------------------------------------------------------

CREATE TABLE DOCUMENTO_ORIGEM (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(30)  NULL   COMMENT 'NOTA FISCAL | BOLETO | RECIBO | ETC.'   ,
PRIMARY KEY(ID)  ,
INDEX DOCUMENTO_ORIGEM_FKIndex1(ID_EMPRESA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela para cadastro dos tipo de documentos que podem gerar contas a pagar: nota fiscal, boleto, recibo, etc.' ;




-- ------------------------------------------------------------
-- Tabela com as contribui��es para os sindicados patronais.
-- ------------------------------------------------------------

CREATE TABLE CONTRIB_SIND_PATRONAL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_SINDICATO INTEGER UNSIGNED  NOT NULL  ,
  VIGENCIA_ANO CHAR(4)  NULL   COMMENT 'Exemplo: 2011'   ,
PRIMARY KEY(ID)  ,
INDEX FK_SIND_PATRO_CONTR(ID_SINDICATO),
  FOREIGN KEY(ID_SINDICATO)
    REFERENCES SINDICATO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com as contribui��es para os sindicados patronais.' ;




CREATE TABLE CONTRIB_SIND_PATRONAL_DET (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTRIB_SIND_PATRONAL INTEGER UNSIGNED  NOT NULL  ,
  DE DECIMAL(18,6)  NULL  ,
  ATE DECIMAL(18,6)  NULL  ,
  PERCENTUAL DECIMAL(18,6)  NULL  ,
  VALOR_ADICIONAR DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_CONTR_SIND_PATRONAL(ID_CONTRIB_SIND_PATRONAL),
  FOREIGN KEY(ID_CONTRIB_SIND_PATRONAL)
    REFERENCES CONTRIB_SIND_PATRONAL(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Tabela que armazena os tipos de pagamento: DINHEIRO, CART�O, CHEQUE, etc.
-- Tipos pad�es j� cadastrados pelo sistema para toda empresa:
-- 01 = Dinheiro | 02 = Cheque | 03 = Cartao
-- ------------------------------------------------------------

CREATE TABLE TIPO_PAGAMENTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NATUREZA_FINANCEIRA INTEGER UNSIGNED  NOT NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  TIPO CHAR(2)  NULL   COMMENT '01 = Dinheiro | 02 = Cheque | 03 = Cartao' ,
  DESCRICAO VARCHAR(30)  NULL   COMMENT 'DINHEIRO | CHEQUE | CARTAO | BANCO | ETC'   ,
PRIMARY KEY(ID)  ,
INDEX TIPO_PAGAMENTO_FKIndex1(ID_EMPRESA)  ,
INDEX TIPO_PAGAMENTO_FKIndex2(ID_NATUREZA_FINANCEIRA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_NATUREZA_FINANCEIRA)
    REFERENCES NATUREZA_FINANCEIRA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que armazena os tipos de pagamento: DINHEIRO, CART�O, CHEQUE, etc.  Tipos pad�es j� cadastrados pelo sistema para toda empresa:  01 = Dinheiro | 02 = Cheque | 03 = Cartao' ;





CREATE TABLE SOCIOS_RESP_EMPRESAS (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  ID_RESPONSAVEL_SOCIOS INTEGER UNSIGNED  NOT NULL  ,
  RESPONSAVEL CHAR(1)  NULL   COMMENT 'informar se este s�cio ou responavel � o representante legal da empresa' ,
  DATA_INGRESSO DATE  NULL  ,
  DATA_SAIDA DATE  NULL  ,
  PORCENTO_CAPITAL_VOTANTE DECIMAL(18,6)  NULL  ,
  PORCENTO_CAPITAL_TOTAL DECIMAL(18,6)  NULL  ,
  CODIGO_SOCIO_RFB INTEGER UNSIGNED  NULL  ,
  VALOR_PRO_LABORE DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX SOCIOS_RESP_EMPRESAS_FKIndex1(ID_RESPONSAVEL_SOCIOS)  ,
INDEX SOCIOS_RESP_EMPRESAS_FKIndex2(ID_EMPRESA),
  FOREIGN KEY(ID_RESPONSAVEL_SOCIOS)
    REFERENCES RESPONSAVEL_SOCIOS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;




CREATE TABLE TIPO_RECEBIMENTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  ID_NATUREZA_FINANCEIRA INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(100)  NULL  ,
  TIPO CHAR(1)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX TIPO_RECEBIMENTO_FKIndex1(ID_NATUREZA_FINANCEIRA)  ,
INDEX TIPO_RECEBIMENTO_FKIndex2(ID_EMPRESA),
  FOREIGN KEY(ID_NATUREZA_FINANCEIRA)
    REFERENCES NATUREZA_FINANCEIRA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Tabela de contatos.
-- ------------------------------------------------------------

CREATE TABLE CONTATO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  NOME VARCHAR(100)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_EMPRESA_CONTATO(ID_EMPRESA)  ,
INDEX FK_PESSOA_CONTATO(ID_PESSOA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela de contatos.' ;



-- ------------------------------------------------------------
-- Tabela dos e-mails dos contatos.
-- ------------------------------------------------------------

CREATE TABLE CONTATO_EMAIL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTATO INTEGER UNSIGNED  NOT NULL  ,
  ID_TIPO_EMAIL INTEGER UNSIGNED  NOT NULL  ,
  EMAIL VARCHAR(250)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_CONTATO_EMAIL(ID_CONTATO)  ,
INDEX FK_TIPO_EMAIL_CONTATO(ID_TIPO_EMAIL),
  FOREIGN KEY(ID_CONTATO)
    REFERENCES CONTATO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_EMAIL)
    REFERENCES TIPO_EMAIL(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela dos e-mails dos contatos.' ;



-- ------------------------------------------------------------
-- Armazena os saldos de determinada conta para todos os meses do ano. A partir da� o usu�rio poder� fazer um comparativo dos saldos or�ados com os valores realizados nos lan�amentos cont�beis.
-- ------------------------------------------------------------

CREATE TABLE CONTABIL_LANCAMENTO_ORCADO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  ANO CHAR(4)  NULL  ,
  JANEIRO DECIMAL(18,6)  NULL  ,
  FEVEREIRO DECIMAL(18,6)  NULL  ,
  MARCO DECIMAL(18,6)  NULL  ,
  ABRIL DECIMAL(18,6)  NULL  ,
  MAIO DECIMAL(18,6)  NULL  ,
  JUNHO DECIMAL(18,6)  NULL  ,
  JULHO DECIMAL(18,6)  NULL  ,
  AGOSTO DECIMAL(18,6)  NULL  ,
  SETEMBRO DECIMAL(18,6)  NULL  ,
  OUTUBRO DECIMAL(18,6)  NULL  ,
  NOVEMBRO DECIMAL(18,6)  NULL  ,
  DEZEMBRO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_CONTA_LANC_ORCADO(ID_CONTABIL_CONTA)  ,
INDEX CONTABIL_LANCAMENTO_ORCADO(ID_EMPRESA),
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os saldos de determinada conta para todos os meses do ano. A partir da� o usu�rio poder� fazer um comparativo dos saldos or�ados com os valores realizados nos lan�amentos cont�beis.' ;



-- ------------------------------------------------------------
-- Lan�amentos efetuados no sistema cont�bil - cabe�alho
-- ------------------------------------------------------------

CREATE TABLE CONTABIL_LANCAMENTO_CAB (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_LOTE INTEGER UNSIGNED  NOT NULL  ,
  DATA_LANCAMENTO DATE  NULL  ,
  TIPO CHAR(4)  NULL   COMMENT 'UDVC=Um D�bito para V�rios Cr�ditos | UCVD=Um Cr�dito para V�rios D�bitos | UDUC=Um D�bito para Um Cr�dito | VDVC = V�rios D�bitos para V�rios Cr�ditos' ,
  LIBERADO CHAR(1)  NULL  ,
  DATA_INC DATE  NULL  ,
  DOCUMENTO VARCHAR(50)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX CONTABIL_LANCAMENTO_CAB_FK2(ID_CONTABIL_LOTE)  ,
INDEX CONTABIL_LANCAMENTO_CAB(ID_EMPRESA),
  FOREIGN KEY(ID_CONTABIL_LOTE)
    REFERENCES CONTABIL_LOTE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Lan�amentos efetuados no sistema cont�bil - cabe�alho' ;




-- ------------------------------------------------------------
-- Tabela dos telefones dos contatos.
-- ------------------------------------------------------------

CREATE TABLE CONTATO_TELEFONE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TIPO_TELEFONE INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTATO INTEGER UNSIGNED  NOT NULL  ,
  TELEFONE VARCHAR(10)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_CONTATO_TELEFONE(ID_CONTATO)  ,
INDEX FK_TIPO_TELEFONE_CONTATO(ID_TIPO_TELEFONE),
  FOREIGN KEY(ID_CONTATO)
    REFERENCES CONTATO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_TELEFONE)
    REFERENCES TIPO_TELEFONE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela dos telefones dos contatos.' ;



CREATE TABLE EMPRESA_CNAE (
  ID_CNAE INTEGER UNSIGNED  NOT NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  PRINCIPAL CHAR(1)  NULL   COMMENT 'S=SIM | N=N�O (Apenas um registro para uma mesma empresa pode ser marcado como "S")' ,
  RAMO_ATIVIDADE VARCHAR(50)  NULL  ,
  OBJETO_SOCIAL TEXT  NULL   COMMENT 'Exemplo: Com�rcio varejista de confec��es.'   ,
PRIMARY KEY(ID_CNAE, ID_EMPRESA)  ,
INDEX FK_EMPRESA_CNAE(ID_EMPRESA)  ,
INDEX FK_CNAE_EMPRESA(ID_CNAE),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CNAE)
    REFERENCES CNAE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;





-- ------------------------------------------------------------
-- Tabela de cargos.
-- ------------------------------------------------------------

CREATE TABLE CARGO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CBO INTEGER UNSIGNED  NOT NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  NOME VARCHAR(50)  NULL  ,
  DESCRICAO TEXT  NULL  ,
  SALARIO DECIMAL(18,6)  NULL  ,
  CBO_94 VARCHAR(10)  NULL   COMMENT 'Classifica��o Brasileira de Ocupa��es' ,
  CBO_02 VARCHAR(10)  NULL   COMMENT 'Classifica��o Brasileira de Ocupa��es'   ,
PRIMARY KEY(ID)  ,
INDEX FK_EMPRESA_CARGO(ID_EMPRESA)  ,
INDEX CARGO_FKIndex2(ID_CBO),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CBO)
    REFERENCES CBO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela de cargos.' ;





CREATE TABLE EMPRESA_PESSOA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(ID)  ,
INDEX EMPRESA_PESSOA_FKIndex1(ID_EMPRESA)  ,
INDEX EMPRESA_PESSOA_FKIndex2(ID_PESSOA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Esta tabela ir� armazenar os lan�amentos Programados, assim chamados aqueles que tem data e valor j� conhecidos, por�m pelo regime de Competencia deve aguardar as data pr�prias para serem efetivados. Ex. A empresa contratou um seguro com validade de 12 meses, pelo regime de competencia deve ser lan�ar este valor em ATIVO CIRCULANTE sub grupo DESP. ANTECIPADAS (ou do EXERC. SEGUINTE) e depois em dada m�s fazer o lan�amento baixando do ATIVO CIRCULANTE  e lan�ando no GRUPO DE CONTA DE RESULTADO. Desta forma, sempre que ocorrer tais eventos na empresa o usuario ir� deixar estes lan�amentos Agendados para o sistema processar nas datas pr�prias. Para isso, devemo criar uma rotina no Execut�vel que toda vez que o sistema cont�bil for aberto ela cheque nesta tabela a existencia de Lan�amentos programados e os efetive.
-- ------------------------------------------------------------

CREATE TABLE LANCAM_PROGRAMADO_CAB (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_LOTE INTEGER UNSIGNED  NOT NULL  ,
  TIPO CHAR(4)  NULL  ,
  DATA_INC DATE  NULL  ,
  DATA_REALIZADA DATE  NULL  ,
  LIBERADO CHAR(1)  NULL  ,
  DATA_PREVISTA DATE  NULL  ,
  DOCUMENTO VARCHAR(30)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX LANCAMENTO_PROGRAMADO_FK1(ID_CONTABIL_LOTE)  ,
INDEX LANCAM_PROGRAMADO_CAB(ID_EMPRESA),
  FOREIGN KEY(ID_CONTABIL_LOTE)
    REFERENCES CONTABIL_LOTE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Esta tabela ir� armazenar os lan�amentos Programados, assim chamados aqueles que tem data e valor j� conhecidos, por�m pelo regime de Competencia deve aguardar as data pr�prias para serem efetivados. Ex. A empresa contratou um seguro com validade de 12 meses, pelo regime de competencia deve ser lan�ar este valor em ATIVO CIRCULANTE sub grupo DESP. ANTECIPADAS (ou do EXERC. SEGUINTE) e depois em dada m�s fazer o lan�amento baixando do ATIVO CIRCULANTE  e lan�ando no GRUPO DE CONTA DE RESULTADO. Desta forma, sempre que ocorrer tais eventos na empresa o usuario ir� deixar estes lan�amentos Agendados para o sistema processar nas datas pr�prias. Para isso, devemo criar uma rotina no Execut�vel que toda vez que o sistema cont�bil for aberto ela cheque nesta tabela a existencia de Lan�amentos programados e os efetive.' ;



-- ------------------------------------------------------------
-- Esta tabela ira armazenar os titulos transferidos para BANCOS com finalidade de desconto ou para Fornecedores.
-- ------------------------------------------------------------

CREATE TABLE TRANSFERENCIA_TITULO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TIPO_RECEBIMENTO INTEGER UNSIGNED  NOT NULL  ,
  ID_PESSOA INTEGER UNSIGNED  NULL  ,
  DESCRICAO VARCHAR(100)  NULL  ,
  DATA_INC DATE  NULL  ,
  VALOR_TOTAL DECIMAL(18,6)  NULL  ,
  VALOR_JUROS DECIMAL(18,6)  NULL  ,
  TAXA_JUROS DECIMAL(18,6)  NULL  ,
  DESPESAS DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX TRANSFERENCIA_TITULO_FKIndex1(ID_PESSOA)  ,
INDEX TRANSFERENCIA_TITULO_FKIndex2(ID_TIPO_RECEBIMENTO),
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_RECEBIMENTO)
    REFERENCES TIPO_RECEBIMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Esta tabela ira armazenar os titulos transferidos para BANCOS com finalidade de desconto ou para Fornecedores.' ;



-- ------------------------------------------------------------
-- Tabela de endere�os.
-- ------------------------------------------------------------

CREATE TABLE ENDERECO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NULL  ,
  ID_PESSOA INTEGER UNSIGNED  NULL  ,
  LOGRADOURO VARCHAR(100)  NULL  ,
  NUMERO VARCHAR(10)  NULL  ,
  COMPLEMENTO VARCHAR(100)  NULL  ,
  BAIRRO VARCHAR(100)  NULL  ,
  CIDADE VARCHAR(100)  NULL  ,
  CEP VARCHAR(8)  NULL  ,
  MUNICIPIO_IBGE INTEGER UNSIGNED  NULL  ,
  UF CHAR(2)  NULL  ,
  FONE VARCHAR(10)  NULL  ,
  FAX VARCHAR(10)  NULL  ,
  PRINCIPAL CHAR(1)  NULL  ,
  ENTREGA CHAR(1)  NULL  ,
  COBRANCA CHAR(1)  NULL  ,
  CORRESPONDENCIA CHAR(1)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_PESSOA_ENDERECO(ID_PESSOA)  ,
INDEX FK_EMPRESA_ENDERECO(ID_EMPRESA),
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela de endere�os.' ;



CREATE TABLE ENCERRAMENTO_DET (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_ENCERRAMENTO_EXE INTEGER UNSIGNED  NOT NULL  ,
  SALDO_ANTERIOR DECIMAL(18,6)  NULL  ,
  VALOR_DEBITO DECIMAL(18,6)  NULL  ,
  VALOR_CREDITO DECIMAL(18,6)  NULL  ,
  SALDO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX ENCERRAMENTO_DET_FK1(ID_CONTABIL_ENCERRAMENTO_EXE)  ,
INDEX ENCERRAMENTO_DET_FK2(ID_CONTABIL_CONTA),
  FOREIGN KEY(ID_CONTABIL_ENCERRAMENTO_EXE)
    REFERENCES CONTABIL_ENCERRAMENTO_EXE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Tabela de lan�amentos das contas a pagar.
-- ------------------------------------------------------------

CREATE TABLE LANCAMENTO_PAGAR (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  ID_DOCUMENTO_ORIGEM INTEGER UNSIGNED  NOT NULL  ,
  PAGAMENTO_COMPARTILHADO CHAR(1)  NULL   COMMENT 'S=SIM | N=N�O' ,
  QUANTIDADE_PARCELA INTEGER UNSIGNED  NULL  ,
  VALOR_TOTAL DECIMAL(18,6)  NULL  ,
  VALOR_A_PAGAR DECIMAL(18,6)  NULL  ,
  DATA_LANCAMENTO DATE  NULL  ,
  IMAGEM_DOCUMENTO TEXT  NULL   COMMENT 'Armazena o caminho da imagem do documento, caso seja scaneado.' ,
  PRIMEIRO_VENCIMENTO DATE  NULL  ,
  TIPO_CONTABIL CHAR(1)  NULL   COMMENT 'D=debito, C=credito'   ,
PRIMARY KEY(ID)  ,
INDEX FK_DOC_OR_LCTO_PAGAR(ID_DOCUMENTO_ORIGEM)  ,
INDEX LANCAMENTO_PAGAR_FKIndex2(ID_PESSOA),
  FOREIGN KEY(ID_DOCUMENTO_ORIGEM)
    REFERENCES DOCUMENTO_ORIGEM(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela de lan�amentos das contas a pagar.' ;






-- ------------------------------------------------------------
-- Atende a empresas como supermercados e distribuidores. Tabela amarrada ao NCM.
-- ------------------------------------------------------------

CREATE TABLE TRIBUTACAO_FEDERAL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  ID_NCM INTEGER UNSIGNED  NOT NULL  ,
  PIS DECIMAL(18,6)  NULL  ,
  CST_PIS CHAR(2)  NULL  ,
  COFINS DECIMAL(18,6)  NULL  ,
  CST_COFINS CHAR(2)  NULL  ,
  IPI DECIMAL(18,6)  NULL  ,
  CST_IPI CHAR(2)  NULL  ,
  BASE_CALCULO DECIMAL(18,6)  NULL  ,
  CFOP INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_NCM_TRIBUTACAO_FEDERAL(ID_NCM)  ,
INDEX FK_EMPRESA_TRIBUTACAO_FEDERAL(ID_EMPRESA),
  FOREIGN KEY(ID_NCM)
    REFERENCES NCM(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Atende a empresas como supermercados e distribuidores. Tabela amarrada ao NCM.' ;



CREATE TABLE LANC_PROGRAMADO_DET (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_HISTORICO INTEGER UNSIGNED  NOT NULL  ,
  ID_LANCAM_PROGRAMADO_CAB INTEGER UNSIGNED  NOT NULL  ,
  HISTORICO VARCHAR(200)  NULL  ,
  VALOR DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX LANC_PROGRAMADO_DET_FK1(ID_LANCAM_PROGRAMADO_CAB)  ,
INDEX LANC_PROGRAMADO_DET_FK2(ID_CONTABIL_CONTA)  ,
INDEX LANC_PROGRAMADO_DET_FK3(ID_CONTABIL_HISTORICO),
  FOREIGN KEY(ID_LANCAM_PROGRAMADO_CAB)
    REFERENCES LANCAM_PROGRAMADO_CAB(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_HISTORICO)
    REFERENCES CONTABIL_HISTORICO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Armazenas as contas de banco e de caixa interno da empresa.
-- ------------------------------------------------------------

CREATE TABLE CONTA_CAIXA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  ID_AGENCIA_BANCO INTEGER UNSIGNED  NOT NULL  ,
  CODIGO VARCHAR(20)  NULL  ,
  NOME VARCHAR(50)  NULL  ,
  DESCRICAO TEXT  NULL  ,
  TIPO CHAR(1)  NULL   COMMENT 'C=Corrente | P=Poupan�a | I=Investimento | X=Caixa Interno'   ,
PRIMARY KEY(ID)  ,
INDEX FK_AGENCIA_CONTA(ID_AGENCIA_BANCO)  ,
INDEX FK_EMPRESA_CONTA_CAIXA(ID_EMPRESA)  ,
INDEX CONTA_CAIXA_FKIndex3(ID_CONTABIL_CONTA),
  FOREIGN KEY(ID_AGENCIA_BANCO)
    REFERENCES AGENCIA_BANCO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazenas as contas de banco e de caixa interno da empresa.' ;




-- ------------------------------------------------------------
-- Armazena os lan�amentos cont�beis - detalhes.
-- ------------------------------------------------------------

CREATE TABLE CONTABIL_LANCAMENTO_DET (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_HISTORICO INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_LANCAMENTO_CAB INTEGER UNSIGNED  NOT NULL  ,
  HISTORICO TEXT  NULL  ,
  VALOR DECIMAL(18,6)  NULL  ,
  TIPO CHAR(1)  NULL   COMMENT 'D=DEBITO, C=CREDITO'   ,
PRIMARY KEY(ID)  ,
INDEX FK_CONTABIL_LANCAMENTO(ID_CONTABIL_LANCAMENTO_CAB)  ,
INDEX FK_HIST_LANCAMENTO(ID_CONTABIL_HISTORICO)  ,
INDEX FK_CONTA_LANCAMENTO(ID_CONTABIL_CONTA),
  FOREIGN KEY(ID_CONTABIL_LANCAMENTO_CAB)
    REFERENCES CONTABIL_LANCAMENTO_CAB(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_HISTORICO)
    REFERENCES CONTABIL_HISTORICO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os lan�amentos cont�beis - detalhes.' ;




-- ------------------------------------------------------------
-- Tabela de conv�nios.
-- ------------------------------------------------------------

CREATE TABLE CONVENIO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  NOME VARCHAR(100)  NULL  ,
  DESCRICAO TEXT  NULL  ,
  DESCONTO DECIMAL(18,6)  NULL  ,
  DATA_VENCIMENTO DATE  NULL  ,
  LOGRADOURO VARCHAR(100)  NULL  ,
  NUMERO VARCHAR(10)  NULL  ,
  BAIRRO VARCHAR(60)  NULL  ,
  MUNICIPIO_IBGE INTEGER UNSIGNED  NULL  ,
  UF CHAR(2)  NULL  ,
  CONTATO VARCHAR(30)  NULL  ,
  TELEFONE VARCHAR(10)  NULL  ,
  DATA_CADASTRO DATE  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_EMPRESA_CONVENIO(ID_EMPRESA)  ,
INDEX CONVENIO_FKIndex2(ID_CONTABIL_CONTA)  ,
INDEX CONVENIO_FKIndex3(ID_PESSOA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela de conv�nios.' ;



-- ------------------------------------------------------------
-- Tabela das operadoras de cart�o.
-- ------------------------------------------------------------

CREATE TABLE OPERADORA_CARTAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTA_CAIXA INTEGER UNSIGNED  NOT NULL  ,
  BANDEIRA VARCHAR(30)  NULL  ,
  NOME VARCHAR(50)  NULL  ,
  TAXA_ADM DECIMAL(18,6)  NULL  ,
  TAXA_ADM_DEBITO DECIMAL(18,6)  NULL  ,
  VALOR_ALUGUEL_POS_PIN DECIMAL(18,6)  NULL  ,
  VENCIMENTO_ALUGUEL INTEGER UNSIGNED  NULL  ,
  FONE VARCHAR(14)  NULL  ,
  FONE2 VARCHAR(14)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX OPERADORA_CARTAO_FKIndex1(ID_CONTA_CAIXA)  ,
INDEX OPERADORA_CARTAO_FKIndex2(ID_PESSOA)  ,
INDEX OPERADORA_CARTAO_FKIndex3(ID_CONTABIL_CONTA),
  FOREIGN KEY(ID_CONTA_CAIXA)
    REFERENCES CONTA_CAIXA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela das operadoras de cart�o.' ;



CREATE TABLE CAIXA_LANC_CONTAB (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_LANCAMENTO_DET INTEGER UNSIGNED  NOT NULL  ,
  ID_TIPO_RECEBIMENTO INTEGER UNSIGNED  NULL  ,
  ID_TIPO_PAGAMENTO INTEGER UNSIGNED  NULL  ,
  ID_CONTA_CAIXA INTEGER UNSIGNED  NOT NULL  ,
  DATA_INC DATE  NULL  ,
  VALOR DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX CAIXA_LANC_CONTAB_FKIndex1(ID_CONTA_CAIXA)  ,
INDEX CAIXA_LANC_CONTAB_FKIndex3(ID_TIPO_PAGAMENTO)  ,
INDEX CAIXA_LANC_CONTAB_FKIndex4(ID_TIPO_RECEBIMENTO)  ,
INDEX CAIXA_LANC_CONTAB_FK4(ID_CONTABIL_LANCAMENTO_DET),
  FOREIGN KEY(ID_CONTA_CAIXA)
    REFERENCES CONTA_CAIXA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_PAGAMENTO)
    REFERENCES TIPO_PAGAMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_RECEBIMENTO)
    REFERENCES TIPO_RECEBIMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_LANCAMENTO_DET)
    REFERENCES CONTABIL_LANCAMENTO_DET(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Esta tabela ir� armazenar as tributa��es de IPI usadas pelas empresas.
-- ------------------------------------------------------------

CREATE TABLE TRIBUTACAO_IPI_DIPI (
  ID_TRIBUTACAO_IPI INTEGER UNSIGNED  NOT NULL  ,
  ID_GRUPO_TRIBUTARIO INTEGER  NOT NULL  ,
  ID_OPERACAO_FISCAL INTEGER UNSIGNED  NOT NULL  ,
  ID_TIPO_RECEITA_DIPI INTEGER UNSIGNED  NOT NULL  ,
  ID_CST_IPI INTEGER UNSIGNED  NOT NULL  ,
  MODALIDADE_BASE_CALCULO CHAR(1)  NULL  ,
  ALIQ_PORCENTO DECIMAL(18,6)  NULL  ,
  ALIQ_UNID DECIMAL(18,6)  NULL  ,
  PORCENTO_BASE_CALCULO DECIMAL(18,6)  NULL  ,
  PRECO_MAXIMO DECIMAL(18,6)  NULL  ,
  PAUTA_FISCAL DECIMAL(18,6)  NULL    ,
INDEX TRIBUTACAO_IPI_DIPI_FK1(ID_OPERACAO_FISCAL)  ,
INDEX TRIBUTACAO_IPI_DIPI_FK2(ID_TRIBUTACAO_IPI)  ,
INDEX TRIBUTACAO_IPI_DIPI_FK3(ID_GRUPO_TRIBUTARIO)  ,
INDEX TRIBUTACAO_IPI_DIPI_FK4(ID_CST_IPI)  ,
INDEX TRIBUTACAO_IPI_DIPI_FK5(ID_TIPO_RECEITA_DIPI),
  FOREIGN KEY(ID_OPERACAO_FISCAL)
    REFERENCES OPERACAO_FISCAL(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TRIBUTACAO_IPI)
    REFERENCES TRIBUTACAO_IPI(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_GRUPO_TRIBUTARIO)
    REFERENCES GRUPO_TRIBUTARIO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CST_IPI)
    REFERENCES CST_IPI(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_RECEITA_DIPI)
    REFERENCES TIPO_RECEITA_DIPI(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
COMMENT = 'Esta tabela ir� armazenar as tributa��es de IPI usadas pelas empresas.' ;



CREATE TABLE ICMS_CUSTOMIZADO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CSOSN INTEGER UNSIGNED  NOT NULL  ,
  ID_CFOP INTEGER UNSIGNED  NOT NULL  ,
  ID_UF INTEGER UNSIGNED  NOT NULL  ,
  ID_CST_B_ICMS INTEGER UNSIGNED  NOT NULL  ,
  ID_OPERACAO_FISCAL INTEGER UNSIGNED  NOT NULL  ,
  MODALIDADE_BC CHAR(1)  NULL  ,
  PORCENTO_BC_INTERNA DECIMAL(18,6)  NULL  ,
  PAUTA_PRECO_MAXIMO DECIMAL(18,6)  NULL  ,
  ALIQ_INTERNA_ORIGEM DECIMAL(18,6)  NULL  ,
  MODALIDADE_BC_ICMS_ST CHAR(1)  NULL  ,
  MVA DECIMAL(18,6)  NULL  ,
  PORCENTO_BC_ICMS_ST DECIMAL(18,6)  NULL  ,
  ALIQ_INTERESTADUAL DECIMAL(18,6)  NULL  ,
  ALIQ_INTERNA_DESTINO DECIMAL(18,6)  NULL  ,
  PAUTA_ICMS_ST DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX ICMS_CUSTOMIZADO_FKIndex1(ID_CFOP)  ,
INDEX ICMS_CUSTOMIZADO_FKIndex2(ID_CSOSN)  ,
INDEX ICMS_CUSTOMIZADO_FKIndex3(ID_CST_B_ICMS)  ,
INDEX ICMS_CUSTOMIZADO_FKIndex4(ID_UF)  ,
INDEX ICMS_CUSTOMIZADO_FKIndex5(ID_OPERACAO_FISCAL),
  FOREIGN KEY(ID_CFOP)
    REFERENCES CFOP(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CSOSN)
    REFERENCES CSOSN(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CST_B_ICMS)
    REFERENCES CST_B_ICMS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_UF)
    REFERENCES UF(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_OPERACAO_FISCAL)
    REFERENCES OPERACAO_FISCAL(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- O objetivo � relacionar para cada CST_PIS um codigo de apura��o conforme a tabela acima, informando ainda a modalidade calculo do PIS que pode ser por percentual ou por unidade de produto.
-- Com esta tabela podemos armazenar as in�meras formas de calculo, combinada com suas respectivas al�quotas e CST_PIS poss�ves e imagin�veis que existem ou venha a existir na nossa complexa legisla��o.
-- Desta forma, podemos fazer este v�nculo em TABELA DE GRUPO_TRIBUTACAO (conforme venho defendendo desde o in�cio do projeto) e depois vincular este ID_GRUPO_TRIBUTACAO no cadastro de cada dos produtos possibilitando um calculo totalmente automatizado em todo o sistema especialmente na EMISSAO de NFe e do CUPOM FISCAL.
-- Ainda n�o conseguir imaginar uma forma melhor de fazer o tratamento da imensa diversidade tribut�ria brasileira, se n�o esta.
-- ------------------------------------------------------------

CREATE TABLE TRIB_PIS_COD_APURACAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TRIBUTACAO_PIS INTEGER UNSIGNED  NOT NULL  ,
  ID_OPERACAO_FISCAL INTEGER UNSIGNED  NOT NULL  ,
  ID_GRUPO_TRIBUTARIO INTEGER  NOT NULL  ,
  ID_CST_PIS INTEGER UNSIGNED  NOT NULL  ,
  ID_COD_APURACAO INTEGER UNSIGNED  NOT NULL  ,
  MODALIDADE_BASE_CALCULO CHAR(1)  NULL  ,
  ALIQ_PORCENTO DECIMAL(18,6)  NULL  ,
  ALIQ_UNID DECIMAL(18,6)  NULL  ,
  PORCENTO_BASE_CALCULO DECIMAL(18,6)  NULL  ,
  PRECO_MAXIMO DECIMAL(18,6)  NULL  ,
  PAUTA_FISCAL DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX TRIB_PIS_COD_APURACAO_FK1(ID_CST_PIS)  ,
INDEX TRIB_PIS_COD_APURACAO_FK2(ID_GRUPO_TRIBUTARIO)  ,
INDEX TRIB_PIS_COD_APURACAO_FK3(ID_TRIBUTACAO_PIS)  ,
INDEX TRIB_PIS_COD_APURACAO_FK4(ID_OPERACAO_FISCAL)  ,
INDEX TRIB_PIS_COD_APURACAO_FK5(ID_COD_APURACAO),
  FOREIGN KEY(ID_CST_PIS)
    REFERENCES CST_PIS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_GRUPO_TRIBUTARIO)
    REFERENCES GRUPO_TRIBUTARIO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TRIBUTACAO_PIS)
    REFERENCES TRIBUTACAO_PIS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_OPERACAO_FISCAL)
    REFERENCES OPERACAO_FISCAL(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_COD_APURACAO)
    REFERENCES COD_APURACAO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
COMMENT = 'O objetivo � relacionar para cada CST_PIS um codigo de apura��o conforme a tabela acima, informando ainda a modalidade calculo do PIS que pode ser por percentual ou por unidade de produto.  Com esta tabela podemos armazenar as in�meras formas de calculo, combinada com suas respectivas al�quotas e CST_PIS poss�ves e imagin�veis que existem ou venha a existir na nossa complexa legisla��o.  Desta forma, podemos fazer este v�nculo em TABELA DE GRUPO_TRIBUTACAO (conforme venho defendendo desde o in�cio do projeto) e depois vincular este ID_GRUPO_TRIBUTACAO no cadastro de cada dos produtos possibilitando um calculo totalmente automatizado em todo o sistema especialmente na EMISSAO de NFe e do CUPOM FISCAL.  Ainda n�o conseguir imaginar uma forma melhor de fazer o tratamento da imensa diversidade tribut�ria brasileira, se n�o esta.' ;



-- ------------------------------------------------------------
-- O objetivo � relacionar para cada CST_COFINS um codigo de apura��o conforme a tabela acima, informando ainda a modalidade calculo do COFINS que pode ser por percentual ou por unidade de produto.
-- Com esta tabela podemos armazenar as in�meras formas de calculo, combinada com suas respectivas al�quotas e CST_COFINS poss�ves e imagin�veis que existem ou venha a existir na nossa complexa legisla��o.
-- Desta forma, podemos fazer este v�nculo em TABELA DE GRUPO_TRIBUTACAO (conforme venho defendendo desde o in�cio do projeto) e depois vincular este ID_GRUPO_TRIBUTACAO no cadastro de cada dos produtos possibilitando um calculo totalmente automatizado em todo o sistema especialmente na EMISSAO de NFe e do CUPOM FISCAL.
-- Ainda n�o conseguir imaginar uma forma melhor de fazer o tratamento da imensa diversidade tribut�ria brasileira, se n�o esta.
-- ------------------------------------------------------------

CREATE TABLE TRIB_COFINS_COD_APURACAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TRIBUTACAO_COFINS INTEGER UNSIGNED  NOT NULL  ,
  ID_GRUPO_TRIBUTARIO INTEGER  NOT NULL  ,
  ID_OPERACAO_FISCAL INTEGER UNSIGNED  NOT NULL  ,
  ID_CST_COFINS INTEGER UNSIGNED  NOT NULL  ,
  ID_COD_APURACAO INTEGER UNSIGNED  NOT NULL  ,
  MODALIDADE_BASE_CALCULO CHAR(1)  NULL  ,
  ALIQ_PORCENTO DECIMAL(18,6)  NULL  ,
  ALIQ_UNID DECIMAL(18,6)  NULL  ,
  PORCENTO_BASE_CALCULO DECIMAL(18,6)  NULL  ,
  PRECO_MAXIMO DECIMAL(18,6)  NULL  ,
  PAUTA_FISCAL DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX TRIB_COFINS_COD_APURACAO_FK1(ID_OPERACAO_FISCAL)  ,
INDEX TRIB_COFINS_COD_APURACAO_FK2(ID_TRIBUTACAO_COFINS)  ,
INDEX TRIB_COFINS_COD_APURACAO_FK3(ID_GRUPO_TRIBUTARIO)  ,
INDEX TRIB_COFINS_COD_APURACAO_FK4(ID_COD_APURACAO)  ,
INDEX TRIB_COFINS_COD_APURACAO_FK5(ID_CST_COFINS),
  FOREIGN KEY(ID_OPERACAO_FISCAL)
    REFERENCES OPERACAO_FISCAL(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TRIBUTACAO_COFINS)
    REFERENCES TRIBUTACAO_COFINS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_GRUPO_TRIBUTARIO)
    REFERENCES GRUPO_TRIBUTARIO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_COD_APURACAO)
    REFERENCES COD_APURACAO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CST_COFINS)
    REFERENCES CST_COFINS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
COMMENT = 'O objetivo � relacionar para cada CST_COFINS um codigo de apura��o conforme a tabela acima, informando ainda a modalidade calculo do COFINS que pode ser por percentual ou por unidade de produto.  Com esta tabela podemos armazenar as in�meras formas de calculo, combinada com suas respectivas al�quotas e CST_COFINS poss�ves e imagin�veis que existem ou venha a existir na nossa complexa legisla��o.  Desta forma, podemos fazer este v�nculo em TABELA DE GRUPO_TRIBUTACAO (conforme venho defendendo desde o in�cio do projeto) e depois vincular este ID_GRUPO_TRIBUTACAO no cadastro de cada dos produtos possibilitando um calculo totalmente automatizado em todo o sistema especialmente na EMISSAO de NFe e do CUPOM FISCAL.  Ainda n�o conseguir imaginar uma forma melhor de fazer o tratamento da imensa diversidade tribut�ria brasileira, se n�o esta.' ;



-- ------------------------------------------------------------
-- Esta tabela ira armazenar a tributa�ao para cada UF em cada GRUPO TRIBUTARIO dentro de cada opera��o cadastrada.
-- Uma tributa�ao pode ser usada para uma UF ou v�rias UFs
-- ------------------------------------------------------------

CREATE TABLE TRIBUTACAO_ICMS_UF (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TRIBUTACAO_ICMS INTEGER UNSIGNED  NULL  ,
  ID_GRUPO_TRIBUTARIO INTEGER  NOT NULL  ,
  ID_CFOP INTEGER UNSIGNED  NOT NULL  ,
  ID_CSOSN INTEGER UNSIGNED  NOT NULL  ,
  ID_CST_B_ICMS INTEGER UNSIGNED  NOT NULL  ,
  ID_OPERACAO_FISCAL INTEGER UNSIGNED  NOT NULL  ,
  UF_ID INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(100)  NULL  ,
  MVA DECIMAL(18,6)  NULL  ,
  PORCENTO_BC_ICMS_ST DECIMAL(18,6)  NULL  ,
  MODALIDADE_BC_ICMS_ST CHAR(1)  NULL  ,
  ALIQ_INTERNA_DESTINO DECIMAL(18,6)  NULL  ,
  ALIQ_UNID_ICMS_ST DECIMAL(18,6)  NOT NULL  ,
  ALIQ_INTERESTADUAL DECIMAL(18,6)  NOT NULL  ,
  PRECO_MAXIMO_ICMS_ST INTEGER UNSIGNED  NULL  ,
  PAUTA_ICMS_ST DECIMAL(18,6)  NOT NULL  ,
  ALIQ_INTERNA_ORIGEM DECIMAL(18,6)  NULL  ,
  ALIQ_UNID_INTERNA DECIMAL(18,6)  NULL  ,
  PAUTA_INTERNA DECIMAL(18,6)  NULL  ,
  PRECO_MAXIMO_INTERNA DECIMAL(18,6)  NULL  ,
  PORCENTO_BC_INTERNA DECIMAL(18,6)  NULL  ,
  MODALIDADE_BC_ICMS CHAR(1)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX TRIBUTACAO_ICMS_UF_FKI1(ID_CFOP)  ,
INDEX TRIBUTACAO_ICMS_UF_FK2(ID_CSOSN)  ,
INDEX TRIBUTACAO_ICMS_UF_FK3(ID_CST_B_ICMS)  ,
INDEX TRIBUTACAO_ICMS_UF_FK4(UF_ID)  ,
INDEX TRIBUTACAO_ICMS_UF_FK5(ID_GRUPO_TRIBUTARIO)  ,
INDEX TRIBUTACAO_ICMS_UF_FK6(ID_OPERACAO_FISCAL)  ,
INDEX TRIBUTACAO_ICMS_UF_FK7(ID_TRIBUTACAO_ICMS),
  FOREIGN KEY(ID_CFOP)
    REFERENCES CFOP(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CSOSN)
    REFERENCES CSOSN(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CST_B_ICMS)
    REFERENCES CST_B_ICMS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(UF_ID)
    REFERENCES UF(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_GRUPO_TRIBUTARIO)
    REFERENCES GRUPO_TRIBUTARIO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_OPERACAO_FISCAL)
    REFERENCES OPERACAO_FISCAL(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TRIBUTACAO_ICMS)
    REFERENCES TRIBUTACAO_ICMS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
COMMENT = 'Esta tabela ira armazenar a tributa�ao para cada UF em cada GRUPO TRIBUTARIO dentro de cada opera��o cadastrada.  Uma tributa�ao pode ser usada para uma UF ou v�rias UFs' ;



-- ------------------------------------------------------------
-- Tabela com a rela��o dos clientes.
-- ------------------------------------------------------------

CREATE TABLE CLIENTE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TRANSPORTADORA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONDICOES_PAGAMENTO INTEGER UNSIGNED  NOT NULL  ,
  ID_TABELA_PRECO INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  ID_OPERACAO_FISCAL INTEGER UNSIGNED  NOT NULL  ,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  ID_ATIVIDADE_FOR_CLI INTEGER UNSIGNED  NOT NULL  ,
  ID_SITUACAO_FOR_CLI INTEGER UNSIGNED  NOT NULL  ,
  DESDE DATE  NULL  ,
  DATA_CADASTRO DATE  NULL  ,
  OBSERVACOES TEXT  NULL  ,
  CONTA_TOMADOR VARCHAR(30)  NULL   COMMENT 'Conta vinculada ao plano de contas cont�bil.' ,
  NUM_DIAS_PRIM_VENC DECIMAL(4,0)  NULL   COMMENT 'indicar o numero de dias do primeiro vencimento de titulos' ,
  NUM_DIAS_INTERVALO_PARC DECIMAL(4,0)  NULL   COMMENT 'indicar numeros de dias do intervalo de uma parcela para outra' ,
  QTD_PARCELAS DECIMAL(4,0)  NULL   COMMENT 'quantidade de parcelas do prazo' ,
  GERA_FINANCEIRO CHAR(1)  NULL   COMMENT 'Indicar se o cliente ter� direito de comprar a prazo faturado e parcelado' ,
  INDICADOR_PRECO CHAR(1)  NULL   COMMENT 'T=tabela, P=Ultimo pedido: Indicar se os pre�os deste cliente ser� pela tabela informada ou ultimo pedido de venda' ,
  PORCENTO_DESCONTO DECIMAL(18,6)  NULL  ,
  FORMA_DESCONTO CHAR(1)  NULL   COMMENT 'P=produto, F= fim do pedido' ,
  LIMITE_CREDITO DECIMAL(18,6)  NULL  ,
  TIPO_FRETE CHAR(1)  NULL   COMMENT 'emitente, destinatario, sem frete, terceiros'   ,
PRIMARY KEY(ID)  ,
INDEX FK_SITUACAO_CLIENTE(ID_SITUACAO_FOR_CLI)  ,
INDEX FK_ATIVIDADE_CLIENTE(ID_ATIVIDADE_FOR_CLI)  ,
INDEX FK_PESSOA_CLIENTE(ID_PESSOA)  ,
INDEX CLIENTE_FKIndex4(ID_OPERACAO_FISCAL)  ,
INDEX CLIENTE_FKIndex5(ID_CONTABIL_CONTA)  ,
INDEX CLIENTE_FKIndex6(ID_TABELA_PRECO)  ,
INDEX CLIENTE_FKIndex7(ID_CONDICOES_PAGAMENTO)  ,
INDEX CLIENTE_FKIndex8(ID_TRANSPORTADORA),
  FOREIGN KEY(ID_SITUACAO_FOR_CLI)
    REFERENCES SITUACAO_FOR_CLI(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_ATIVIDADE_FOR_CLI)
    REFERENCES ATIVIDADE_FOR_CLI(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_OPERACAO_FISCAL)
    REFERENCES OPERACAO_FISCAL(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TABELA_PRECO)
    REFERENCES TABELA_PRECO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONDICOES_PAGAMENTO)
    REFERENCES CONDICOES_PAGAMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TRANSPORTADORA)
    REFERENCES TRANSPORTADORA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com a rela��o dos clientes.' ;











-- ------------------------------------------------------------
-- Tabela com os colaboradores da empresa.
-- ------------------------------------------------------------

CREATE TABLE COLABORADOR (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  ID_SINDICATO INTEGER UNSIGNED  NOT NULL  ,
  ID_TIPO_ADMISSAO INTEGER UNSIGNED  NOT NULL  ,
  ID_SITUACAO_COLABORADOR INTEGER UNSIGNED  NOT NULL  ,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  ID_TIPO_COLABORADOR INTEGER UNSIGNED  NOT NULL  ,
  ID_NIVEL_FORMACAO INTEGER UNSIGNED  NOT NULL  ,
  ID_CARGO INTEGER UNSIGNED  NOT NULL  ,
  ID_SETOR INTEGER UNSIGNED  NOT NULL  ,
  MATRICULA VARCHAR(10)  NULL  ,
  TIPO_SANGUINEO VARCHAR(5)  NULL  ,
  FOTO_34 TEXT  NULL   COMMENT 'Caminho onde a foto est� armazenada' ,
  DATA_CADASTRO DATE  NULL  ,
  DATA_ADMISSAO DATE  NULL  ,
  VENCIMENTO_FERIAS DATE  NULL   COMMENT 'O  preenchimento desse campo � obrigat�rio, para efeito de c�lculo de f�rias e rescis�o' ,
  DATA_TRANSFERENCIA DATE  NULL   COMMENT 'Preenchido caso o colaborador tenha sido transferido' ,
  FGTS_OPTANTE CHAR(1)  NULL   COMMENT 'S=Sim | N=N�o' ,
  FGTS_DATA_OPCAO DATE  NULL   COMMENT 'Data de op��o do FGTS (sistema traz a data de admiss�o)' ,
  FGTS_CONTA INTEGER UNSIGNED  NULL   COMMENT 'N�mero da conta do FGTS' ,
  PAGAMENTO_FORMA CHAR(1)  NULL   COMMENT '1=Dinheiro | 2=Cheque | 3=Conta' ,
  PAGAMENTO_BANCO VARCHAR(10)  NULL   COMMENT 'C�digo do banco para pagamento' ,
  PAGAMENTO_AGENCIA INTEGER UNSIGNED  NULL   COMMENT 'C�digo da agencia para pagamento' ,
  PAGAMENTO_AGENCIA_DIGITO INTEGER UNSIGNED  NULL  ,
  PAGAMENTO_CONTA INTEGER UNSIGNED  NULL   COMMENT 'C�digo da conta para pagamento' ,
  PAGAMENTO_CONTA_DIGITO INTEGER UNSIGNED  NULL  ,
  EXAME_MEDICO_ULTIMO DATE  NULL  ,
  EXAME_MEDICO_VENCIMENTO DATE  NULL  ,
  PIS_DATA_CADASTRO DATE  NULL  ,
  PIS_NUMERO INTEGER UNSIGNED  NULL  ,
  PIS_BANCO VARCHAR(10)  NULL   COMMENT 'C�digo do banco do PIS' ,
  PIS_AGENCIA INTEGER UNSIGNED  NULL  ,
  PIS_AGENCIA_DIGITO INTEGER UNSIGNED  NULL  ,
  CTPS_NUMERO VARCHAR(10)  NULL  ,
  CTPS_SERIE VARCHAR(10)  NULL  ,
  CTPS_DATA_EXPEDICAO DATE  NULL  ,
  CTPS_UF CHAR(2)  NULL  ,
  DESCONTO_PLANO_SAUDE CHAR(1)  NULL   COMMENT 'S=Sim | N=N�o [informar desconto no plano de sa�de para empregados e/ou dependentes]' ,
  SAI_NA_RAIS CHAR(1)  NULL   COMMENT 'S=Sim | N=N�o [informar se os dados do  empregado dever�o sai na RAIS]' ,
  CATEGORIA_SEFIP CHAR(2)  NULL   COMMENT 'Importar c�digo da categoria da tabela SEFIP' ,
  OBSERVACOES TEXT  NULL  ,
  OCORRENCIA_SEFIP INTEGER UNSIGNED  NULL  ,
  COD_ADMISSAO_CAGED INTEGER UNSIGNED  NULL  ,
  COD_DEMISSAO_CAGED INTEGER UNSIGNED  NULL  ,
  DATA_DEMISSAO DATE  NULL  ,
  CODIGO_DEMISSAO_SEFIP INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_COLABORADOR_SETOR(ID_SETOR)  ,
INDEX FK_CARGO_COLABORADOR(ID_CARGO)  ,
INDEX FK_TIPO_COLABORADOR(ID_TIPO_COLABORADOR)  ,
INDEX FK_NIVEL_FORMACAO_COLABORADOR(ID_NIVEL_FORMACAO)  ,
INDEX FK_PESSOA_COLABORADOR(ID_PESSOA)  ,
INDEX FK_SITUACAO_COLABORADOR(ID_SITUACAO_COLABORADOR)  ,
INDEX FK_TIPO_ADMISSAO_COL(ID_TIPO_ADMISSAO)  ,
INDEX COLABORADOR_FKIndex8(ID_SINDICATO)  ,
INDEX COLABORADOR_FKIndex9(ID_CONTABIL_CONTA),
  FOREIGN KEY(ID_SETOR)
    REFERENCES SETOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CARGO)
    REFERENCES CARGO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_COLABORADOR)
    REFERENCES TIPO_COLABORADOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_NIVEL_FORMACAO)
    REFERENCES NIVEL_FORMACAO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_SITUACAO_COLABORADOR)
    REFERENCES SITUACAO_COLABORADOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_ADMISSAO)
    REFERENCES TIPO_ADMISSAO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_SINDICATO)
    REFERENCES SINDICATO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com os colaboradores da empresa.' ;

















-- ------------------------------------------------------------
-- Tabela de produtos.
-- ------------------------------------------------------------

CREATE TABLE PRODUTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_ALMOXARIFADO INTEGER UNSIGNED  NOT NULL  ,
  ID_GRUPO_TRIBUTARIO INTEGER  NOT NULL  ,
  ID_TIPO_ITEM_SPED INTEGER UNSIGNED  NULL  ,
  ID_CST_A_ICMS INTEGER UNSIGNED  NOT NULL  ,
  ID_NCM INTEGER UNSIGNED  NOT NULL  ,
  ID_TRIBUTACAO_ESTADUAL INTEGER UNSIGNED  NOT NULL  ,
  ID_BASE_CALCULO_REDUZIDA INTEGER UNSIGNED  NOT NULL  ,
  ID_IMPOSTO_ST_UF INTEGER UNSIGNED  NOT NULL  ,
  ID_MARCA_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  ID_SUB_GRUPO INTEGER UNSIGNED  NOT NULL  ,
  ID_UNIDADE INTEGER UNSIGNED  NOT NULL  ,
  GTIN CHAR(14)  NULL   COMMENT 'C�digo GTIN do produto com at� 14 caracteres' ,
  CODIGO_INTERNO VARCHAR(60)  NULL  ,
  NBM VARCHAR(10)  NULL   COMMENT 'Nomenclatura Brasileira de Mercadorias (NBM), utilizada pelo Brasil entre janeiro de 1989 e dezembro de 1995.' ,
  NOME VARCHAR(100)  NULL  ,
  DESCRICAO TEXT  NULL  ,
  DESCRICAO_PDV VARCHAR(30)  NULL  ,
  VALOR_COMPRA DECIMAL(18,6)  NULL  ,
  VALOR_VENDA DECIMAL(18,6)  NULL  ,
  PRECO_VENDA_MINIMO DECIMAL(18,6)  NULL  ,
  PRECO_SUGERIDO DECIMAL(18,6)  NULL  ,
  CUSTO_MEDIO_LIQUIDO DECIMAL(18,6)  NULL  ,
  PRECO_LUCRO_ZERO DECIMAL(18,6)  NULL  ,
  PRECO_LUCRO_MINIMO DECIMAL(18,6)  NULL  ,
  PRECO_LUCRO_MAXIMO DECIMAL(18,6)  NULL  ,
  MARKUP DECIMAL(18,6)  NULL  ,
  QUANTIDADE_ESTOQUE DECIMAL(18,6)  NULL  ,
  ESTOQUE_MINIMO DECIMAL(18,6)  NULL  ,
  ESTOQUE_MAXIMO DECIMAL(18,6)  NULL  ,
  EXCLUIDO CHAR(1)  NULL   COMMENT 'Valores poss�veis: S-Sim | N-N�o' ,
  INATIVO CHAR(1)  NULL   COMMENT 'Valores poss�veis: S-Sim | N-N�o' ,
  DATA_CADASTRO DATE  NULL  ,
  IMAGEM TEXT  NULL   COMMENT 'Caminho para a imagem do produto' ,
  EX_TIPI CHAR(3)  NULL   COMMENT 'Informar com o C�digo de Exce��o de NCM,de acordo com a Tabela de Incid�ncia do  Imposto de Produtos Industrializados (TIPI), quando existir.' ,
  CODIGO_LST CHAR(4)  NULL   COMMENT 'C�digo do servi�o conforme lista do Anexo I da Lei  Complementar Federal n� 116/03.' ,
  CLASSE_ABC CHAR(1)  NULL  ,
  IAT CHAR(1)  NULL   COMMENT 'A=ARREDONDAMENTO | T=TRUNCAMENTO' ,
  IPPT CHAR(1)  NULL   COMMENT 'P=PROPRIO | T=TERCEIRO' ,
  TIPO_ITEM_SPED CHAR(2)  NOT NULL   COMMENT 'Tipo do item � Atividades Industriais, Comerciais e  Servi�os:  00 � Mercadoria para Revenda;  01 � Mat�ria-Prima;  02 � Embalagem;  03 � Produto em Processo;  04 � Produto Acabado;  05 � Subproduto;  06 � Produto Intermedi�rio;  07 � Material de Uso e Consumo;  08 � Ativo Imobilizado;  09 � Servi�os;  10 � Outros insumos;  99 � Outras' ,
  PESO DECIMAL(18,6)  NULL  ,
  PORCENTO_COMISSAO DECIMAL(18,6)  NULL   COMMENT 'Percentual de comissao no produto' ,
  PONTO_PEDIDO DECIMAL(18,6)  NULL   COMMENT 'Informar em que ponto o sistema ir� sugerir a compra' ,
  ESTOQUE_IDEAL DECIMAL(18,6)  NULL   COMMENT 'Quatidade Ideal do estoque a ser mantido, neste caso a sugestao de compra deve ser a diferen�a entre o EST. ATUAL e EST. IDEAL' ,
  LOTE_ECONOMICO_COMPRA DECIMAL(18,6)  NULL   COMMENT 'Quantidade que otimiza os custos de frete, financeiro, etc (quantidade �tima de compra)'   ,
PRIMARY KEY(ID)  ,
INDEX FK_PRODUTO_UNIDADE(ID_UNIDADE)  ,
INDEX FK_PRODUTO_SUBGRUPO(ID_SUB_GRUPO)  ,
INDEX FK_MARCA_PRODUTO(ID_MARCA_PRODUTO)  ,
INDEX FK_IMPOSTO_ST_UF_PRODUTO(ID_IMPOSTO_ST_UF)  ,
INDEX FK_BCR_PRODUTO(ID_BASE_CALCULO_REDUZIDA)  ,
INDEX FK_TRIB_EST_PRODUTO(ID_TRIBUTACAO_ESTADUAL)  ,
INDEX FK_NCM_PRODUTO(ID_NCM)  ,
INDEX PRODUTO_FKIndex9(ID_CST_A_ICMS)  ,
INDEX PRODUTO_FKIndex10(ID_TIPO_ITEM_SPED)  ,
INDEX PRODUTO_FKIndex11(ID_GRUPO_TRIBUTARIO)  ,
INDEX PRODUTO_FKIndex12(ID_ALMOXARIFADO),
  FOREIGN KEY(ID_UNIDADE)
    REFERENCES UNIDADE_PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_SUB_GRUPO)
    REFERENCES SUB_GRUPO_PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_MARCA_PRODUTO)
    REFERENCES MARCA_PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_IMPOSTO_ST_UF)
    REFERENCES IMPOSTO_ST_UF(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_BASE_CALCULO_REDUZIDA)
    REFERENCES BASE_CALCULO_REDUZIDA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TRIBUTACAO_ESTADUAL)
    REFERENCES TRIBUTACAO_ESTADUAL(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_NCM)
    REFERENCES NCM(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CST_A_ICMS)
    REFERENCES CST_A_ICMS(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_ITEM_SPED)
    REFERENCES TIPO_ITEM_SPED(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_GRUPO_TRIBUTARIO)
    REFERENCES GRUPO_TRIBUTARIO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_ALMOXARIFADO)
    REFERENCES ALMOXARIFADO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela de produtos.' ;

















-- ------------------------------------------------------------
-- Tabela de promo��es. 
-- ------------------------------------------------------------

CREATE TABLE PRODUTO_PROMOCAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  DATA_INICIO DATE  NULL  ,
  DATA_FIM DATE  NULL  ,
  QUANTIDADE_EM_PROMOCAO DECIMAL(18,6)  NULL  ,
  QUANTIDADE_MAXIMA_CLIENTE DECIMAL(18,6)  NULL  ,
  VALOR DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_PRODUTO_PROMOCAO(ID_PRODUTO),
  FOREIGN KEY(ID_PRODUTO)
    REFERENCES PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela de promo��es.' ;



-- ------------------------------------------------------------
-- DRE - detalhes.
-- ------------------------------------------------------------

CREATE TABLE CONTABIL_DRE_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_DRE_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  CLASSIFICACAO VARCHAR(30)  NULL  ,
  DESCRICAO VARCHAR(100)  NULL  ,
  FORMA_CALCULO CHAR(1)  NULL   COMMENT 'S=Sint�tica [soma contas filhas - sinal de mais ou de menos] | V=Vinculada [vinculada a conta do balancete - recupera o sinal da conta m�e] | R=Resultado de Opera��es da DRE [soma das opera��es - sinal de igual]' ,
  SINAL CHAR(1)  NULL   COMMENT '+ | - | =' ,
  NATUREZA CHAR(1)  NULL   COMMENT 'C=Credora | D=Devedora' ,
  VALOR DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_DRE_CAB_DET(ID_CONTABIL_DRE_CABECALHO),
  FOREIGN KEY(ID_CONTABIL_DRE_CABECALHO)
    REFERENCES CONTABIL_DRE_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'DRE - detalhes.' ;






-- ------------------------------------------------------------
-- C�digos adicionais para produtos.
-- ------------------------------------------------------------

CREATE TABLE CODIGO_PRODUTO_ADICIONAL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  CODIGO VARCHAR(14)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_PRODUTO_CODIGO_ADD(ID_PRODUTO),
  FOREIGN KEY(ID_PRODUTO)
    REFERENCES PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'C�digos adicionais para produtos.' ;



CREATE TABLE EXTRATO_CONTA_BANCO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTA_CAIXA INTEGER UNSIGNED  NOT NULL  ,
  MES CHAR(2)  NULL  ,
  ANO CHAR(4)  NULL  ,
  DATA_MOVIMENTO DATE  NULL  ,
  DATA_BALANCETE DATE  NULL  ,
  HISTORICO VARCHAR(50)  NULL  ,
  DOCUMENTO VARCHAR(50)  NULL  ,
  VALOR DECIMAL(18,6)  NULL  ,
  CONCILIADO CHAR(1)  NULL   COMMENT 'S=SIM | N=N�O' ,
  OBSERVACOES TEXT  NULL    ,
PRIMARY KEY(ID)  ,
INDEX EXTRATO_CONTA_BANCO(ID_CONTA_CAIXA),
  FOREIGN KEY(ID_CONTA_CAIXA)
    REFERENCES CONTA_CAIXA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;




-- ------------------------------------------------------------
-- Armazena os poss�veis per�odos para gerar os fluxos de caixa.
-- 
-- Existem sete per�odos padr�es que j� ser�o armazenados para todas as empresas cadastradas:
-- 01=Di�rio | 02=Semanal | 03=Mensal | 04=Bimestral | 05=Trimestral | 06=Semestral | 07=Anual
-- 
-- O objetivo � gerar de forma autom�tica os per�odos que ser�o informados pelo sistema/usu�rio.
-- ------------------------------------------------------------

CREATE TABLE FLUXO_CAIXA_PERIODO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTA_CAIXA INTEGER UNSIGNED  NOT NULL  ,
  PERIODO CHAR(02)  NULL   COMMENT '01=Di�rio | 02=Semanal | 03=Mensal | 04=Bimestral | 05=Trimestral | 06=Semestral | 07=Anual' ,
  NOME VARCHAR(30)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FLUXO_CAIXA_PERIODO_FKIndex1(ID_CONTA_CAIXA),
  FOREIGN KEY(ID_CONTA_CAIXA)
    REFERENCES CONTA_CAIXA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os poss�veis per�odos para gerar os fluxos de caixa.    Existem sete per�odos padr�es que j� ser�o armazenados para todas as empresas cadastradas:  01=Di�rio | 02=Semanal | 03=Mensal | 04=Bimestral | 05=Trimestral | 06=Semestral | 07=Anual    O objetivo � gerar de forma autom�tica os per�odos que ser�o informados pelo sistema/usu�rio.' ;




-- ------------------------------------------------------------
-- Armazena os dados de um fechamento mensal.
-- ------------------------------------------------------------

CREATE TABLE FECHAMENTO_CAIXA_BANCO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTA_CAIXA INTEGER UNSIGNED  NOT NULL  ,
  DATA_FECHAMENTO DATE  NULL  ,
  MES CHAR(2)  NULL  ,
  ANO CHAR(4)  NULL  ,
  SALDO_ANTERIOR DECIMAL(18,6)  NULL  ,
  RECEBIMENTOS DECIMAL(18,6)  NULL  ,
  PAGAMENTOS DECIMAL(18,6)  NULL  ,
  SALDO_CONTA DECIMAL(18,6)  NULL  ,
  CHEQUE_NAO_COMPENSADO DECIMAL(18,6)  NULL  ,
  SALDO_DISPONIVEL DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FECHAMENTO_CAIXA_BANCO(ID_CONTA_CAIXA),
  FOREIGN KEY(ID_CONTA_CAIXA)
    REFERENCES CONTA_CAIXA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os dados de um fechamento mensal.' ;



-- ------------------------------------------------------------
-- Tabela de ficha t�cnica para produtos produzidos pelo proprio estabelecimento.
-- ------------------------------------------------------------

CREATE TABLE FICHA_TECNICA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(50)  NULL  ,
  ID_PRODUTO_FILHO INTEGER UNSIGNED  NULL  ,
  QUANTIDADE DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_PRODUTO_FICHA_TECNICA(ID_PRODUTO),
  FOREIGN KEY(ID_PRODUTO)
    REFERENCES PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela de ficha t�cnica para produtos produzidos pelo proprio estabelecimento.' ;



-- ------------------------------------------------------------
-- Tabela que armazena os diversos fluxos de caixa da empresa.
-- 
-- Se o usuario informar um per�odo mensal e preencher "10" no campo NUMERO_PERIODOS, o sistema automaticamente gerar� os dados para o or�amento para os 10 meses a partir da DATA_INICIAL. 
-- 
-- O mesmo ocorre com os outros per�odos: di�rio, semanal, anual, etc.
-- ------------------------------------------------------------

CREATE TABLE FLUXO_CAIXA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_FLUXO_CAIXA_PERIODO INTEGER UNSIGNED  NOT NULL  ,
  NOME VARCHAR(30)  NULL   COMMENT 'Nome do or�amento' ,
  DESCRICAO TEXT  NULL   COMMENT 'Descri��o detalhada do or�amento' ,
  DATA_INICIAL DATE  NULL   COMMENT 'Data inicial do or�amento' ,
  NUMERO_PERIODOS INTEGER UNSIGNED  NULL   COMMENT 'Quantidade de per�odos' ,
  DATA_BASE DATE  NULL   COMMENT 'Data de onde vir�o os dados j� realizados'   ,
PRIMARY KEY(ID)  ,
INDEX FLUXO_CAIXA_FKIndex1(ID_FLUXO_CAIXA_PERIODO),
  FOREIGN KEY(ID_FLUXO_CAIXA_PERIODO)
    REFERENCES FLUXO_CAIXA_PERIODO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que armazena os diversos fluxos de caixa da empresa.    Se o usuario informar um per�odo mensal e preencher "10" no campo NUMERO_PERIODOS, o sistema automaticamente gerar� os dados para o or�amento para os 10 meses a partir da DATA_INICIAL.     O mesmo ocorre com os outros per�odos: di�rio, semanal, anual, etc.' ;








-- ------------------------------------------------------------
-- Tabela que garda as parcelas para pagamento. Caso o pagamento seja efetuado de uma vez, a tabela LANCAMENTO_PAGAR gerar� uma parcela para ser paga e a mesma ser� armazenada 
-- nesta tabela.
-- ------------------------------------------------------------

CREATE TABLE PARCELA_PAGAR (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_STATUS_PARCELA_PAGAR INTEGER UNSIGNED  NOT NULL  ,
  ID_LANCAMENTO_PAGAR INTEGER UNSIGNED  NOT NULL  ,
  NUMERO_PARCELA INTEGER UNSIGNED  NULL  ,
  DATA_EMISSAO DATE  NULL  ,
  DATA_VENCIMENTO DATE  NULL  ,
  DESCONTO_ATE DATE  NULL   COMMENT 'Conceder desconto at� a data especificada' ,
  SOFRE_RETENCAO CHAR(1)  NULL   COMMENT 'Dado que � importado da tabela do fornecedor para controlar as parcelas com reten��o de pagamento.' ,
  VALOR DECIMAL(18,6)  NULL  ,
  TAXA_JURO DECIMAL(18,6)  NULL   COMMENT 'Previs�o' ,
  TAXA_MULTA DECIMAL(18,6)  NULL   COMMENT 'Previs�o' ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL   COMMENT 'Previs�o' ,
  VALOR_JURO DECIMAL(18,6)  NULL  ,
  VALOR_MULTA DECIMAL(18,6)  NULL  ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_STATUS_PARCELA_PAGAR(ID_STATUS_PARCELA_PAGAR)  ,
INDEX FK_LANCAMENTO_PARCELA(ID_LANCAMENTO_PAGAR),
  FOREIGN KEY(ID_STATUS_PARCELA_PAGAR)
    REFERENCES STATUS_PARCELA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_LANCAMENTO_PAGAR)
    REFERENCES LANCAMENTO_PAGAR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que garda as parcelas para pagamento. Caso o pagamento seja efetuado de uma vez, a tabela LANCAMENTO_PAGAR gerar� uma parcela para ser paga e a mesma ser� armazenada   nesta tabela.' ;








-- ------------------------------------------------------------
-- Armazena as requisi��es de compra.
-- ------------------------------------------------------------

CREATE TABLE REQUISICAO_COMPRA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_COLABORADOR INTEGER UNSIGNED  NOT NULL  ,
  ID_TIPO_REQUISICAO INTEGER UNSIGNED  NOT NULL  ,
  DATA_REQUISICAO DATE  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_TIPO_REQ_COMPRA(ID_TIPO_REQUISICAO)  ,
INDEX REQUISICAO_COMPRA_FK(ID_COLABORADOR),
  FOREIGN KEY(ID_TIPO_REQUISICAO)
    REFERENCES TIPO_REQUISICAO_COMPRA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_COLABORADOR)
    REFERENCES COLABORADOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena as requisi��es de compra.' ;



-- ------------------------------------------------------------
-- Tabela com os detalhes da requisi��o de compra
-- ------------------------------------------------------------

CREATE TABLE REQUISICAO_COMPRA_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  ID_REQUISICAO_COMPRA INTEGER UNSIGNED  NOT NULL  ,
  QUANTIDADE DECIMAL(18,6)  NULL  ,
  ITEM_COTADO CHAR(1)  NULL   COMMENT 'Quando a quantidade for utilizada de forma completa deve-se marcar S para Sim, do contr�rio, N para n�o.'   ,
PRIMARY KEY(ID)  ,
INDEX FK_REQUISICAO_COMPRA_DETALHE(ID_REQUISICAO_COMPRA)  ,
INDEX REQUISICAO_COMPRA_DETALHE_FK(ID_PRODUTO),
  FOREIGN KEY(ID_REQUISICAO_COMPRA)
    REFERENCES REQUISICAO_COMPRA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PRODUTO)
    REFERENCES PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com os detalhes da requisi��o de compra' ;




CREATE TABLE TABELA_PRECO_PRODUTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TABELA_PRECO INTEGER UNSIGNED  NOT NULL  ,
  ID_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  PRECO INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID)  ,
INDEX TABELA_PRECO_PRODUTO_FKIndex1(ID_TABELA_PRECO)  ,
INDEX TABELA_PRECO_PRODUTO_FKIndex2(ID_PRODUTO),
  FOREIGN KEY(ID_TABELA_PRECO)
    REFERENCES TABELA_PRECO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PRODUTO)
    REFERENCES PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Tabela que armazena os talonario de cheque de determinada empresa.
-- ------------------------------------------------------------

CREATE TABLE TALONARIO_CHEQUE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTA_CAIXA INTEGER UNSIGNED  NOT NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  TALAO VARCHAR(10)  NULL  ,
  NUMERO INTEGER UNSIGNED  NULL  ,
  STATUS_TALAO CHAR(1)  NULL   COMMENT 'N=Normal | C=Cancelado | E=Extraviado | U=Utilizado'   ,
PRIMARY KEY(ID)  ,
INDEX FK_EMPRESA_TALONARIO_CHEQUE(ID_EMPRESA)  ,
INDEX FK_CONTA_TALONARIO(ID_CONTA_CAIXA),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTA_CAIXA)
    REFERENCES CONTA_CAIXA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que armazena os talonario de cheque de determinada empresa.' ;




-- ------------------------------------------------------------
-- Contas vinculadas aos detalhes da DRE.
-- ------------------------------------------------------------

CREATE TABLE CONTABIL_DRE_VINCULO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_CONTA INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTABIL_DRE_DETALHE INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_DRE_VINCULO(ID_CONTABIL_DRE_DETALHE)  ,
INDEX FK_CONTA_DRE_VINCULO(ID_CONTABIL_CONTA),
  FOREIGN KEY(ID_CONTABIL_DRE_DETALHE)
    REFERENCES CONTABIL_DRE_DETALHE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_CONTA)
    REFERENCES CONTABIL_CONTA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Contas vinculadas aos detalhes da DRE.' ;



-- ------------------------------------------------------------
-- Tabela que armazena os itens da cota��o. Uma cota��o pode ser gerada a partir de v�rias requisi��es e uma requisi��o pode gerar v�rias cota��es.
-- ------------------------------------------------------------

CREATE TABLE COTACAO_COMPRA_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL  ,
  ID_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  ID_FORNECEDOR_COTACAO_COMPRA INTEGER UNSIGNED  NOT NULL  ,
  QUANTIDADE DECIMAL(18,6)  NULL  ,
  VALOR_UNITARIO DECIMAL(18,6)  NULL  ,
  VALOR_SUBTOTAL DECIMAL(18,6)  NULL  ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL   AUTO_INCREMENT,
  VALOR_TOTAL DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_FORNECEDOR_COTACAO_DETALHE(ID_FORNECEDOR_COTACAO_COMPRA)  ,
INDEX COTACAO_COMPRA_DETALHE_F3(ID_PRODUTO),
  FOREIGN KEY(ID_FORNECEDOR_COTACAO_COMPRA)
    REFERENCES FORNECEDOR_COTACAO_COMPRA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PRODUTO)
    REFERENCES PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que armazena os itens da cota��o. Uma cota��o pode ser gerada a partir de v�rias requisi��es e uma requisi��o pode gerar v�rias cota��es.' ;



-- ------------------------------------------------------------
-- Tabela que armazena as unidades secund�rias vinculadas a uma unidade principal e a tabela de produtos ja com o fator de convers�o.
-- ------------------------------------------------------------

CREATE TABLE UNIDADE_CONVERSAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  ID_UNIDADE_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  SIGLA VARCHAR(10)  NULL  ,
  DESCRICAO TEXT  NULL  ,
  FATOR_CONVERSAO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_UNIDADE_CONVERSAO(ID_UNIDADE_PRODUTO)  ,
INDEX FK_PRODUTO_CONVERSAO_UND(ID_PRODUTO),
  FOREIGN KEY(ID_UNIDADE_PRODUTO)
    REFERENCES UNIDADE_PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PRODUTO)
    REFERENCES PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que armazena as unidades secund�rias vinculadas a uma unidade principal e a tabela de produtos ja com o fator de convers�o.' ;



-- ------------------------------------------------------------
-- Tabela que armazena  os dados dos colaboradores que s�o vendedores.
-- ------------------------------------------------------------

CREATE TABLE VENDEDOR (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_COLABORADOR INTEGER UNSIGNED  NULL  ,
  ID_REPRESENTANTES INTEGER UNSIGNED  NULL  ,
  COMISSAO DECIMAL(18,6)  NULL  ,
  META_VENDAS DECIMAL(18,6)  NULL  ,
  TIPO_COMISSAO CHAR(1)  NULL   COMMENT 'Faturamento, Liquidez'   ,
PRIMARY KEY(ID)  ,
INDEX VENDEDOR_FK2(ID_REPRESENTANTES)  ,
INDEX VENDEDOR_FKIndex2(ID_COLABORADOR),
  FOREIGN KEY(ID_REPRESENTANTES)
    REFERENCES REPRESENTANTES(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_COLABORADOR)
    REFERENCES COLABORADOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que armazena  os dados dos colaboradores que s�o vendedores.' ;




-- ------------------------------------------------------------
-- Esta tabela ir� armazenar os BORDEROS de titulos para desconto
-- ------------------------------------------------------------

CREATE TABLE BORDERO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TIPO_RECEBIMENTO INTEGER UNSIGNED  NOT NULL  ,
  ID_CONTA_CAIXA INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(100)  NULL  ,
  VALOR_TOTAL DECIMAL(18,6)  NULL  ,
  VALOR_JUROS DECIMAL(18,6)  NULL  ,
  TAXA_JUROS DECIMAL(18,6)  NULL  ,
  VALOR_TAC DECIMAL(18,6)  NULL  ,
  DATA_INC DATE  NULL  ,
  DATA_LIBERACAO DATE  NULL  ,
  TARIFA_POR_TITULO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX BORDERO_FKIndex1(ID_CONTA_CAIXA)  ,
INDEX BORDERO_FKIndex2(ID_TIPO_RECEBIMENTO),
  FOREIGN KEY(ID_CONTA_CAIXA)
    REFERENCES CONTA_CAIXA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_RECEBIMENTO)
    REFERENCES TIPO_RECEBIMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Esta tabela ir� armazenar os BORDEROS de titulos para desconto' ;



-- ------------------------------------------------------------
-- Tabela com os usuarios do sistema
-- ------------------------------------------------------------

CREATE TABLE USUARIO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_COLABORADOR INTEGER UNSIGNED  NOT NULL  ,
  ID_PAPEL INTEGER UNSIGNED  NOT NULL  ,
  LOGIN VARCHAR(20)  NULL  ,
  SENHA VARCHAR(40)  NULL  ,
  DATA_CADASTRO DATE  NULL  ,
  ADMINISTRADOR CHAR(1)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_COLABORADOR_USUARIO(ID_COLABORADOR)  ,
INDEX FK_PAPEL_USUARIO(ID_PAPEL),
  FOREIGN KEY(ID_COLABORADOR)
    REFERENCES COLABORADOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PAPEL)
    REFERENCES PAPEL(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com os usuarios do sistema' ;



-- ------------------------------------------------------------
-- Tabela com os relacionamentos dos colaboradores.
-- ------------------------------------------------------------

CREATE TABLE COLABORADOR_RELACIONAMENTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_COLABORADOR INTEGER UNSIGNED  NOT NULL  ,
  ID_TIPO_RELACIONAMENTO INTEGER UNSIGNED  NOT NULL  ,
  NOME VARCHAR(100)  NULL  ,
  DATA_NASCIMENTO DATE  NULL  ,
  CPF VARCHAR(11)  NULL  ,
  REGISTRO_MATRICULA VARCHAR(50)  NULL   COMMENT 'N�mero do registro de nascimento' ,
  REGISTRO_CARTORIO VARCHAR(50)  NULL   COMMENT 'Cart�rio em que foi feito o registro do dependente' ,
  REGISTRO_CARTORIO_NUMERO VARCHAR(50)  NULL   COMMENT 'N�mero do registro do cart�rio' ,
  REGISTRO_NUMERO_LIVRO VARCHAR(10)  NULL   COMMENT 'N�mero do livro de registro do cart�rio' ,
  REGISTRO_NUMERO_FOLHA VARCHAR(10)  NULL   COMMENT 'N�mero da folha em que foi feito o registro' ,
  DATA_ENTREGA_DOCUMENTO DATE  NULL   COMMENT 'Data em que o empregado entregou o documento que  comprove a depend�ncia' ,
  SALARIO_FAMILIA CHAR(1)  NULL   COMMENT 'S=Sim | N�o [Se o dependente entra no c�lculo para o salario familia]' ,
  SALARIO_FAMILIA_IDADE_LIMITE INTEGER UNSIGNED  NULL   COMMENT 'Informar a idade limite para o sal�rio fam�lia' ,
  SALARIO_FAMILIA_DATA_FIM DATE  NULL   COMMENT 'Informar a data limite para o sal�rio fam�lia' ,
  IMPOSTO_RENDA_IDADE_LIMITE INTEGER UNSIGNED  NULL   COMMENT 'Informar a idade limite para o imposto de renda' ,
  IMPOSTO_RENDA_DATA_FIM INTEGER UNSIGNED  NULL   COMMENT 'Informar a data limite para o imposto de renda'   ,
PRIMARY KEY(ID)  ,
INDEX FK_COLABORADOR_RELACIONAMENTO(ID_COLABORADOR)  ,
INDEX FK_TIPO_REL_COLABORADOR(ID_TIPO_RELACIONAMENTO),
  FOREIGN KEY(ID_COLABORADOR)
    REFERENCES COLABORADOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_RELACIONAMENTO)
    REFERENCES TIPO_RELACIONAMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com os relacionamentos dos colaboradores.' ;














CREATE TABLE EMPRESA_PRODUTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(ID)  ,
INDEX EMPRESA_PRODUTO_FKIndex1(ID_PRODUTO)  ,
INDEX EMPRESA_PRODUTO_FKIndex2(ID_EMPRESA),
  FOREIGN KEY(ID_PRODUTO)
    REFERENCES PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Vinculo entre fornecedor e produto
-- ------------------------------------------------------------

CREATE TABLE FORNECEDOR_PRODUTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_FORNECEDOR INTEGER UNSIGNED  NOT NULL  ,
  ID_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  CODIGO_FORNECEDOR_PRODUTO VARCHAR(20)  NULL   COMMENT 'Mapeia o c�digo de determinado produto para o fornecedor na entrada da nota fiscal' ,
  DATA_ULTIMA_COMPRA DATE  NULL  ,
  PRECO_ULTIMA_COMPRA DECIMAL(18,6)  NULL  ,
  LOTE_MINIMO_COMPRA DECIMAL(18,6)  NULL   COMMENT 'Equivale ao menor lote que o fornecedor disponiliza. Ex. o fornecdor s� o Oleo de soja a caixa com 20 unidades. Nao adianta o sistema sugerir uma compra com 13 unid. pois o minimo a comprar sera de 20' ,
  MENOR_EMBALGEM_COMPRA DECIMAL(18,6)  NULL   COMMENT 'Equivale a menor embalagem de compra. Ex. Rolo com 50 metros' ,
  CUSTO_ULTIMA_COMPRA DECIMAL(18,6)  NULL   COMMENT 'Custo difere de pre�o, custo � soma do pre�o + frete +impostos+despesas'   ,
PRIMARY KEY(ID)  ,
INDEX FK_PRODUTO_FORNECEDOR(ID_PRODUTO)  ,
INDEX FK_FORNECEDOR_PRODUTO(ID_FORNECEDOR),
  FOREIGN KEY(ID_PRODUTO)
    REFERENCES PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_FORNECEDOR)
    REFERENCES FORNECEDOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Vinculo entre fornecedor e produto' ;







-- ------------------------------------------------------------
-- Esta tabela ter� registro inserido quando no executivel for disparada a rotina de CALCULAR COMISSAO (OU LANCAR COMISSAO) o sistema ir� nas tabelas VENDA_COMISSAO e RECEBIMENTO_COMISSAO. Na tabela venda comissao ir� selecionar aquelas cujo o tipo seja FATURAMENTO e na tabela RECEBIMENTO_COMISSAO os lan�amentos cujo tipo seja LIQUIDEZ. Se numa venda a comissao ser� no FATURAMENTO n�o deve haver lan�amento de comissao na tabela VENDA_RECEBIMENTO que aramazena apenas aquelas cujo tipo de comissao seja LIQUIDEZ. 
-- Se a comissao for tipo LIQUIDEZ esse calculo deve ser baseado nos registros das tabelas RECEBIMENTO_COMISSAO.
-- ------------------------------------------------------------

CREATE TABLE LANCAMENTO_COMISSAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_VENDEDOR INTEGER UNSIGNED  NOT NULL  ,
  ID_LANCAMENTO_PAGAR INTEGER UNSIGNED  NOT NULL  ,
  COMPETENCIA VARCHAR(10)  NULL  ,
  VENCIMENTO DATE  NULL  ,
  BASE_CALCULO DECIMAL(18,6)  NULL   COMMENT 'Equivale ao valor da venda ou ao valor recebido' ,
  VALOR_COMISSAO DECIMAL(18,6)  NULL   COMMENT 'Valor lan�ado nesta registro'   ,
PRIMARY KEY(ID)  ,
INDEX LANCAMENTO_COMISSAO_FKIndex1(ID_LANCAMENTO_PAGAR)  ,
INDEX LANCAMENTO_COMISSAO_FKIndex2(ID_VENDEDOR),
  FOREIGN KEY(ID_LANCAMENTO_PAGAR)
    REFERENCES LANCAMENTO_PAGAR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_VENDEDOR)
    REFERENCES VENDEDOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Esta tabela ter� registro inserido quando no executivel for disparada a rotina de CALCULAR COMISSAO (OU LANCAR COMISSAO) o sistema ir� nas tabelas VENDA_COMISSAO e RECEBIMENTO_COMISSAO. Na tabela venda comissao ir� selecionar aquelas cujo o tipo seja FATURAMENTO e na tabela RECEBIMENTO_COMISSAO os lan�amentos cujo tipo seja LIQUIDEZ. Se numa venda a comissao ser� no FATURAMENTO n�o deve haver lan�amento de comissao na tabela VENDA_RECEBIMENTO que aramazena apenas aquelas cujo tipo de comissao seja LIQUIDEZ.   Se a comissao for tipo LIQUIDEZ esse calculo deve ser baseado nos registros das tabelas RECEBIMENTO_COMISSAO.' ;





-- ------------------------------------------------------------
-- Esta tabela � para permitir que um lan�amento a pagar possa ter varias naturezas financeiras e varias lan�amentos cont�beis a elas vinculadas.
-- ------------------------------------------------------------

CREATE TABLE LANC_PAGAR_NAT_FINAN (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_LANCAMENTO_DET INTEGER UNSIGNED  NOT NULL  ,
  ID_NATUREZA_FINANCEIRA INTEGER UNSIGNED  NOT NULL  ,
  ID_LANCAMENTO_PAGAR INTEGER UNSIGNED  NOT NULL  ,
  DATA_INC DATE  NULL  ,
  VALOR DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX LANC_PAGAR_NAT_FINAN_F1(ID_LANCAMENTO_PAGAR)  ,
INDEX LANC_PAGAR_NAT_FINAN(ID_NATUREZA_FINANCEIRA)  ,
INDEX LANC_PAGAR_NAT_FINAN_FK3(ID_CONTABIL_LANCAMENTO_DET),
  FOREIGN KEY(ID_LANCAMENTO_PAGAR)
    REFERENCES LANCAMENTO_PAGAR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_NATUREZA_FINANCEIRA)
    REFERENCES NATUREZA_FINANCEIRA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_LANCAMENTO_DET)
    REFERENCES CONTABIL_LANCAMENTO_DET(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Esta tabela � para permitir que um lan�amento a pagar possa ter varias naturezas financeiras e varias lan�amentos cont�beis a elas vinculadas.' ;



-- ------------------------------------------------------------
-- Tabela que armazena os itens do pedido. Uma cota��o poder� gerar v�rios pedidos e um pedido pode ser gerado a partir de v�rias cota��es.
-- ------------------------------------------------------------

CREATE TABLE PEDIDO_COMPRA_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  ID_PEDIDO_COMPRA INTEGER UNSIGNED  NOT NULL  ,
  QUANTIDADE DECIMAL(18,6)  NULL  ,
  VALOR_UNITARIO DECIMAL(18,6)  NULL  ,
  VALOR_SUBTOTAL DECIMAL(18,6)  NULL  ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_TOTAL DECIMAL(18,6)  NULL  ,
  CST_CSOSN CHAR(4)  NULL  ,
  CFOP INTEGER UNSIGNED  NULL  ,
  BASE_CALCULO_ICMS DECIMAL(18,6)  NULL  ,
  VALOR_ICMS DECIMAL(18,6)  NULL  ,
  VALOR_IPI DECIMAL(18,6)  NULL  ,
  ALIQUOTA_ICMS DECIMAL(18,6)  NULL  ,
  ALIQUOTA_IPI DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX PEDIDO_COMPRA_DETALHE(ID_PEDIDO_COMPRA)  ,
INDEX PEDIDO_COMPRA_DETALHE_FK3(ID_PRODUTO)  ,
INDEX PEDIDO_COMPRA_DETALHE_FK4(ID_PRODUTO),
  FOREIGN KEY(ID_PEDIDO_COMPRA)
    REFERENCES PEDIDO_COMPRA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PRODUTO)
    REFERENCES PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PRODUTO)
    REFERENCES PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que armazena os itens do pedido. Uma cota��o poder� gerar v�rios pedidos e um pedido pode ser gerado a partir de v�rias cota��es.' ;



-- ------------------------------------------------------------
-- Armazena o cabe�alho do or�amento/pedido de venda.
-- 
-- O usu�rio informa aqui as condi��es de pagamentos, mas n�o gera neste momento as parcelas. As mesmas s� ser�o geradas no momento da confirma��o da venda.
-- ------------------------------------------------------------

CREATE TABLE ORCAMENTO_PEDIDO_VENDA_CAB (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_VENDEDOR INTEGER UNSIGNED  NOT NULL  ,
  ID_TRANSPORTADORA INTEGER UNSIGNED  NOT NULL  ,
  ID_CLIENTE INTEGER UNSIGNED  NOT NULL  ,
  ID_CONDICOES_PAGAMENTO INTEGER UNSIGNED  NOT NULL  ,
  TIPO CHAR(1)  NULL   COMMENT 'O=Or�amento | P=Pedido' ,
  CODIGO VARCHAR(20)  NULL   COMMENT 'C�digo atribu�do pelo usu�rio' ,
  DATA_CADASTRO DATE  NULL  ,
  DATA_ENTREGA DATE  NULL  ,
  VALIDADE DATE  NULL  ,
  TIPO_FRETE CHAR(1)  NULL   COMMENT 'C=CIF | F=FOB' ,
  VALOR_SUBTOTAL DECIMAL(18,6)  NULL  ,
  VALOR_FRETE DECIMAL(18,6)  NULL  ,
  TAXA_COMISSAO DECIMAL(18,6)  NULL  ,
  VALOR_COMISSAO DECIMAL(18,6)  NULL  ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_TOTAL DECIMAL(18,6)  NULL  ,
  OBSERVACOES TEXT  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_COND_PGTO_ORC_PED_VENDA(ID_CONDICOES_PAGAMENTO)  ,
INDEX ORCAMENTO_PEDIDO_VENDA_CAB_FK5(ID_TRANSPORTADORA)  ,
INDEX ORCA_PED_VENDA_CAB_FK5(ID_CLIENTE)  ,
INDEX ORCA_PEDIDO_VENDA_CAB_FK4(ID_VENDEDOR),
  FOREIGN KEY(ID_CONDICOES_PAGAMENTO)
    REFERENCES CONDICOES_PAGAMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TRANSPORTADORA)
    REFERENCES TRANSPORTADORA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CLIENTE)
    REFERENCES CLIENTE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_VENDEDOR)
    REFERENCES VENDEDOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena o cabe�alho do or�amento/pedido de venda.    O usu�rio informa aqui as condi��es de pagamentos, mas n�o gera neste momento as parcelas. As mesmas s� ser�o geradas no momento da confirma��o da venda.' ;






-- ------------------------------------------------------------
-- Tabela que armazena o cabe�alho das vendas do sistema.
-- ------------------------------------------------------------

CREATE TABLE VENDA_CABECALHO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CLIENTE INTEGER UNSIGNED  NOT NULL  ,
  ID_VENDEDOR INTEGER UNSIGNED  NOT NULL  ,
  ID_CONDICOES_PAGAMENTO INTEGER UNSIGNED  NOT NULL  ,
  ID_ORCAMENTO_VENDA_CABECALHO INTEGER UNSIGNED  NULL  ,
  DATA_VENDA DATE  NULL  ,
  DATA_SAIDA DATE  NULL   COMMENT 'Data e hora da sa�da da mercadoria' ,
  HORA_SAIDA VARCHAR(8)  NULL  ,
  NUMERO_FATURA INTEGER UNSIGNED  NULL  ,
  LOCAL_ENTREGA VARCHAR(100)  NULL  ,
  LOCAL_COBRANCA VARCHAR(100)  NULL  ,
  VALOR_SUB_TOTAL DECIMAL(18,6)  NULL  ,
  TAXA_COMISSAO DECIMAL(18,6)  NULL  ,
  VALOR_COMISSAO DECIMAL(18,6)  NULL  ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_TOTAL DECIMAL(18,6)  NULL  ,
  TIPO_FRETE CHAR(1)  NULL   COMMENT 'C=CIF | F=FOB' ,
  FORMA_PAGAMENTO CHAR(1)  NULL   COMMENT '0=pagamento � vista | 1=pagamento � prazo | 2=outros. (Campo indPag da NF-e)' ,
  BASE_CALCULO_ICMS_ST DECIMAL(18,6)  NULL  ,
  VALOR_ICMS_ST DECIMAL(18,6)  NULL  ,
  VALOR_FRETE DECIMAL(18,6)  NULL  ,
  VALOR_SEGURO DECIMAL(18,6)  NULL  ,
  VALOR_IPI DECIMAL(18,6)  NULL  ,
  OBSERVACOES TEXT  NULL  ,
  NUM_DIAS_PRIM_VENC DECIMAL(4,0)  NULL  ,
  INTERVALO_DIAS_PARCELAS DECIMAL(4,0)  NULL  ,
  QTD_PARCELAS DECIMAL(4,0)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_ORCAMENTO_VENDA(ID_ORCAMENTO_VENDA_CABECALHO)  ,
INDEX FK_VENDA_CAB_CONDICOES(ID_CONDICOES_PAGAMENTO)  ,
INDEX VENDA_CABECALHO_FKIndex6(ID_CLIENTE)  ,
INDEX VENDA_CABECALHO_FKIndex7(ID_VENDEDOR),
  FOREIGN KEY(ID_ORCAMENTO_VENDA_CABECALHO)
    REFERENCES ORCAMENTO_PEDIDO_VENDA_CAB(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONDICOES_PAGAMENTO)
    REFERENCES CONDICOES_PAGAMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CLIENTE)
    REFERENCES CLIENTE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_VENDEDOR)
    REFERENCES VENDEDOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que armazena o cabe�alho das vendas do sistema.' ;






-- ------------------------------------------------------------
-- Tabela com a rela��o dos cheques vinculados a determinado tal�o.
-- ------------------------------------------------------------

CREATE TABLE CHEQUE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TALONARIO_CHEQUE INTEGER UNSIGNED  NOT NULL  ,
  NUMERO INTEGER UNSIGNED  NULL  ,
  STATUS_CHEQUE CHAR(1)  NULL   COMMENT 'E=Em Ser | B=Baixado | U=Utilizado | C=Cancelado' ,
  DATA_STATUS DATE  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_TALONARIO_CHEQUE(ID_TALONARIO_CHEQUE),
  FOREIGN KEY(ID_TALONARIO_CHEQUE)
    REFERENCES TALONARIO_CHEQUE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela com a rela��o dos cheques vinculados a determinado tal�o.' ;




-- ------------------------------------------------------------
-- Tabela que faz o controle dos cheque emitidos.
-- ------------------------------------------------------------

CREATE TABLE CHEQUE_EMITIDO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CHEQUE INTEGER UNSIGNED  NOT NULL  ,
  DATA_EMISSAO DATE  NULL  ,
  DATA_COMPENSACAO DATE  NULL  ,
  VALOR DECIMAL(18,6)  NULL  ,
  NOMINAL_A VARCHAR(100)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX CHEQUE_EMITIDO_FKIndex1(ID_CHEQUE),
  FOREIGN KEY(ID_CHEQUE)
    REFERENCES CHEQUE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
COMMENT = 'Tabela que faz o controle dos cheque emitidos.' ;



-- ------------------------------------------------------------
-- Armazena os itens de determinado fluxo de caixa.
-- 
-- =============
-- Exemplo para o campo PERIODO:
-- Se o usu�rio escolheu um periodo mensal, com DATA_INICIAL (tabela FLUXO_CAIXA) em 15/01/2011 e preencheu o campo NUMERO_PERIODOS (tabela FLUXO_CAIXA)  com o valor "5", para cada NATUREZA_FINANCEIRA ser�o gerados 5 registros na tabela FLUXO_CAIXA_DETALHE. O campo per�odo seria preenchido da seguinte forma:
-- 
-- 01/2011
-- 02/2011
-- 03/2011
-- 04/2011
-- 05/2011
-- =============
-- ------------------------------------------------------------

CREATE TABLE FLUXO_CAIXA_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_FLUXO_CAIXA INTEGER UNSIGNED  NOT NULL  ,
  PERIODO VARCHAR(10)  NULL   COMMENT 'Esse campo ser� preenchido de acordo com o per�odo escolhido para o or�amento.' ,
  VALOR_ORCADO DECIMAL(18,6)  NULL   COMMENT 'Valor impostado pelo usu�rio' ,
  VALOR_REALIZADO DECIMAL(18,6)  NULL   COMMENT 'Valor calculado pelo sistema / impostado pelo usu�rio' ,
  TAXA_VARIACAO DECIMAL(18,6)  NULL  ,
  VALOR_VARIACAO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_FLUXO_CAIXA_DETALHE(ID_FLUXO_CAIXA),
  FOREIGN KEY(ID_FLUXO_CAIXA)
    REFERENCES FLUXO_CAIXA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os itens de determinado fluxo de caixa.    =============  Exemplo para o campo PERIODO:  Se o usu�rio escolheu um periodo mensal, com DATA_INICIAL (tabela FLUXO_CAIXA) em 15/01/2011 e preencheu o campo NUMERO_PERIODOS (tabela FLUXO_CAIXA)  com o valor "5", para cada NATUREZA_FINANCEIRA ser�o gerados 5 registros na tabela FLUXO_CAIXA_DETALHE. O campo per�odo seria preenchido da seguinte forma:    01/2011  02/2011  03/2011  04/2011  05/2011  =============' ;






CREATE TABLE ROMANEIO_ENTREGA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_COLABORADOR INTEGER UNSIGNED  NOT NULL  ,
  ID_VENDA_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(100)  NULL  ,
  DATA_PREVISTA DATE  NULL  ,
  DATA_SAIDA DATE  NULL  ,
  STATUS_ROMANEIO CHAR(1)  NULL   COMMENT 'A=aberto, T=Transito, E=Encerrado' ,
  DATA_ENCERRAMENTO DATE  NULL    ,
PRIMARY KEY(ID)  ,
INDEX ROMANEIO_ENTREGA_FKIndex1(ID_VENDA_CABECALHO)  ,
INDEX ROMANEIO_ENTREGA_FKIndex2(ID_COLABORADOR),
  FOREIGN KEY(ID_VENDA_CABECALHO)
    REFERENCES VENDA_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_COLABORADOR)
    REFERENCES COLABORADOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;




-- ------------------------------------------------------------
-- Faz o controle de quantidade de itens que saem da requisi��o e entram na cota��o
-- ------------------------------------------------------------

CREATE TABLE REQUISICAO_COTACAO_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_COTACAO_COMPRA_DETALHE INTEGER UNSIGNED  NOT NULL  ,
  ID_REQUISICAO_COMPRA_DETALHE INTEGER UNSIGNED  NOT NULL  ,
  QUANTIDADE_COTADA DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_REQUISICAO_COTACAO_DETALHE(ID_REQUISICAO_COMPRA_DETALHE)  ,
INDEX FK_COTACAO_REQUISICAO_DETALHE(ID_COTACAO_COMPRA_DETALHE),
  FOREIGN KEY(ID_REQUISICAO_COMPRA_DETALHE)
    REFERENCES REQUISICAO_COMPRA_DETALHE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_COTACAO_COMPRA_DETALHE)
    REFERENCES COTACAO_COMPRA_DETALHE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
COMMENT = 'Faz o controle de quantidade de itens que saem da requisi��o e entram na cota��o' ;



-- ------------------------------------------------------------
-- Faz o controle de quantidade de itens que saem da cota��o e entram no pedido
-- ------------------------------------------------------------

CREATE TABLE COTACAO_PEDIDO_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_COTACAO_COMPRA_DETALHE INTEGER UNSIGNED  NOT NULL  ,
  ID_PEDIDO_COMPRA_DETALHE INTEGER UNSIGNED  NOT NULL  ,
  QUANTIDADE_PEDIDA DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_PEDIDO_COT_DET(ID_PEDIDO_COMPRA_DETALHE)  ,
INDEX FK_COT_PEDIDO_DET(ID_COTACAO_COMPRA_DETALHE),
  FOREIGN KEY(ID_PEDIDO_COMPRA_DETALHE)
    REFERENCES PEDIDO_COMPRA_DETALHE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_COTACAO_COMPRA_DETALHE)
    REFERENCES COTACAO_COMPRA_DETALHE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
COMMENT = 'Faz o controle de quantidade de itens que saem da cota��o e entram no pedido' ;



-- ------------------------------------------------------------
-- Armazena os itens da venda.
-- ------------------------------------------------------------

CREATE TABLE VENDA_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  ID_VENDA_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  QUANTIDADE DECIMAL(18,6)  NULL  ,
  VALOR_UNITARIO DECIMAL(18,6)  NULL  ,
  VALOR_SUBTOTAL DECIMAL(18,6)  NULL  ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_TOTAL DECIMAL(18,6)  NULL  ,
  TAXA_COMISSAO DECIMAL(18,6)  NULL  ,
  VALOR_COMISSAO DECIMAL(18,6)  NULL  ,
  BASE_CALCULO_ICMS_ST DECIMAL(18,6)  NULL  ,
  VALOR_ICMS_ST DECIMAL(18,6)  NULL  ,
  ALIQUOTA_IPI DECIMAL(18,6)  NULL  ,
  VALOR_IPI DECIMAL(18,6)  NULL  ,
  CMV_APURADO DECIMAL(18,6)  NULL   COMMENT 'armazenar o valor calculo do CMV do produto no ato da venda'   ,
PRIMARY KEY(ID)  ,
INDEX FK_VENDA_CAB_DET(ID_VENDA_CABECALHO)  ,
INDEX VENDA_DETALHE_FKIndex3(ID_PRODUTO),
  FOREIGN KEY(ID_VENDA_CABECALHO)
    REFERENCES VENDA_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PRODUTO)
    REFERENCES PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os itens da venda.' ;




-- ------------------------------------------------------------
-- Esta tabela deve armazenar as comiss�es calculadas em cada venda. Desta forma toda vez que houver uma venda com indica�ao de comissao este valor ser� lan�ado nesta tabela, com indica�ao do VALOR_VENDA, VALOR_COMISSAO, TIPO (liquidez ou faturamento), e indicador se o lan�amento � a debito ou a credito, pois se houver uma devolua�ao desta venda deve haver o debito (estorno da comissao) mediante um lan�amento de saldo DEVEDOR para aquele vendedor.
-- ------------------------------------------------------------

CREATE TABLE VENDA_COMISSAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  VENDEDOR_ID INTEGER UNSIGNED  NOT NULL  ,
  ID_VENDA_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  VALOR_VENDA DECIMAL(18,6)  NULL  ,
  TIPO_COMISSAO INTEGER  NULL   COMMENT 'Liquidez, faturamento' ,
  TIPO_CONTABIL CHAR(1)  NULL   COMMENT 'Indicar se este lanl�amento � a DEBITO ou a CREDITO. Ex. se houver uma devolucao de venda haver� um lan�amento a DEBITO' ,
  VALOR_COMISSAO DECIMAL(18,6) ZEROFILL  NULL  ,
  LANCADO CHAR(1)  NULL   COMMENT 'Q=QUITADA, quando foi quitada pelo lan�amento no tipo FATURAMENTO L=LIQUIDEZ, quando seu pagamento foi condicionada � liquida�ao A= Aberto, quando tiver aguardando a quita��o.' ,
  DATA_LANCAMENTO DATE  NULL    ,
PRIMARY KEY(ID)  ,
INDEX VENDA_COMISSAO_FKIndex1(ID_VENDA_CABECALHO)  ,
INDEX VENDA_COMISSAO_FKIndex2(VENDEDOR_ID),
  FOREIGN KEY(ID_VENDA_CABECALHO)
    REFERENCES VENDA_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(VENDEDOR_ID)
    REFERENCES VENDEDOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Esta tabela deve armazenar as comiss�es calculadas em cada venda. Desta forma toda vez que houver uma venda com indica�ao de comissao este valor ser� lan�ado nesta tabela, com indica�ao do VALOR_VENDA, VALOR_COMISSAO, TIPO (liquidez ou faturamento), e indicador se o lan�amento � a debito ou a credito, pois se houver uma devolua�ao desta venda deve haver o debito (estorno da comissao) mediante um lan�amento de saldo DEVEDOR para aquele vendedor.' ;






-- ------------------------------------------------------------
-- Armazena os itens do or�amento de venda
-- ------------------------------------------------------------

CREATE TABLE ORCAMENTO_PEDIDO_VENDA_DET (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  ID_ORCAMENTO_VENDA_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  QUANTIDADE DECIMAL(18,6)  NULL  ,
  VALOR_UNITARIO DECIMAL(18,6)  NULL  ,
  VALOR_SUBTOTAL DECIMAL(18,6)  NULL  ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_TOTAL DECIMAL(18,6)  NULL  ,
  VALOR_IPI DECIMAL(18,6)  NULL  ,
  VALOR_ICMS_ST DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_ORCAM_VENDA_CAB_DET(ID_ORCAMENTO_VENDA_CABECALHO)  ,
INDEX ORCA_PEDIDO_VENDA_DET_FK3(ID_PRODUTO),
  FOREIGN KEY(ID_ORCAMENTO_VENDA_CABECALHO)
    REFERENCES ORCAMENTO_PEDIDO_VENDA_CAB(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PRODUTO)
    REFERENCES PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os itens do or�amento de venda' ;



-- ------------------------------------------------------------
-- Armazena os dados de frete da venda
-- ------------------------------------------------------------

CREATE TABLE FRETE_VENDA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TRANSPORTADORA INTEGER UNSIGNED  NOT NULL  ,
  ID_VENDA_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  CONHECIMENTO INTEGER UNSIGNED  NULL   COMMENT 'N�mero do conhecimento de frete' ,
  RESPONSAVEL CHAR(1)  NULL   COMMENT '1=Emitente | 2=Destinat�rio' ,
  PLACA VARCHAR(7)  NULL  ,
  UF_PLACA CHAR(2)  NULL  ,
  SELO_FISCAL INTEGER UNSIGNED  NULL  ,
  QUANTIDADE_VOLUME DECIMAL(18,6)  NULL   COMMENT 'Quantidade de volumes da carga' ,
  MARCA_VOLUME VARCHAR(50)  NULL   COMMENT 'Marca da carga' ,
  ESPECIE_VOLUME VARCHAR(20)  NULL  ,
  PESO_BRUTO DECIMAL(18,6)  NULL  ,
  PESO_LIQUIDO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_VENDA_CABECALHO_FRETE(ID_VENDA_CABECALHO)  ,
INDEX FRETE_VENDA_FKIndex3(ID_TRANSPORTADORA),
  FOREIGN KEY(ID_VENDA_CABECALHO)
    REFERENCES VENDA_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TRANSPORTADORA)
    REFERENCES TRANSPORTADORA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os dados de frete da venda' ;







-- ------------------------------------------------------------
-- Tabela de lan�amentos das contas a receber.
-- ------------------------------------------------------------

CREATE TABLE LANCAMENTO_RECEBER (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_VENDEDOR INTEGER UNSIGNED  NOT NULL  ,
  PESSOA_ID INTEGER UNSIGNED  NOT NULL  ,
  ID_VENDA_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  QUANTIDADE_PARCELA INTEGER UNSIGNED  NULL  ,
  DATA_LANCAMENTO DATE  NULL  ,
  VALOR_TOTAL DECIMAL(18,6)  NULL  ,
  VALOR_A_RECEBER DECIMAL(18,6)  NULL  ,
  PRIMEIRO_VENCIMENTO DATE  NULL  ,
  VALOR_COMISSAO DECIMAL(18,6)  NULL   COMMENT 'Informar o valor calculado da comissao vinda da tabela venda, APENAS quando a comissao for por liquidez' ,
  PORCENTO_COMISSAO DECIMAL(18,6)  NULL   COMMENT 'este campo deve ser calculado: Valor_comissao/Valor_Total. Desta forma, a cada liquida�ao de parcela devemos apropriar a comissao proporcional caja a config. da empresa seja por Liquidez.'   ,
PRIMARY KEY(ID)  ,
INDEX LANCAMENTO_RECEBER_FK(ID_VENDA_CABECALHO)  ,
INDEX LANCAMENTO_RECEBER_F(PESSOA_ID)  ,
INDEX LANCAMENTO_RECEBER_F3(ID_VENDEDOR),
  FOREIGN KEY(ID_VENDA_CABECALHO)
    REFERENCES VENDA_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(PESSOA_ID)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_VENDEDOR)
    REFERENCES VENDEDOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela de lan�amentos das contas a receber.' ;





-- ------------------------------------------------------------
-- Tabela que garda as parcelas para recebimento. Caso o recebimento seja efetuado de uma vez, a tabela LANCAMENTO_RECEBER gerar� uma parcela para ser recebida e a mesma ser� armazenada nesta tabela.
-- ------------------------------------------------------------

CREATE TABLE PARCELA_RECEBER (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_AGENCIA_BANCO INTEGER UNSIGNED  NOT NULL  ,
  ID_STATUS_PARCELA INTEGER UNSIGNED  NOT NULL  ,
  ID_LANCAMENTO_RECEBER INTEGER UNSIGNED  NOT NULL  ,
  NUMERO_PARCELA INTEGER UNSIGNED  NULL  ,
  DATA_EMISSAO DATE  NULL  ,
  DATA_VENCIMENTO DATE  NULL  ,
  DESCONTO_ATE DATE  NULL   COMMENT 'Conceder desconto at� a data especificada' ,
  VALOR DECIMAL(18,6)  NULL  ,
  TAXA_JURO DECIMAL(18,6)  NULL   COMMENT 'Previs�o' ,
  TAXA_MULTA DECIMAL(18,6)  NULL   COMMENT 'Previs�o' ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL   COMMENT 'Previs�o' ,
  VALOR_JURO DECIMAL(18,6)  NULL  ,
  VALOR_MULTA DECIMAL(18,6)  NULL  ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL  ,
  NR_CHEQUE VARCHAR(20)  NULL  ,
  NR_CONTA VARCHAR(20)  NULL  ,
  CM7 VARCHAR(50)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_LANCAMENTO_PARCELA_FK1(ID_LANCAMENTO_RECEBER)  ,
INDEX PARCELA_RECEBER_FKIndex2(ID_STATUS_PARCELA)  ,
INDEX PARCELA_RECEBER_FKIndex3(ID_AGENCIA_BANCO),
  FOREIGN KEY(ID_LANCAMENTO_RECEBER)
    REFERENCES LANCAMENTO_RECEBER(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_STATUS_PARCELA)
    REFERENCES STATUS_PARCELA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_AGENCIA_BANCO)
    REFERENCES AGENCIA_BANCO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que garda as parcelas para recebimento. Caso o recebimento seja efetuado de uma vez, a tabela LANCAMENTO_RECEBER gerar� uma parcela para ser recebida e a mesma ser� armazenada nesta tabela.' ;







-- ------------------------------------------------------------
-- Tabela que controla o recebimento de pagamentos das parcelas. N�o se aproveita a tabela PARCELA_PAGAR porque podem existir pagamentos parciais de parcela, neste caso o controle deve 
-- ser feito em tabelas separadas. No caso de uma parcela que � paga de forma integral, a mesma ser� replicada da tabela PARCELA_PAGAR para a tabela PARCELA_PAGAMENTO e os dados 
-- dos campos adicionais ser�o informados.
-- ------------------------------------------------------------

CREATE TABLE PARCELA_PAGAMENTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTA_CAIXA INTEGER UNSIGNED  NOT NULL  ,
  ID_TIPO_PAGAMENTO INTEGER UNSIGNED  NOT NULL  ,
  ID_CHEQUE_EMITIDO INTEGER UNSIGNED  NULL  ,
  ID_PARCELA INTEGER UNSIGNED  NOT NULL  ,
  DATA_PAGAMENTO DATE  NULL  ,
  TAXA_JURO DECIMAL(18,6)  NULL  ,
  TAXA_MULTA DECIMAL(18,6)  NULL  ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_JURO DECIMAL(18,6)  NULL  ,
  VALOR_MULTA DECIMAL(18,6)  NULL  ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_PAGO DECIMAL(18,6)  NULL  ,
  HISTORICO TEXT  NULL   COMMENT 'Hist�rico do pagamento'   ,
PRIMARY KEY(ID)  ,
INDEX FK_PARCELA_PAGAMENTO(ID_PARCELA)  ,
INDEX FK_CHEQUE_PARCELA(ID_CHEQUE_EMITIDO)  ,
INDEX FK_TIPO_PAGAMENTO_PARCELA(ID_TIPO_PAGAMENTO)  ,
INDEX PARCELA_PAGAMENTO_FKIndex4(ID_CONTA_CAIXA),
  FOREIGN KEY(ID_PARCELA)
    REFERENCES PARCELA_PAGAR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CHEQUE_EMITIDO)
    REFERENCES CHEQUE_EMITIDO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_PAGAMENTO)
    REFERENCES TIPO_PAGAMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTA_CAIXA)
    REFERENCES CONTA_CAIXA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que controla o recebimento de pagamentos das parcelas. N�o se aproveita a tabela PARCELA_PAGAR porque podem existir pagamentos parciais de parcela, neste caso o controle deve   ser feito em tabelas separadas. No caso de uma parcela que � paga de forma integral, a mesma ser� replicada da tabela PARCELA_PAGAR para a tabela PARCELA_PAGAMENTO e os dados   dos campos adicionais ser�o informados.' ;




-- ------------------------------------------------------------
-- Tabela que armazena o cabe�alho das vendas do sistema.
-- ------------------------------------------------------------

CREATE TABLE NFE_CABECALHO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  VENDA_CABECALHO_ID INTEGER UNSIGNED  NULL  ,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  ID_FORNECEDOR INTEGER UNSIGNED  NOT NULL  ,
  ID_CLIENTE INTEGER UNSIGNED  NOT NULL  ,
  CODIGO_NUMERICO VARCHAR(8)  NULL   COMMENT 'cNF - C�digo num�rico que comp�e a  Chave de Acesso. N�mero  aleat�rio gerado pelo emitente  para cada NF-e para evitar  acessos indevidos da NF-e.  (v2.0)' ,
  NATUREZA_OPERACAO VARCHAR(60)  NULL   COMMENT 'natOp - Informar a natureza da  opera��o de que decorrer a  sa�da ou a entrada, tais como:  venda, compra, transfer�ncia,  devolu��o, importa��o,  consigna��o, remessa (para fins  de demonstra��o, de  industrializa��o ou outra),  conforme previsto na al�nea ''i'',  inciso I, art. 19 do CONV�NIO  S/N�, de 15 de dezembro de  1970.' ,
  INDICADOR_FORMA_PAGAMENTO CHAR(1)  NULL   COMMENT 'indPag - 0=pagamento � vista | 1=pagamento � prazo | 2=outros.' ,
  CODIGO_MODELO CHAR(2)  NULL   COMMENT 'mod - Utilizar o c�digo 55 para  identifica��o da NF-e, emitida  em substitui��o ao modelo 1 ou  1A.' ,
  SERIE CHAR(3)  NULL   COMMENT 'serie - S�rie do Documento Fiscal,  preencher com zeros na  hip�tese de a NF-e n�o possuir  s�rie. (v2.0)  S�rie 890-899 de uso exclusivo  para emiss�o de NF-e avulsa,  pelo contribuinte com seu  certificado digital, atrav�s do site  do Fisco (procEmi=2). (v2.0)  Serie 900-999 � uso exclusivo  de NF-e emitidas no SCAN.  (v2.0)' ,
  NUMERO VARCHAR(9)  NULL   COMMENT 'nNF - N�mero do Documento Fiscal.' ,
  DATA_EMISSAO DATE  NULL   COMMENT 'dEmi - Data de emiss�o do  Documento Fiscal' ,
  DATA_ENTRADA_SAIDA DATE  NULL   COMMENT 'dSaiEnt - Data de Sa�da ou da Entrada  da Mercadoria/Produto' ,
  HORA_ENTRADA_SAIDA VARCHAR(8)  NULL   COMMENT 'hSaiEnt - Hora de Sa�da ou da Entrada  da Mercadoria/Produto' ,
  TIPO_OPERACAO CHAR(1)  NULL   COMMENT 'tpNF - 0-entrada / 1-sa�da' ,
  CODIGO_MUNICIPIO INTEGER UNSIGNED  NULL   COMMENT 'cMunFG - Informar o munic�pio de ocorr�ncia  do fato gerador do ICMS. Utilizar a  Tabela do IBGE' ,
  FORMATO_IMPRESSAO_DANFE CHAR(1)  NULL   COMMENT 'tpImp - 1-Retrato/ 2-Paisagem' ,
  TIPO_EMISSAO CHAR(1)  NULL   COMMENT 'tpEmis - 1 = Normal emiss�o normal;  2 = Conting�ncia FS emiss�o  em conting�ncia com impress�o  do DANFE em Formul�rio de  Seguran�a;  3 = Conting�ncia SCAN emiss�o em conting�ncia no  Sistema de Conting�ncia do  Ambiente Nacional SCAN;  4 = Conting�ncia DPEC -  emiss�o em conting�ncia com  envio da Declara��o Pr�via de  Emiss�o em Conting�ncia DPEC;  5 = Conting�ncia FS-DA -  emiss�o em conting�ncia com  impress�o do DANFE em Formul�rio de Seguran�a para  Impress�o de Documento  Auxiliar de Documento Fiscal  Eletr�nico (FS-DA).' ,
  CHAVE_ACESSO VARCHAR(44)  NULL   COMMENT 'Chave de acesso da NF-e composta por  C�digo da UF + AAMM da emiss�o + CNPJ do  Emitente + Modelo, S�rie e N�mero da NFe +  C�digo Num�rico + DV.' ,
  DIGITO_CHAVE_ACESSO CHAR(1)  NULL   COMMENT 'cDV - Informar o DV da Chave de  Acesso da NF-e, o DV ser�  calculado com a aplica��o do  algoritmo m�dulo 11 (base 2,9)  da Chave de Acesso. (vide item  5 do Manual de Integra��o)' ,
  AMBIENTE CHAR(1)  NULL   COMMENT 'tpAmb - 1-Produ��o/ 2-Homologa��o' ,
  FINALIDADE_EMISSAO CHAR(1)  NULL   COMMENT 'finNFe - 1- NF-e normal/ 2-NF-e  complementar / 3 � NF-e de  ajuste' ,
  PROCESSO_EMISSAO CHAR(1)  NULL   COMMENT 'procEmi - Identificador do processo de  emiss�o da NF-e:  0 - emiss�o de NF-e com  aplicativo do contribuinte;  1 - emiss�o de NF-e avulsa pelo  Fisco;  2 - emiss�o de NF-e avulsa,  pelo contribuinte com seu  certificado digital, atrav�s do site  do Fisco;  3- emiss�o NF-e pelo  contribuinte com aplicativo  fornecido pelo Fisco.' ,
  VERSAO_PROCESSO_EMISSAO INTEGER UNSIGNED  NULL   COMMENT 'verProc - Identificador da vers�o do  processo de emiss�o (informar  a vers�o do aplicativo emissor  de NF-e).' ,
  BASE_CALCULO_ICMS DECIMAL(18,6)  NULL   COMMENT 'Base de C�lculo do ICMS' ,
  VALOR_ICMS DECIMAL(18,6)  NULL   COMMENT 'Valor Total do ICMS' ,
  BASE_CALCULO_ICMS_ST DECIMAL(18,6)  NULL   COMMENT 'Base de C�lculo do ICMS ST' ,
  VALOR_ICMS_ST DECIMAL(18,6)  NULL   COMMENT 'Valor Total do ICMS ST' ,
  VALOR_TOTAL_PRODUTOS DECIMAL(18,6)  NULL   COMMENT 'Valor Total dos produtos e  servi�os' ,
  VALOR_FRETE DECIMAL(18,6)  NULL   COMMENT 'Valor Total do Frete' ,
  VALOR_SEGURO DECIMAL(18,6)  NULL   COMMENT 'Valor Total do Seguro' ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL   COMMENT 'Valor Total do Desconto' ,
  VALOR_IMPOSTO_IMPORTACAO DECIMAL(18,6)  NULL   COMMENT 'Valor Total do II' ,
  VALOR_IPI DECIMAL(18,6)  NULL   COMMENT 'Valor Total do IPI' ,
  VALOR_PIS DECIMAL(18,6)  NULL   COMMENT 'Valor do PIS' ,
  VALOR_COFINS DECIMAL(18,6)  NULL   COMMENT 'Valor do COFINS' ,
  VALOR_DESPESAS_ACESSORIAS DECIMAL(18,6)  NULL   COMMENT 'Outras Despesas acess�rias' ,
  VALOR_TOTAL DECIMAL(18,6)  NULL   COMMENT 'Valor Total da NF-e' ,
  VALOR_SERVICOS DECIMAL(18,6)  NULL   COMMENT 'Valor Total dos Servi�os sob  n�o-incid�ncia ou n�o  tributados pelo ICMS' ,
  BASE_CALCULO_ISSQN DECIMAL(18,6)  NULL   COMMENT 'Base de C�lculo do ISS' ,
  VALOR_ISSQN DECIMAL(18,6)  NULL   COMMENT 'Valor Total do ISS' ,
  VALOR_PIS_ISSQN DECIMAL(18,6)  NULL   COMMENT 'Valor do PIS sobre servi�os' ,
  VALOR_COFINS_ISSQN DECIMAL(18,6)  NULL   COMMENT 'Valor do COFINS sobre  servi�os' ,
  VALOR_RETIDO_PIS DECIMAL(18,6)  NULL   COMMENT 'Valor Retido de PIS' ,
  VALOR_RETIDO_COFINS DECIMAL(18,6)  NULL   COMMENT 'Valor Retido de COFINS' ,
  VALOR_RETIDO_CSLL DECIMAL(18,6)  NULL   COMMENT 'Valor Retido de CSLL' ,
  BASE_CALCULO_IRRF DECIMAL(18,6)  NULL   COMMENT 'Base de C�lculo do IRRF' ,
  VALOR_RETIDO_IRRF DECIMAL(18,6)  NULL   COMMENT 'Valor Retido do IRRF' ,
  BASE_CALCULO_PREVIDENCIA DECIMAL(18,6)  NULL   COMMENT 'Base de C�lculo da Reten��o  da Previd�ncia Social' ,
  VALOR_RETIDO_PREVIDENCIA DECIMAL(18,6)  NULL   COMMENT 'Valor da Reten��o da  Previd�ncia Social' ,
  UF_EMBARQUE CHAR(2)  NULL   COMMENT 'UFEmbarq - Sigla da UF onde ocorrer� o  Embarque dos produtos' ,
  LOCAL_EMBARQUE VARCHAR(60)  NULL   COMMENT 'xLocEmbarq - Local onde ocorrer� o  Embarque dos produtos' ,
  NOTA_EMPENHO VARCHAR(17)  NULL   COMMENT 'xNEmp - Informar a identifica��o da Nota  de Empenho, quando se tratar  de compras p�blicas' ,
  PEDIDO VARCHAR(60)  NULL   COMMENT 'xPed - Informar o pedido.' ,
  ISS_RETIDO CHAR(1)  NULL   COMMENT 'S=SIM | N=N�O' ,
  INFORMACOES_ADD_FISCO TEXT  NULL  ,
  INFORMACOES_ADD_CONTRIBUINTE TEXT  NULL  ,
  INFORMACOES_COMPLEMENTARES TEXT  NULL  ,
  STATUS_NOTA CHAR(1)  NULL   COMMENT '0 - Em Edi��o | 1 - Salva | 2 - Validada |  3 - Assinada | 4 - Enviada | 5 - Autorizada | 6 - Cancelada'   ,
PRIMARY KEY(ID)  ,
INDEX NFE_CABECALHO_FK1(ID_CLIENTE)  ,
INDEX NFE_CABECALHO_FK2(ID_FORNECEDOR)  ,
INDEX NFE_CABECALHO_FK3(ID_EMPRESA)  ,
INDEX NFE_CABECALHO_FK4(VENDA_CABECALHO_ID),
  FOREIGN KEY(ID_CLIENTE)
    REFERENCES CLIENTE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_FORNECEDOR)
    REFERENCES FORNECEDOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(VENDA_CABECALHO_ID)
    REFERENCES VENDA_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que armazena o cabe�alho das vendas do sistema.' ;






















































-- ------------------------------------------------------------
-- Esta tabela ira armazenar o historico das compensacoes de titulos. Esta compensao ocorrer� quando houver titulos A PAGAR E RECEBER DA MESMA PESSOA. Ou houver devolu�ao com lancamento de creditos.
-- ------------------------------------------------------------

CREATE TABLE COMPENSACAO_TITULO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_LANCAMENTO_PAGAR INTEGER UNSIGNED  NOT NULL  ,
  ID_NATUREZA_FINANCEIRA INTEGER UNSIGNED  NOT NULL  ,
  ID_PESSOA INTEGER UNSIGNED  NOT NULL  ,
  ID_LANCAMENTO_RECEBER INTEGER UNSIGNED  NOT NULL  ,
  DESCRICAO VARCHAR(100)  NULL  ,
  DATA_INC DATE  NULL  ,
  TOTAL_CREDOR DECIMAL(18,6)  NULL  ,
  TOTAL_DEVEDOR DECIMAL(18,6)  NULL  ,
  SALDO DECIMAL(18,6)  NULL  ,
  TIPO_CONTABIL_SALDO CHAR(1)  NULL   COMMENT 'Informar se o saldo ser� devedor ou credor'   ,
PRIMARY KEY(ID)  ,
INDEX COMPENSACAO_TITULO_F1(ID_LANCAMENTO_RECEBER)  ,
INDEX COMPENSACAO_TITULO_FK2(ID_PESSOA)  ,
INDEX COMPENSACAO_TITULO_FK3(ID_NATUREZA_FINANCEIRA)  ,
INDEX COMPENSACAO_TITULO_F4(ID_LANCAMENTO_PAGAR),
  FOREIGN KEY(ID_LANCAMENTO_RECEBER)
    REFERENCES LANCAMENTO_RECEBER(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PESSOA)
    REFERENCES PESSOA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_NATUREZA_FINANCEIRA)
    REFERENCES NATUREZA_FINANCEIRA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_LANCAMENTO_PAGAR)
    REFERENCES LANCAMENTO_PAGAR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Esta tabela ira armazenar o historico das compensacoes de titulos. Esta compensao ocorrer� quando houver titulos A PAGAR E RECEBER DA MESMA PESSOA. Ou houver devolu�ao com lancamento de creditos.' ;




CREATE TABLE COMPENSA_TITULO_DET (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_COMPENSACAO_TITULO INTEGER UNSIGNED  NOT NULL  ,
  ID_TIPO_PAGAMENTO INTEGER UNSIGNED  NOT NULL  ,
  ID_TIPO_RECEBIMENTO INTEGER UNSIGNED  NOT NULL  ,
  ID_LANCAMENTO_PAGAR INTEGER UNSIGNED  NOT NULL  ,
  ID_PARCELA_RECEBER INTEGER UNSIGNED  NOT NULL  ,
  VALOR_DEBITO DECIMAL(18,6)  NULL  ,
  VALOR_CREDITO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX COMPENSA_TITULO_DET_Fx1(ID_PARCELA_RECEBER)  ,
INDEX COMPENSA_TITULO_DET_FKI(ID_LANCAMENTO_PAGAR)  ,
INDEX COMPENSA_TITULO_DET_FK3(ID_TIPO_RECEBIMENTO)  ,
INDEX COMPENSA_TITULO_DET_FK4(ID_TIPO_PAGAMENTO)  ,
INDEX COMPENSA_TITULO_DET_FK5(ID_COMPENSACAO_TITULO),
  FOREIGN KEY(ID_PARCELA_RECEBER)
    REFERENCES PARCELA_RECEBER(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_LANCAMENTO_PAGAR)
    REFERENCES LANCAMENTO_PAGAR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_RECEBIMENTO)
    REFERENCES TIPO_RECEBIMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_PAGAMENTO)
    REFERENCES TIPO_PAGAMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_COMPENSACAO_TITULO)
    REFERENCES COMPENSACAO_TITULO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



CREATE TABLE NFE_EMITENTE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  CPF_CNPJ VARCHAR(14)  NULL  ,
  RAZAO_SOCIAL VARCHAR(60)  NULL   COMMENT 'xNome' ,
  FANTASIA VARCHAR(60)  NULL   COMMENT 'xFant' ,
  LOGRADOURO VARCHAR(60)  NULL   COMMENT 'xLgr' ,
  NUMERO VARCHAR(60)  NULL   COMMENT 'nro' ,
  COMPLEMENTO VARCHAR(60)  NULL   COMMENT 'xCpl' ,
  BAIRRO VARCHAR(60)  NULL   COMMENT 'xBairro' ,
  CODIGO_MUNICIPIO INTEGER UNSIGNED  NULL   COMMENT 'cMun - Utilizar a Tabela do IBGE  (Anexo VII - Tabela de UF,  Munic�pio e Pa�s).' ,
  NOME_MUNICIPIO VARCHAR(60)  NULL   COMMENT 'xMun' ,
  UF CHAR(2)  NULL  ,
  CEP VARCHAR(8)  NULL  ,
  CODIGO_PAIS INTEGER  NULL   COMMENT '1058 - Brasil' ,
  NOME_PAIS VARCHAR(60)  NULL   COMMENT 'Brasil ou BRASIL' ,
  TELEFONE VARCHAR(14)  NULL   COMMENT 'Preencher com o C�digo DDD +  n�mero do telefone. Nas  opera��es com exterior �  permitido informar o c�digo do  pa�s + c�digo da localidade +  n�mero do telefone (v.2.0)' ,
  IE VARCHAR(14)  NULL   COMMENT 'Campo de informa��o  obrigat�ria nos casos de  emiss�o pr�pria (procEmi = 0, 2  ou 3).  A IE deve ser informada apenas  com algarismos para  destinat�rios contribuintes do  ICMS, sem caracteres de  formata��o (ponto, barra, h�fen,  etc.);  O literal �ISENTO� deve ser  informado apenas para  contribuintes do ICMS que s�o  isentos de inscri��o no cadastro  de contribuintes do ICMS e  estejam emitindo NF-e avulsa;' ,
  IEST VARCHAR(14)  NULL   COMMENT 'IE do Substituto Tribut�rio' ,
  IM VARCHAR(15)  NULL   COMMENT 'Inscri��o Municipal' ,
  CNAE VARCHAR(7)  NULL   COMMENT 'Este campo deve ser informado  quando o campo IM (C19) for  informado.' ,
  CRT INTEGER UNSIGNED  NULL   COMMENT 'C�digo de Regime Tribut�rio = Este campo ser�  obrigatoriamente preenchido  com:  1 - Simples Nacional;  2 - Simples Nacional - excesso  de sublimite de receita bruta;  3 - Regime Normal. (v2.0).'   ,
PRIMARY KEY(ID)  ,
INDEX NFE_EMITENTE_FKIndex1(ID_NFE_CABECALHO),
  FOREIGN KEY(ID_NFE_CABECALHO)
    REFERENCES NFE_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



















CREATE TABLE NFE_FATURA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  NUMERO VARCHAR(60)  NULL   COMMENT 'nFat - N�mero da Fatura' ,
  VALOR_ORIGINAL DECIMAL(18,6)  NULL   COMMENT 'vOrig' ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL   COMMENT 'vDesc' ,
  VALOR_LIQUIDO DECIMAL(18,6)  NULL   COMMENT 'vLiq'   ,
PRIMARY KEY(ID)  ,
INDEX NFE_FATURA_FKIndex1(ID_NFE_CABECALHO),
  FOREIGN KEY(ID_NFE_CABECALHO)
    REFERENCES NFE_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;







CREATE TABLE NFE_DUPLICATA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_FATURA INTEGER UNSIGNED  NOT NULL  ,
  NUMERO VARCHAR(60)  NULL   COMMENT 'nDup' ,
  DATA_VENCIMENTO DATE  NULL  ,
  VALOR DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_NFE_FATURA_DUPLICATA(ID_NFE_FATURA),
  FOREIGN KEY(ID_NFE_FATURA)
    REFERENCES NFE_FATURA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;




CREATE TABLE NFE_REFERENCIADA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  CHAVE_ACESSO VARCHAR(44)  NULL  ,
  CODIGO_UF INTEGER UNSIGNED  NULL  ,
  ANO_MES VARCHAR(4)  NULL  ,
  CNPJ VARCHAR(14)  NULL  ,
  MODELO INTEGER UNSIGNED  NULL  ,
  SERIE INTEGER UNSIGNED  NULL  ,
  NUMERO_NF INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_NFE_REFERENCIADA(ID_NFE_CABECALHO),
  FOREIGN KEY(ID_NFE_CABECALHO)
    REFERENCES NFE_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



CREATE TABLE NFE_LOCAL_ENTREGA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  CPF_CNPJ VARCHAR(14)  NULL  ,
  LOGRADOURO VARCHAR(60)  NULL   COMMENT 'xLgr' ,
  NUMERO VARCHAR(60)  NULL   COMMENT 'nro' ,
  COMPLEMENTO VARCHAR(60)  NULL   COMMENT 'xCpl' ,
  BAIRRO VARCHAR(60)  NULL   COMMENT 'xBairro' ,
  CODIGO_MUNICIPIO INTEGER UNSIGNED  NULL   COMMENT 'cMun - Utilizar a Tabela do IBGE  (Anexo VII - Tabela de UF,  Munic�pio e Pa�s).' ,
  NOME_MUNICIPIO VARCHAR(60)  NULL   COMMENT 'xMun' ,
  UF CHAR(2)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX NFE_LOCAL_ENTREGA_FKIndex1(ID_NFE_CABECALHO),
  FOREIGN KEY(ID_NFE_CABECALHO)
    REFERENCES NFE_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;









CREATE TABLE NFE_LOCAL_RETIRADA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  CPF_CNPJ VARCHAR(14)  NULL  ,
  LOGRADOURO VARCHAR(60)  NULL   COMMENT 'xLgr' ,
  NUMERO VARCHAR(60)  NULL   COMMENT 'nro' ,
  COMPLEMENTO VARCHAR(60)  NULL   COMMENT 'xCpl' ,
  BAIRRO VARCHAR(60)  NULL   COMMENT 'xBairro' ,
  CODIGO_MUNICIPIO INTEGER UNSIGNED  NULL   COMMENT 'cMun - Utilizar a Tabela do IBGE  (Anexo VII - Tabela de UF,  Munic�pio e Pa�s).' ,
  NOME_MUNICIPIO VARCHAR(60)  NULL   COMMENT 'xMun' ,
  UF CHAR(2)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX NFE_LOCAL_RETIRADA_FK1(ID_NFE_CABECALHO),
  FOREIGN KEY(ID_NFE_CABECALHO)
    REFERENCES NFE_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;









CREATE TABLE NFE_CANA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  SAFRA VARCHAR(9)  NULL   COMMENT 'aaaa  ou aaaa/aaaa' ,
  MES_ANO_REFERENCIA VARCHAR(9)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX NFE_CANA_FKIndex1(ID_NFE_CABECALHO),
  FOREIGN KEY(ID_NFE_CABECALHO)
    REFERENCES NFE_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;




CREATE TABLE NFE_CANA_FORNECIMENTO_DIARIO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_CANA INTEGER UNSIGNED  NOT NULL  ,
  DIA CHAR(2)  NULL  ,
  QUANTIDADE DECIMAL(18,6)  NULL  ,
  QUANTIDADE_TOTAL_MES DECIMAL(18,6)  NULL  ,
  QUANTIDADE_TOTAL_ANTERIOR DECIMAL(18,6)  NULL  ,
  QUANTIDADE_TOTAL_GERAL DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_NFE_CANA_FORNECIMENTO(ID_NFE_CANA),
  FOREIGN KEY(ID_NFE_CANA)
    REFERENCES NFE_CANA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



CREATE TABLE NFE_DESTINATARIO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  CPF_CNPJ VARCHAR(14)  NULL  ,
  RAZAO_SOCIAL VARCHAR(60)  NULL   COMMENT 'xNome' ,
  FANTASIA VARCHAR(60)  NULL   COMMENT 'xFant' ,
  LOGRADOURO VARCHAR(60)  NULL   COMMENT 'xLgr' ,
  NUMERO VARCHAR(60)  NULL   COMMENT 'nro' ,
  COMPLEMENTO VARCHAR(60)  NULL   COMMENT 'xCpl' ,
  BAIRRO VARCHAR(60)  NULL   COMMENT 'xBairro' ,
  CODIGO_MUNICIPIO INTEGER UNSIGNED  NULL   COMMENT 'cMun - Utilizar a Tabela do IBGE  (Anexo VII - Tabela de UF,  Munic�pio e Pa�s).' ,
  NOME_MUNICIPIO VARCHAR(60)  NULL   COMMENT 'xMun' ,
  UF CHAR(2)  NULL  ,
  CEP VARCHAR(8)  NULL  ,
  CODIGO_PAIS INTEGER  NULL   COMMENT '1058 - Brasil' ,
  NOME_PAIS VARCHAR(60)  NULL   COMMENT 'Brasil ou BRASIL' ,
  TELEFONE VARCHAR(14)  NULL   COMMENT 'Preencher com o C�digo DDD +  n�mero do telefone. Nas  opera��es com exterior �  permitido informar o c�digo do  pa�s + c�digo da localidade +  n�mero do telefone (v.2.0)' ,
  IE VARCHAR(14)  NULL   COMMENT 'Campo de informa��o  obrigat�ria nos casos de  emiss�o pr�pria (procEmi = 0, 2  ou 3).  A IE deve ser informada apenas  com algarismos para  destinat�rios contribuintes do  ICMS, sem caracteres de  formata��o (ponto, barra, h�fen,  etc.);  O literal �ISENTO� deve ser  informado apenas para  contribuintes do ICMS que s�o  isentos de inscri��o no cadastro  de contribuintes do ICMS e  estejam emitindo NF-e avulsa;' ,
  IEST VARCHAR(14)  NULL   COMMENT 'IE do Substituto Tribut�rio' ,
  IM VARCHAR(15)  NULL   COMMENT 'Inscri��o Municipal' ,
  CNAE VARCHAR(7)  NULL   COMMENT 'Este campo deve ser informado  quando o campo IM (C19) for  informado.' ,
  CRT INTEGER UNSIGNED  NULL   COMMENT 'C�digo de Regime Tribut�rio = Este campo ser�  obrigatoriamente preenchido  com:  1 - Simples Nacional;  2 - Simples Nacional - excesso  de sublimite de receita bruta;  3 - Regime Normal. (v2.0).' ,
  SUFRAMA VARCHAR(9)  NULL   COMMENT 'Obrigat�rio, nas opera��es que  se beneficiam de incentivos  fiscais existentes nas �reas sob  controle da SUFRAMA.  A omiss�o da Inscri��o  SUFRAMA impede o  processamento da opera��o  pelo Sistema de Mercadoria  Nacional da SUFRAMA e a  libera��o da Declara��o de  Ingresso, prejudicando a  comprova��o do  ingresso/internamento da  mercadoria nas �reas sob  controle da SUFRAMA. (v2.0)' ,
  EMAIL VARCHAR(60)  NULL   COMMENT 'Informar o e-mail do  destinat�rio. O campo pode ser  utilizado para informar o e-mail  de recep��o da NF-e indicada  pelo destinat�rio (v2.0)'   ,
PRIMARY KEY(ID)  ,
INDEX NFE_DESTINATARIO_FKIndex1(ID_NFE_CABECALHO),
  FOREIGN KEY(ID_NFE_CABECALHO)
    REFERENCES NFE_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;





















CREATE TABLE NFE_DEDUCOES_SAFRA (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_CANA INTEGER UNSIGNED  NOT NULL  ,
  DECRICAO VARCHAR(60)  NULL  ,
  VALOR_DEDUCAO DECIMAL(18,6)  NULL  ,
  VALOR_FORNECIMENTO DECIMAL(18,6)  NULL  ,
  VALOR_TOTAL_DEDUCAO DECIMAL(18,6)  NULL  ,
  VALOR_LIQUIDO_FORNECIMENTO DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_NFE_CANA_DEDUCOES(ID_NFE_CANA),
  FOREIGN KEY(ID_NFE_CANA)
    REFERENCES NFE_CANA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



CREATE TABLE NFE_CUPOM_FISCAL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  MODELO_DOCUMENTO_FISCAL CHAR(2)  NULL   COMMENT 'Preencher com "2B", quando se tratar de Cupom Fiscal emitido por m�quina registradora (n�o ECF), com "2C", quando se tratar de Cupom Fiscal PDV, ou "2D", quando se tratar de Cupom Fiscal (emitido por ECF))' ,
  DATA_EMISSAO_CUPOM DATE  NULL  ,
  NUMERO_ORDEM_ECF INTEGER UNSIGNED  NULL   COMMENT 'nECF - Informar o n�mero de ordem  seq�encial do ECF que emitiu o  Cupom Fiscal vinculado � NF-e  (v2.0).' ,
  COO INTEGER UNSIGNED  NULL  ,
  NUMERO_CAIXA INTEGER UNSIGNED  NULL   COMMENT 'ECF_CX -N�mero do caixa atribu�do ao ECF' ,
  NUMERO_SERIE_ECF VARCHAR(20)  NULL   COMMENT 'ECF_FAB - N�mero de s�rie de fabrica��o do ECF'   ,
PRIMARY KEY(ID)  ,
INDEX FK_NFE_CUPOM_FISCAL(ID_NFE_CABECALHO),
  FOREIGN KEY(ID_NFE_CABECALHO)
    REFERENCES NFE_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;







-- ------------------------------------------------------------
-- Tabela que controla o recebimento de pagamentos das parcelas.
-- ------------------------------------------------------------

CREATE TABLE PARCELA_RECEBIMENTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TIPO_RECEBIMENTO INTEGER UNSIGNED  NOT NULL  ,
  ID_PARCELA INTEGER UNSIGNED  NOT NULL  ,
  DATA_RECEBIMENTO DATE  NULL  ,
  TAXA_JURO DECIMAL(18,6)  NULL  ,
  TAXA_MULTA DECIMAL(18,6)  NULL  ,
  TAXA_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_JURO DECIMAL(18,6)  NULL  ,
  VALOR_MULTA DECIMAL(18,6)  NULL  ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL  ,
  VALOR_PAGO DECIMAL(18,6)  NULL  ,
  HISTORICO TEXT  NULL   COMMENT 'Hist�rico do pagamento'   ,
PRIMARY KEY(ID)  ,
INDEX FK_PARCELA_RECEB(ID_PARCELA)  ,
INDEX PARCELA_RECEBIMENTO_F(ID_TIPO_RECEBIMENTO),
  FOREIGN KEY(ID_PARCELA)
    REFERENCES PARCELA_RECEBER(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TIPO_RECEBIMENTO)
    REFERENCES TIPO_RECEBIMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Tabela que controla o recebimento de pagamentos das parcelas.' ;




CREATE TABLE RECEBIMENTO_LANCA_CONTABIL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_LANCAMENTO_DET INTEGER UNSIGNED  NOT NULL  ,
  ID_PARCELA_RECEBIMENTO INTEGER UNSIGNED  NOT NULL  ,
  DATA_INC DATE  NULL    ,
PRIMARY KEY(ID)  ,
INDEX RECEBIMENTO_LANCA_CONTABIL(ID_PARCELA_RECEBIMENTO)  ,
INDEX RECEBIMENTO_LANCA_CONTABIL_F(ID_CONTABIL_LANCAMENTO_DET),
  FOREIGN KEY(ID_PARCELA_RECEBIMENTO)
    REFERENCES PARCELA_RECEBIMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_LANCAMENTO_DET)
    REFERENCES CONTABIL_LANCAMENTO_DET(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



CREATE TABLE BORDERO_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PARCELA_RECEBER INTEGER UNSIGNED  NOT NULL  ,
  ID_BORDERO INTEGER UNSIGNED  NOT NULL  ,
  PRAZO INTEGER UNSIGNED  NULL  ,
  TAXA_JUROS DECIMAL(18,6)  NULL  ,
  VALOR_JUROS DECIMAL(18,6)  NULL  ,
  VALOR_LIQUIDO DECIMAL(18,6)  NULL  ,
  VENCIMENTO DATE  NULL    ,
PRIMARY KEY(ID)  ,
INDEX BORDERO_DETALHE_F(ID_BORDERO)  ,
INDEX BORDERO_DETALHE(ID_PARCELA_RECEBER),
  FOREIGN KEY(ID_BORDERO)
    REFERENCES BORDERO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PARCELA_RECEBER)
    REFERENCES PARCELA_RECEBER(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



CREATE TABLE COMISSAO_RECEBIMENTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_VENDEDOR INTEGER UNSIGNED  NOT NULL  ,
  ID_PARCELA_RECEBIMENTO INTEGER UNSIGNED  NOT NULL  ,
  VALOR_RECEBIDO DECIMAL(18,6)  NULL  ,
  PORCENTO_COMISSAO DECIMAL(18,6)  NULL  ,
  TIPO_CONTABIL CHAR(1) BINARY  NULL   COMMENT 'Debito, ou Credito' ,
  VALOR_COMISSAO DECIMAL(18,6)  NULL  ,
  LANCADO CHAR(1) BINARY  NULL   COMMENT 'Q=QUITADO, A=aberto' ,
  DATA_LANCAMENTO DATE  NULL    ,
PRIMARY KEY(ID)  ,
INDEX COMISSAO_RECEBIMENTO_FK1(ID_PARCELA_RECEBIMENTO)  ,
INDEX COMISSAO_RECEBIMENTO_FKI2(ID_VENDEDOR),
  FOREIGN KEY(ID_PARCELA_RECEBIMENTO)
    REFERENCES PARCELA_RECEBIMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_VENDEDOR)
    REFERENCES VENDEDOR(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;





CREATE TABLE TRANSF_TITULO_DET (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TRANSFERENCIA_TITULO INTEGER UNSIGNED  NOT NULL  ,
  ID_PARCELA_RECEBER INTEGER UNSIGNED  NOT NULL  ,
  VALOR DECIMAL(18,6)  NULL  ,
  VALOR_JUROS DECIMAL(18,6)  NULL  ,
  TAXA_JUROS DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX TRANSF_TITULO_DET_FKIndex1(ID_PARCELA_RECEBER)  ,
INDEX TRANSF_TITULO_DET_FKIndex2(ID_TRANSFERENCIA_TITULO),
  FOREIGN KEY(ID_PARCELA_RECEBER)
    REFERENCES PARCELA_RECEBER(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TRANSFERENCIA_TITULO)
    REFERENCES TRANSFERENCIA_TITULO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



CREATE TABLE PAGAMENTO_LANC_CONTABIL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_LANCAMENTO_DET INTEGER UNSIGNED  NOT NULL  ,
  ID_PARCELA_PAGAMENTO INTEGER UNSIGNED  NOT NULL  ,
  DATA_INC DATE  NULL    ,
PRIMARY KEY(ID)  ,
INDEX PAGAMENTO_LANC_CONTABIL(ID_PARCELA_PAGAMENTO)  ,
INDEX PAGAMENTO_LANC_CONTABIL_F(ID_CONTABIL_LANCAMENTO_DET),
  FOREIGN KEY(ID_PARCELA_PAGAMENTO)
    REFERENCES PARCELA_PAGAMENTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_LANCAMENTO_DET)
    REFERENCES CONTABIL_LANCAMENTO_DET(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



CREATE TABLE NFE_TRANSPORTE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_TRANSPORTADORA INTEGER UNSIGNED  NOT NULL  ,
  ID_NFE_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  MODALIDADE_FRETE CHAR(1)  NULL   COMMENT 'modFrete - 0- Por conta do emitente;  1- Por conta do  destinat�rio/remetente;  2- Por conta de terceiros;  9- Sem frete. (V2.0)' ,
  CPF_CNPJ VARCHAR(14)  NULL   COMMENT 'Informar o CNPJ ou o CPF do  Transportador, preenchendo os  zeros n�o significativos' ,
  NOME VARCHAR(60)  NULL  ,
  INSCRICAO_ESTADUAL VARCHAR(14)  NULL  ,
  ENDERECO VARCHAR(60)  NULL  ,
  NOME_MUNICIPIO VARCHAR(60)  NULL  ,
  UF CHAR(2)  NULL  ,
  VALOR_SERVICO DECIMAL(18,6)  NULL  ,
  BASE_CALCULO_RETENCAO_ICMS DECIMAL(18,6)  NULL  ,
  ALIQUOTA_RETENCAO_ICMS DECIMAL(18,6)  NULL  ,
  VALOR_ICMS_RETIDO DECIMAL(18,6)  NULL  ,
  CFOP INTEGER UNSIGNED  NULL  ,
  MUNICIPIO INTEGER UNSIGNED  NULL   COMMENT 'Informar o munic�pio de  ocorr�ncia do fato gerador do  ICMS do transporte. Utilizar a  Tabela do IBGE (Anexo VII -  Tabela de UF, Munic�pio e  Pa�s)' ,
  PLACA_VEICULO VARCHAR(8)  NULL  ,
  UF_VEICULO CHAR(2)  NULL  ,
  RNTC_VEICULO VARCHAR(20)  NULL   COMMENT 'Registro Nacional de  Transportador de Carga  (ANTT)' ,
  PLACA_REBOQUE VARCHAR(8)  NULL  ,
  UF_REBOQUE CHAR(2)  NULL  ,
  RNTC_REBOQUE VARCHAR(20)  NULL  ,
  VAGAO_REBOQUE VARCHAR(20)  NULL  ,
  BALSA_REBOQUE VARCHAR(20)  NULL  ,
  QTDE_VOL_TRANSPORTADOS DECIMAL(18,6)  NULL  ,
  ESPECIE_VOL_TRANSPORTADOS VARCHAR(60)  NULL  ,
  MARCA_VOL_TRANSPORTADOS VARCHAR(60)  NULL  ,
  NUMERACAO_VOL_TRANSPORTADOS VARCHAR(60)  NULL  ,
  PESO_LIQUIDO DECIMAL(18,6)  NULL  ,
  PESO_BRUTO DECIMAL(18,6)  NULL  ,
  NUMERO_LACRES VARCHAR(60)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX NFE_TRANSPORTE_FKIndex1(ID_NFE_CABECALHO)  ,
INDEX NFE_TRANSPORTE_FKIndex2(ID_TRANSPORTADORA),
  FOREIGN KEY(ID_NFE_CABECALHO)
    REFERENCES NFE_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_TRANSPORTADORA)
    REFERENCES TRANSPORTADORA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;







-- ------------------------------------------------------------
-- Armazena os tipos de NF. Define alguns par�metros para emiss�o de notas fiscais.
-- 
-- Modelos padr�es j� cadastrados pelo sistema:
-- 
-- Nota Fiscal, modelos 1 e 1A;
-- Nota Fiscal de Venda a Consumidor, Modelo 2;
-- NF-e (Nota Fiscal Eletr�nica), modelo 55
-- ------------------------------------------------------------

CREATE TABLE VENDA_NFE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_EMPRESA INTEGER UNSIGNED  NOT NULL  ,
  ID_VENDA_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  NFE_CABECALHO_ID INTEGER UNSIGNED  NOT NULL  ,
  MODELO CHAR(2)  NULL   COMMENT 'Modelo da nota fiscal' ,
  SERIE CHAR(2)  NULL   COMMENT 'Serie da NF' ,
  DATA_FATURAMENTO DATE  NULL   COMMENT 'Data de faturamento' ,
  NUMERO_NFE INTEGER UNSIGNED  NULL   COMMENT 'Informar Numero da NFe' ,
  TEMPLATE TEXT  NULL   COMMENT 'Caminho de um arquivo de template, caso exista' ,
  NUMERO_ITENS INTEGER UNSIGNED  NULL   COMMENT 'Quantidade de itens da NFe' ,
  ULTIMO_IMPRESSO INTEGER UNSIGNED  NULL   COMMENT 'Sistema controla o n�mero do �ltimo documento impresso.'   ,
PRIMARY KEY(ID)  ,
INDEX TIPO_NOTA_FISCAL_FKIndex2(ID_EMPRESA)  ,
INDEX VENDA_NFE_FKIndex2(NFE_CABECALHO_ID)  ,
INDEX VENDA_NFE_FKIndex3(ID_VENDA_CABECALHO),
  FOREIGN KEY(ID_EMPRESA)
    REFERENCES EMPRESA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(NFE_CABECALHO_ID)
    REFERENCES NFE_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_VENDA_CABECALHO)
    REFERENCES VENDA_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os tipos de NF. Define alguns par�metros para emiss�o de notas fiscais.    Modelos padr�es j� cadastrados pelo sistema:    Nota Fiscal, modelos 1 e 1A;  Nota Fiscal de Venda a Consumidor, Modelo 2;  NF-e (Nota Fiscal Eletr�nica), modelo 55' ;










CREATE TABLE LANC_RECEBER_NAT_FIN (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_CONTABIL_LANCAMENTO_DET INTEGER UNSIGNED  NOT NULL  ,
  ID_NATUREZA_FINANCEIRA INTEGER UNSIGNED  NOT NULL  ,
  ID_LANCAMENTO_RECEBER INTEGER UNSIGNED  NOT NULL  ,
  DATA_INC DATE  NULL    ,
PRIMARY KEY(ID)  ,
INDEX LANC_RECEBER_NAT_FIN(ID_LANCAMENTO_RECEBER)  ,
INDEX LANC_RECEBER_NAT_FIN_F2(ID_NATUREZA_FINANCEIRA)  ,
INDEX LANC_RECEBER_NAT_FIN_FK3(ID_CONTABIL_LANCAMENTO_DET),
  FOREIGN KEY(ID_LANCAMENTO_RECEBER)
    REFERENCES LANCAMENTO_RECEBER(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_NATUREZA_FINANCEIRA)
    REFERENCES NATUREZA_FINANCEIRA(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_CONTABIL_LANCAMENTO_DET)
    REFERENCES CONTABIL_LANCAMENTO_DET(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



-- ------------------------------------------------------------
-- Armazena os itens da venda.
-- ------------------------------------------------------------

CREATE TABLE NFE_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_PRODUTO INTEGER UNSIGNED  NOT NULL  ,
  ID_LOTE_PRODUTO INTEGER UNSIGNED  NULL  ,
  ID_NFE_CABECALHO INTEGER UNSIGNED  NOT NULL  ,
  NUMERO_ITEM INTEGER UNSIGNED  NULL   COMMENT 'nItem - N�mero do item (1-990)' ,
  CODIGO_PRODUTO VARCHAR(60)  NULL   COMMENT 'cProd - Preencher com CFOP, caso se  trate de itens n�o relacionados  com mercadorias/produtos e  que o contribuinte n�o possua  codifica��o pr�pria.  Formato (CFOP9999)' ,
  GTIN VARCHAR(14)  NULL   COMMENT 'cEAN - Preencher com o c�digo GTIN-  8, GTIN-12, GTIN-13 ou GTIN-  14 (antigos c�digos EAN, UPC e  DUN-14), n�o informar o  conte�do da TAG em caso de o  produto n�o possuir este c�digo.' ,
  NOME_PRODUTO VARCHAR(100)  NULL   COMMENT 'xProd' ,
  NCM VARCHAR(8)  NULL   COMMENT 'C�digo NCM (8 posi��es),  informar o g�nero (posi��o do  cap�tulo do NCM) quando a  opera��o n�o for de com�rcio  exterior (importa��o/  exporta��o) ou o produto n�o  seja tributado pelo IPI.  Em caso de servi�o informar o  c�digo 99 (v2.0)' ,
  EX_TIPI INTEGER UNSIGNED  NULL   COMMENT 'Preencher de acordo com o  c�digo EX da TIPI. Em caso de  servi�o, n�o incluir a TAG.' ,
  CFOP INTEGER UNSIGNED  NULL   COMMENT 'Preencher de acordo com o  c�digo EX da TIPI. Em caso de  servi�o, n�o incluir a TAG.' ,
  UNIDADE_COMERCIAL VARCHAR(6)  NULL   COMMENT 'uCom - Informar a unidade de  comercializa��o do produto.' ,
  QUANTIDADE_COMERCIAL DECIMAL(18,6)  NULL   COMMENT 'qCom - Informar a quantidade de  comercializa��o do produto  (v2.0).' ,
  VALOR_UNITARIO_COMERCIAL DECIMAL(18,6)  NULL   COMMENT 'vUnCom - Informar o valor unit�rio de  comercializa��o do produto,  campo meramente informativo,  o contribuinte pode utilizar a  precis�o desejada (0-10  decimais). Para efeitos de  c�lculo, o valor unit�rio ser�  obtido pela divis�o do valor do  produto pela quantidade  comercial. (v2.0)' ,
  VALOR_BRUTO_PRODUTOS DECIMAL(18,6)  NULL   COMMENT 'vProd - Valor Total Bruto dos Produtos  ou Servi�os' ,
  GTIN_UNIDADE_TRIBUTAVEL VARCHAR(14)  NULL   COMMENT 'cEANTrib - Preencher com o c�digo GTIN-  8, GTIN-12, GTIN-13 ou GTIN 14 (antigos c�digos EAN, UPC e  DUN-14) da unidade tribut�vel  do produto, n�o informar o  conte�do da TAG em caso de o  produto n�o possuir este c�digo.' ,
  UNIDADE_TRIBUTAVEL VARCHAR(6)  NULL   COMMENT 'uTrib' ,
  QUANTIDADE_TRIBUTAVEL DECIMAL(18,6)  NULL   COMMENT 'qTrib - Informar a quantidade de  tributa��o do produto (v2.0).' ,
  VALOR_UNITARIO_TRIBUTACAO DECIMAL(18,6)  NULL   COMMENT 'vUnTrib - Informar o valor unit�rio de  tributa��o do produto, campo  meramente informativo, o  contribuinte pode utilizar a  precis�o desejada (0-10  decimais). Para efeitos de  c�lculo, o valor unit�rio ser�  obtido pela divis�o do valor do  produto pela quantidade  tribut�vel.' ,
  VALOR_FRETE DECIMAL(18,6)  NULL   COMMENT 'vFrete' ,
  VALOR_SEGURO DECIMAL(18,6)  NULL   COMMENT 'vSeg' ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL   COMMENT 'vDesc' ,
  VALOR_OUTRAS_DESPESAS DECIMAL(18,6)  NULL   COMMENT 'vOutro' ,
  ENTRA_TOTAL CHAR(1)  NULL   COMMENT 'indTot - Este campo dever� ser  preenchido com:  0 = o valor do item (vProd)  comp�e o valor total da NF-e  (vProd)  1 = o valor do item (vProd) n�o  comp�e o valor total da NF-e  (vProd) (v2.0)' ,
  ORIGEM_MERCADORIA CHAR(1)  NULL   COMMENT 'orig - Origem da mercadoria:  0 = Nacional; 1 = Estrangeira Importa��o  direta;  2 = Estrangeira Adquirida no  mercado interno.' ,
  CST_ICMS CHAR(3)  NULL  ,
  CSOSN CHAR(4)  NULL  ,
  MODALIDADE_BC_ICMS CHAR(1)  NULL   COMMENT 'modBC - 0 - Margem Valor Agregado (%);  1 - Pauta (Valor);  2 - Pre�o Tabelado M�x. (valor);  3 - valor da opera��o.' ,
  TAXA_REDUCAO_BC_ICMS DECIMAL(18,6)  NULL   COMMENT 'pRedBC - Percentual da Redu��o de BC' ,
  BASE_CALCULO_ICMS DECIMAL(18,6)  NULL   COMMENT 'vBC - Valor da BC do ICMS' ,
  ALIQUOTA_ICMS DECIMAL(18,6)  NULL   COMMENT 'pICMS' ,
  VALOR_ICMS DECIMAL(18,6)  NULL   COMMENT 'vICMS' ,
  MOTIVO_DESONERACAO_ICMS CHAR(1)  NULL   COMMENT 'motDesICMS - Este campo ser� preenchido  quando o campo anterior estiver  preenchido.  Informar o motivo da  desonera��o:  1 - T�xi;  2 - Deficiente F�sico;  3 - Produtor Agropecu�rio;  4 - Frotista/Locadora;  5 - Diplom�tico/Consular;  6 - Utilit�rios e Motocicletas da  Amaz�nia Ocidental e �reas de  Livre Com�rcio (Resolu��o  714/88 e 790/94 - CONTRAN e  suas altera��es);  7 - SUFRAMA;  9 - outros. (v2.0)' ,
  MODALIDADE_BC_ICMS_ST CHAR(1)  NULL   COMMENT 'modBCST - 0 - Pre�o tabelado ou m�ximo sugerido;  1 - Lista Negativa (valor);  2 - Lista Positiva (valor);  3 - Lista Neutra (valor);  4 - Margem Valor Agregado (%);  5 - Pauta (valor);' ,
  PERCENTUAL_MVA_ICMS_ST DECIMAL(18,6)  NULL   COMMENT 'pMVAST -Percentual da margem de  valor Adicionado do ICMS ST' ,
  REDUCAO_BC_ICMS_ST DECIMAL(18,6)  NULL   COMMENT 'pRedBCST - Percentual da Redu��o de BC  do ICMS ST' ,
  BASE_CALCULO_ICMS_ST DECIMAL(18,6)  NULL   COMMENT 'vBCST - Valor da BC do ICMS ST' ,
  ALIQUOTA_ICMS_ST DECIMAL(18,6)  NULL   COMMENT 'pICMSST - Al�quota do imposto do ICMS  ST' ,
  VALOR_ICMS_ST DECIMAL(18,6)  NULL   COMMENT 'vICMSST - Valor do ICMS ST retido' ,
  VALOR_BC_ICMS_ST_RETIDO DECIMAL(18,6)  NULL   COMMENT 'vBCSTRet - Valor da BC do ICMS ST  cobrado anteriormente por ST' ,
  VALOR_ICMS_ST_RETIDO DECIMAL(18,6)  NULL   COMMENT 'vICMSSTRet - Valor do ICMS ST retido' ,
  ALIQUOTA_CREDITO_ICMS_SN DECIMAL(18,6)  NULL   COMMENT 'pCredSN - Al�quota aplic�vel de c�lculo  do cr�dito (Simples Nacional).' ,
  VALOR_CREDITO_ICMS_SN DECIMAL(18,6)  NULL   COMMENT 'vCredICMSSN - Valor cr�dito do ICMS que  pode ser aproveitado nos  termos do art. 23 da LC 123  (Simples Nacional)' ,
  ENQUADRAMENTO_IPI VARCHAR(5)  NULL   COMMENT 'clEnq - Classe de enquadramento do  IPI para Cigarros e Bebidas - Preenchimento conforme Atos  Normativos editados pela  Receita Federal (Observa��o 2)' ,
  CNPJ_PRODUTOR VARCHAR(14)  NULL   COMMENT 'CNPJProd - CNPJ do produtor da  mercadoria, quando diferente  do emitente. Somente para os  casos de exporta��o direta ou  indireta.' ,
  CODIGO_SELO_IPI VARCHAR(60)  NULL   COMMENT 'cSelo - C�digo do selo de controle IPI - Preenchimento conforme Atos  Normativos editados pela  Receita Federal (Observa��o 3)' ,
  QUANTIDADE_SELO_IPI INTEGER UNSIGNED  NULL   COMMENT 'qSelo - Quantidade de selo de  controle' ,
  ENQUADRAMENTO_LEGAL_IPI CHAR(3)  NULL   COMMENT 'cEnq - C�digo de Enquadramento  Legal do IPI' ,
  CST_IPI CHAR(2)  NULL   COMMENT '00-Entrada com recupera��o de  cr�dito  49-Outras entradas  50-Sa�da tributada  99-Outras sa�das' ,
  BASE_CALCULO_IPI DECIMAL(18,6)  NULL   COMMENT 'Valor da BC do IPI' ,
  ALIQUOTA_IPI DECIMAL(18,6)  NULL   COMMENT 'pIPI - Al�quota do IPI' ,
  VALOR_IPI DECIMAL(18,6)  NULL   COMMENT 'vIPI - Valor do IPI' ,
  VALOR_BC_II DECIMAL(18,6)  NULL   COMMENT 'vBC - Valor da BC do Imposto de  Importa��o' ,
  VALOR_DESPESAS_ADUANEIRAS DECIMAL(18,6)  NULL   COMMENT 'vDespAdu - Valor das despesas  aduaneiras' ,
  VALOR_IMPOSTO_IMPORTACAO DECIMAL(18,6)  NULL   COMMENT 'vII - Valor do Imposto de  Importa��o' ,
  VALOR_IOF DECIMAL(18,6)  NULL   COMMENT 'vIOF - Valor do Imposto sobre  Opera��es Financeiras' ,
  CST_PIS CHAR(2)  NULL   COMMENT '01 - Opera��o Tribut�vel (base  de c�lculo = valor da opera��o  al�quota normal (cumulativo/n�o  cumulativo));  02 - Opera��o Tribut�vel (base  de c�lculo = valor da opera��o  (al�quota diferenciada));' ,
  VALOR_BASE_CALCULO_PIS DECIMAL(18,6)  NULL   COMMENT 'Valor da Base de C�lculo do  PIS' ,
  ALIQUOTA_PIS_PERCENTUAL DECIMAL(18,6)  NULL   COMMENT 'pPIS - Al�quota do PIS (em  percentual)' ,
  ALIQUOTA_PIS_REAIS DECIMAL(18,6)  NULL  ,
  VALOR_PIS DECIMAL(18,6)  NULL   COMMENT 'vPIS - Valor do PIS' ,
  CST_COFINS CHAR(2)  NULL   COMMENT '01 - Opera��o Tribut�vel (base  de c�lculo = valor da opera��o  al�quota normal (cumulativo/n�o  cumulativo));  02 - Opera��o Tribut�vel (base  de c�lculo = valor da opera��o  (al�quota diferenciada));' ,
  BASE_CALCULO_COFINS DECIMAL(18,6)  NULL   COMMENT 'Valor da Base de C�lculo da  COFINS' ,
  ALIQUOTA_COFINS_PERCENTUAL DECIMAL(18,6)  NULL   COMMENT 'pCOFINS - Al�quota da COFINS (em  percentual)' ,
  ALIQUOTA_COFINS_REAIS DECIMAL(18,6)  NULL  ,
  VALOR_COFINS DECIMAL(18,6)  NULL   COMMENT 'vCOFINS' ,
  BASE_CALCULO_ISSQN DECIMAL(18,6)  NULL   COMMENT 'Valor da Base de C�lculo do  ISSQN' ,
  ALIQUOTA_ISSQN DECIMAL(18,6)  NULL   COMMENT 'Al�quota do ISSQN' ,
  VALOR_ISSQN DECIMAL(18,6)  NULL   COMMENT 'Valor do ISSQN' ,
  MUNICIPIO_ISSQN INTEGER UNSIGNED  NULL   COMMENT 'C�digo do munic�pio de  ocorr�ncia do fato gerador do  ISSQN' ,
  ITEM_LISTA_SERVICOS INTEGER UNSIGNED  NULL   COMMENT 'Informar o Item da lista de  servi�os da LC 116/03 em que  se classifica o servi�o.' ,
  TRIBUTACAO_ISSQN CHAR(1)  NULL   COMMENT 'cSitTrib - Informar o c�digo da tributa��o  do ISSQN:  N - NORMAL;  R - RETIDA;  S - SUBSTITUTA;  I - ISENTA. (v.2.0)' ,
  VALOR_SUBTOTAL DECIMAL(18,6)  NULL  ,
  VALOR_TOTAL DECIMAL(18,6)  NULL  ,
  INFORMACOES_ADICIONAIS TEXT  NULL   COMMENT 'infAdProd - Informa��es Adicionais do  Produto'   ,
PRIMARY KEY(ID)  ,
INDEX FK_NFE_CAB_DET(ID_NFE_CABECALHO)  ,
INDEX FK_LOTE_PRODUTO_NFE_DET(ID_LOTE_PRODUTO)  ,
INDEX NFE_DETALHE_FKIndex4(ID_PRODUTO),
  FOREIGN KEY(ID_NFE_CABECALHO)
    REFERENCES NFE_CABECALHO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_LOTE_PRODUTO)
    REFERENCES LOTE_PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(ID_PRODUTO)
    REFERENCES PRODUTO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB
COMMENT = 'Armazena os itens da venda.' ;




































































CREATE TABLE NFE_DET_ESPECIFICO_MEDICAMENTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_DETALHE INTEGER UNSIGNED  NOT NULL  ,
  NUMERO_LOTE VARCHAR(20)  NULL   COMMENT 'nLote - N�mero do Lote de  medicamentos ou de mat�riasprimas  farmac�uticas' ,
  QUANTIDADE_LOTE DECIMAL(18,6)  NULL   COMMENT 'qLote - Quantidade de produto no  Lote de medicamentos ou de  mat�rias-primas farmac�uticas' ,
  DATA_FABRICACAO DATE  NULL  ,
  DATA_VALIDADE DATE  NULL  ,
  PRECO_MAX_CONSUMIDOR DECIMAL(18,6)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX NFE_DET_ESPECIFICO_MEDICAMENTO(ID_NFE_DETALHE),
  FOREIGN KEY(ID_NFE_DETALHE)
    REFERENCES NFE_DETALHE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;





CREATE TABLE NFE_DET_ESPECIFICO_VEICULO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_DETALHE INTEGER UNSIGNED  NOT NULL  ,
  TIPO_OPERACAO CHAR(1)  NULL   COMMENT 'tpOp - 1 = Venda concession�ria,  2 = Faturamento direto para  consumidor final  3 = Venda direta para grandes  consumidores (frotista, governo,  ...)  0 = Outros' ,
  CHASSI VARCHAR(17)  NULL   COMMENT 'VIN (c�digo-identifica��ove�culo)' ,
  COR VARCHAR(4)  NULL   COMMENT 'C�digo de cada montadora' ,
  DESCRICAO_COR VARCHAR(40)  NULL  ,
  POTENCIA_MOTOR VARCHAR(4)  NULL   COMMENT 'pot - Pot�ncia m�xima do motor do  ve�culo em cavalo vapor (CV).  (pot�ncia-ve�culo)' ,
  CILINDRADAS VARCHAR(4)  NULL   COMMENT 'Capacidade volunt�ria do motor  expressa em cent�metros  c�bicos (CC). (cilindradas)  (v2.0)' ,
  PESO_LIQUIDO DECIMAL(18,6)  NULL   COMMENT 'Em toneladas - 4 casas  decimais' ,
  PESO_BRUTO DECIMAL(18,6)  NULL   COMMENT 'Em toneladas - 4 casas  decimais' ,
  SERIAL VARCHAR(9)  NULL  ,
  TIPO_COMBUSTIVEL CHAR(2)  NULL   COMMENT 'Utilizar Tabela RENAVAM (v2.0)  01-�lcool  02-Gasolina  03-Diesel  (...)  16-�lcool/Gasolina  17-Gasolina/�lcool/GNV  18-Gasolina/El�trico' ,
  NUMERO_MOTOR VARCHAR(21)  NULL  ,
  DISTANCIA_EIXOS DECIMAL(18,6)  NULL  ,
  ANO_MODELO CHAR(4)  NULL  ,
  ANO_FABRICACAO CHAR(4)  NULL  ,
  TIPO_PINTURA CHAR(1)  NULL  ,
  TIPO_VEICULO CHAR(2)  NULL   COMMENT 'Utilizar Tabela RENAVAM  06-AUTOM�VEL 14-CAMINH�O  13-CAMINHONETA  24-CARGA / CAM  02-CICLOMOTO  22-ESP / �NIBUS  07-MICRO�NIBUS  23-MISTO / CAM  04-MOTOCICLO  03-MOTONETA  08-�NIBUS  10-REBOQUE  05-TRICICLO  17-C. TRATOR  *Lista exemplificativa.' ,
  ESPECIE_VEICULO CHAR(1)  NULL   COMMENT 'Utilizar Tabela RENAVAM  1-PASSAGEIRO  2-CARGA  3-MISTO  4-CORRIDA  5-TRA��O  6-ESPECIAL' ,
  CONDICAO_VIN CHAR(1)  NULL   COMMENT 'Informa-se o ve�culo tem VIN  (chassi) remarcado.  R-Remarcado  N-Normal' ,
  CONDICAO_VEICULO CHAR(1)  NULL   COMMENT '1-Acabado;  2-Inacabado;  3-Semi-acabado' ,
  CODIGO_MARCA_MODELO VARCHAR(6)  NULL   COMMENT 'Utilizar Tabela RENAVAM' ,
  CODIGO_COR CHAR(2)  NULL   COMMENT 'Segundo as regras de pr�cadastro  do DENATRAN (v2.0)  01-AMARELO  02-AZUL  03-BEGE 04-BRANCA  05-CINZA  06-DOURADA  07-GRENA  08-LARANJA  09-MARROM  10-PRATA  11-PRETA  12-ROSA  13-ROXA  14-VERDE  15-VERMELHA  16-FANTASIA' ,
  LOTACAO INTEGER UNSIGNED  NULL   COMMENT 'Quantidade m�xima permitida  de passageiros sentados,  inclusive motorista. (v2.0)' ,
  RESTRICAO CHAR(1)  NULL   COMMENT '0 - N�o h�;  1 - Aliena��o Fiduci�ria;  2 - Arrendamento Mercantil;  3 - Reserva de Dom�nio;  4 - Penhor de Ve�culos;  9 - outras. (v2.0)'   ,
PRIMARY KEY(ID)  ,
INDEX NFE_DET_ESPECIFICO_VEICULO_FK1(ID_NFE_DETALHE),
  FOREIGN KEY(ID_NFE_DETALHE)
    REFERENCES NFE_DETALHE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



















CREATE TABLE NFE_DET_ESPECIFICO_COMBUSTIVEL (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_DETALHE INTEGER UNSIGNED  NOT NULL  ,
  CODIGO_ANP INTEGER UNSIGNED  NULL   COMMENT 'Utilizar a codifica��o de  produtos do Sistema de  Informa��es de Movimenta��o  de produtos - SIMP  (http://www.anp.gov.br/simp/ind  ex.htm). Informar 999999999 se  o produto n�o possuir c�digo de  produto ANP.' ,
  CODIF VARCHAR(21)  NULL   COMMENT 'Informar apenas quando a UF utilizar o CODIF (Sistema de  Controle do Diferimento do  Imposto nas Opera��es com  AEAC - �lcool Et�lico Anidro  Combust�vel).' ,
  QUANTIDADE_TEMP_AMBIENTE DECIMAL(18,6)  NULL   COMMENT 'Informar quando a quantidade  faturada informada no campo  qCom (I10) tiver sido ajustada  para uma temperatura diferente  da ambiente.' ,
  UF_CONSUMO CHAR(2)  NULL   COMMENT 'Informar a UF de consumo' ,
  BASE_CALCULO_CIDE DECIMAL(18,6)  NULL   COMMENT 'Informar a BC da CIDE em  quantidade' ,
  ALIQUOTA_CIDE DECIMAL(18,6)  NULL   COMMENT 'Informar o valor da al�quota em  reais da CIDE' ,
  VALOR_CIDE DECIMAL(18,6)  NULL   COMMENT 'Informar o valor da CIDE'   ,
PRIMARY KEY(ID)  ,
INDEX NFE_DET_ESPECIF_COMBUSTIVEL(ID_NFE_DETALHE),
  FOREIGN KEY(ID_NFE_DETALHE)
    REFERENCES NFE_DETALHE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;










CREATE TABLE NFE_DET_ESPECIFICO_ARMAMENTO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_DETALHE INTEGER UNSIGNED  NOT NULL  ,
  TIPO_ARMA CHAR(1)  NULL   COMMENT '0 - Uso permitido;  1 - Uso restrito;' ,
  NUMERO_SERIE_ARMA INTEGER UNSIGNED  NULL   COMMENT 'N�mero de s�rie da arma' ,
  NUMERO_SERIE_CANO INTEGER UNSIGNED  NULL   COMMENT 'N�mero de s�rie do cano' ,
  DESCRICAO VARCHAR(255)  NULL   COMMENT 'Descri��o completa da arma,  compreendendo: calibre,  marca, capacidade, tipo de  funcionamento, comprimento e  demais elementos que  permitam a sua perfeita  identifica��o.'   ,
PRIMARY KEY(ID)  ,
INDEX NFE_DET_ESPECIFICO_ARMAMENTO(ID_NFE_DETALHE),
  FOREIGN KEY(ID_NFE_DETALHE)
    REFERENCES NFE_DETALHE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;







CREATE TABLE NFE_DECLARACAO_IMPORTACAO (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_DETALHE INTEGER UNSIGNED  NOT NULL  ,
  NUMERO_DI_DSI_DA VARCHAR(10)  NULL  ,
  DATA_REGISTRO DATE  NULL  ,
  LOCAL_DESEMBARACO VARCHAR(60)  NULL  ,
  UF_DESEMBARACO CHAR(2)  NULL  ,
  DATA_DESEMBARACO DATE  NULL  ,
  CODIGO_EXPORTADOR VARCHAR(60)  NULL    ,
PRIMARY KEY(ID)  ,
INDEX NFE_DETALHE_DEC_IMPORTACAO(ID_NFE_DETALHE),
  FOREIGN KEY(ID_NFE_DETALHE)
    REFERENCES NFE_DETALHE(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;



CREATE TABLE NFE_IMPORTACAO_DETALHE (
  ID INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  ID_NFE_DECLARACAO_IMPORTACAO INTEGER UNSIGNED  NOT NULL  ,
  NUMERO_ADICAO INTEGER UNSIGNED  NULL  ,
  NUMERO_SEQUENCIAL INTEGER UNSIGNED  NULL  ,
  CODIGO_FABRICANTE_ESTRANGEIRO VARCHAR(60)  NULL  ,
  VALOR_DESCONTO DECIMAL(18,6)  NULL  ,
  NUMERO_PEDIDO_COMPRA VARCHAR(15)  NULL  ,
  ITEM_PEDIDO_COMPRA INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(ID)  ,
INDEX FK_NFE_IMPORTACAO_DETALHE(ID_NFE_DECLARACAO_IMPORTACAO),
  FOREIGN KEY(ID_NFE_DECLARACAO_IMPORTACAO)
    REFERENCES NFE_DECLARACAO_IMPORTACAO(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
TYPE=InnoDB;




