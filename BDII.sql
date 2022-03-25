/*
    Acesso ao banco de dados via console:

    mysql -h localhost -u root -p

    mysql       -- evoca o servidor 
    -h          -- dizemos que o proximo dado e referente ao host
    localhost   -- informamos o host
    -u          -- dizemos que o proximo dado e referente ao usuario
    root        -- informamos o usuario
    -p          -- dizemos que o proximo dado e referente a senha

    para sair: exit
*/

-- Comandos:

    SHOW DATABASES; --Mostra os bancos existentes (xampp console)

    CREATE DATABASE bd1; -- Query OK, 1 row affected (0.18sec)

    --Não e possivel criar um banco com o mesmo nome de um banco existente.

    CREATE OR REPLACE DATABASE db1; --Cria ou recria caso o banco com o nome requisitado ja exista.

    CREATE DATABASE IF NOT EXISTS bd1; --Cria um banco de dados com o nome "bd1" se ele nao existir.

    SHOW WARNINGS -- Exibe os alertas (xampp console)

    DROP DATABASE bd1; -- Exclui o banco de dados (se ele existir)

    USE <banco de dados>; -- Insere comandos dentro do banco de dados especificado

    CREATE TABLE cliente(
        cod_cli SMALLINT NOT NULL,
        nome_cli VARCHAR(40) NOT NOT NULL
        endereco VARCHAR(40) NULL,
        cidade VARCHAR(20) NULL,
        cep CHAR(08) NULL,
        uf CHAR(02) NULL,
        PRIMARY KEY (cod_cli)
    ); -- Cria uma tabela (chamdas "cliente") que contem os parâmetros cod_cli, nome_cli, endereco, cidade, cep e uf, sendo a PRIMARY KEY (chave primaria) da tabela o parâmetro "cod_cli".

    SHOW TABLES; --Exibe as tabelas do banco especificado (com o comando "USE").

    INSERT INTO <tabela> (<atributos>) VALUES
    (1000, 'Supermercado Carrefour', 'Av. das Americas', 'Rio de Janeiro', '20000001', 'rj'),
    (2000, 'Supermercado Baratão', 'Rua 7 de setembro', 'Rio de Janeiro', '20000002', 'rj'),
    (3000, 'Supermercado Arariboia', 'Rua Itaoca', 'Niteroi', '20000003', 'rj');

    SELECT * FROM cliente; --Seleciona e retoirna todos atributos da tabela especificada

    -- Criar mais 4 tabelas:

    CREATE TABLE IF NOT EXISTS item_pedido(
        no_ped SMALLINT(6) NOT NULL,
        cd_prod SMALLINT(6) NOT NULL,
        qtd_ped float NULL,
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE IF NOT EXISTS pedido(
        num_ped SMALLINT(6) NOT NULL,
        prazo_entr SMALLINT(6) NOT NULL,
        cd_cli SMALLINT(6) NOT NULL,
        cd_vend SMALLINT(6) NOT NULL,
        PRIMARY KEY (num_ped)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    CREATE TABLE IF NOT EXISTS produto(
        cod_prod SMALLINT(6) NOT NULL,
        unid_prod CHAR(3) NOT NULL,
        desc_prod VARCHAR(20) NOT NULL,
        val_unit DOUBLE(9,2) NOT NULL,
        PRIMARY KEY (num_ped)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;


    CREATE TABLE IF NOT EXISTS vendedor(
        cod_vend SMALLINT(6) NOT NULL,
        nome_vend VARCHAR(40) NOT NULL,
        sal_fixo DOUBLE(9,2) NOT NULL,
        val_unit CHAR() NOT NULL,
        PRIMARY KEY (cod_vend)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

    SHOW TABLES; -- "SHOW TABLES" para exibir as novas tabelas