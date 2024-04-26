use dados;

-- 1) Contar Produtos em Estoque

SELECT count(produto_id) FROM produtos;
SELECT count(nome) FROM produtos;

-- 2) Média de Preços:

SELECT AVG(preco) FROM produtos;

-- 3) Listar Produtos com "Modelo 20" no Nome

SELECT * FROM produtos
WHERE nome LIKE 'Modelo 20';

-- 4) Produtos com Preço entre 50 e 150

SELECT nome, preco, descricao FROM produtos
WHERE preco BETWEEN 50 and 150;

-- 5) Listar os 5 Produtos Mais Baratos

SELECT nome, preco FROM produtos
ORDER BY preco desc
ORDER BY preco asc
LIMIT 5;

-- 6) Produtos que Não Estão em Estoque:

SELECT nome FROM produtos
WHERE qtd_estoque = 0;

-- 7) Listar Produtos com Descrição

SELECT nome, descricao FROM produtos
WHERE descricao != null or descricao != '';
WHERE descricao is not null or descricao != '';

-- 8) Produtos com Preço Acima da Média

SELECT nome, preco FROM produtos
WHERE preco > AVG(preco);
WHERE preco > (SELECT AVG(preco) FROM produtos);

-- 9. Selecionar Produtos com "SSD" no Nome

SELECT * FROM produtos
WHERE nome LIKE 'SSD';

-- 10. Produtos Ordenados por Preço em Ordem Decrescente

SELECT nome, preco FROM produtos
ORDER BY preco desc;

-- 11. Listar Produtos com Quantidade de Estoque Par

SELECT nome, preco
WHERE preco % 2 = 0;
SELECT nome, qtd_estoque FROM produtos
WHERE qtd_estoque % 2 = 0;

-- 12. Selecionar Nome e Descrição de Produtos com Preço Inferior a 100 e em Estoque

SELECT nome, descricao FROM produtos
WHERE preco < 100.00 AND qtd_estoque > 0;