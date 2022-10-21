-- 1. Quantos clientes fizeram pedidos com a vendedora Ana Cristina?

SELECT COUNT(DISTINCT cod_cli)
	FROM cliente C, pedido P, vendedor V
    WHERE C.cod_cli=P.cd_cli AND
    P.cd_vend=V.cod_vend AND
    V.nome_vend='Ana Cristina';

-- 2. Quantos clientes das cidades do Rio de Janeiro e Niterói tiveram seus pedidos tirados com a vendedora Ana Cristina?

SELECT C.cidade, COUNT(DISTINCT cod_cli) AS num_clientes
    FROM cliente C, pedido P, vendedor V
    WHERE C.cod_cli=P.cd_cli AND
        C.cidade in

-- 3. 